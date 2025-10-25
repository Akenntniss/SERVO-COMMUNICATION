const { pool } = require('../config/database');

class SmartRetrySystem {
    constructor() {
        this.retryStrategies = {
            // Basculement avec délai court vers autre SIM - DÉLAIS AUGMENTÉS
            'NO_SERVICE': { switchSim: true, delay: 10000, maxRetries: 4 }, // 10s
            'RADIO_OFF': { switchSim: true, delay: 5000, maxRetries: 4 }, // 5s  
            'SIM_NOT_READY': { switchSim: true, delay: 15000, maxRetries: 4 }, // 15s
            'NETWORK_TIMEOUT': { switchSim: true, delay: 20000, maxRetries: 6 }, // 20s
            'TIMEOUT': { switchSim: true, delay: 25000, maxRetries: 8 }, // 25s - PLUS DE RETRIES
            'OPERATOR_FAILURE': { switchSim: true, delay: 15000, maxRetries: 6 }, // 15s
            
            // Retry avec délai sur la même SIM - PLUS AGRESSIF  
            'GENERIC_FAILURE': { switchSim: false, delay: 45000, maxRetries: 6 }, // 45s
            'SEND_TIMEOUT': { switchSim: false, delay: 60000, maxRetries: 4 }, // 1min
            
            // Basculement après plusieurs échecs - PLUS DE RETRIES
            'DELIVERY_FAILURE': { switchSim: true, delay: 30000, maxRetries: 8 }, // 30s
            'RATE_LIMIT': { switchSim: true, delay: 300000, maxRetries: 4 } // 5min
        };
        
        this.timeoutMessages = new Map(); // Gestion des timeouts
        this.processingQueue = new Set(); // Messages en cours de traitement
    }

    /**
     * Gère l'échec d'un message et décide de la stratégie de retry
     */
    async handleFailedMessage(messageId, errorCode, phoneId = null, simId = null) {
        console.log(`🔄 Gestion échec message ${messageId}: ${errorCode}`);
        
        try {
            // Récupérer les informations du message
            const message = await this.getMessageById(messageId);
            if (!message) {
                console.error(`❌ Message ${messageId} non trouvé`);
                return false;
            }

            // NOUVELLE LOGIQUE: Vérifier si la SIM a trop d'échecs récents
            await this.checkAndDeactivateFailingSim(message.sim_id);

            // LOGIQUE AMÉLIORÉE: Vérifier s'il reste des SIMs disponibles au lieu d'un nombre fixe
            const hasAvailableSims = await this.hasAvailableSimsForRetry(message);
            const basicMaxRetries = this.getMaxRetries(errorCode);
            
            if (message.retry_count >= basicMaxRetries && !hasAvailableSims) {
                console.log(`⛔ Message ${messageId}: Plus de SIMs disponibles après ${message.retry_count} tentatives`);
                await this.markMessageAsFinalFailure(messageId, errorCode);
                return false;
            } else if (message.retry_count >= basicMaxRetries * 3) {
                // Sécurité : arrêt après 3x le max normal pour éviter les boucles infinies
                console.log(`⛔ Message ${messageId}: Arrêt de sécurité après ${message.retry_count} tentatives`);
                await this.markMessageAsFinalFailure(messageId, errorCode);
                return false;
            }

            // Obtenir la stratégie de retry
            const strategy = this.getRetryStrategy(errorCode);
            console.log(`📋 Stratégie pour ${errorCode}:`, strategy);

            // Incrémenter le compteur de retry
            await this.incrementRetryCount(messageId);

            if (strategy.switchSim) {
                return await this.retryWithDifferentSim(messageId, message, strategy);
            } else {
                return await this.retryWithDelay(messageId, strategy);
            }

        } catch (error) {
            console.error(`❌ Erreur lors de la gestion d'échec:`, error);
            return false;
        }
    }

    /**
     * Retry avec basculement vers une autre SIM
     */
    async retryWithDifferentSim(messageId, message, strategy) {
        console.log(`🔄 Basculement SIM pour message ${messageId}`);
        
        try {
        // Trouver une SIM alternative (maintenant avec priorisation des SIMs non testées)
        const newSimId = await this.selectAlternativeSim(message.sim_id, message.phone_id, message);
            
            if (newSimId) {
                console.log(`✅ SIM alternative trouvée: ${newSimId}`);
                
                // 1. DÉSACTIVER la SIM défaillante
                await pool.execute(
                    'UPDATE sims SET is_active = 0, is_default = 0 WHERE id = ?',
                    [message.sim_id]
                );
                console.log(`❌ SIM ${message.sim_id} désactivée suite à l'échec`);
                
                // 2. ACTIVER et définir comme DÉFAUT la nouvelle SIM
                await pool.execute(
                    'UPDATE sims SET is_active = 1, is_default = 1 WHERE id = ?',
                    [newSimId]
                );
                console.log(`✅ SIM ${newSimId} activée et définie par défaut`);
                
                // 3. S'assurer qu'aucune autre SIM n'est par défaut sur ce téléphone
                await pool.execute(
                    'UPDATE sims SET is_default = 0 WHERE phone_id = ? AND id != ?',
                    [message.phone_id, newSimId]
                );
                
                // 4. VÉRIFIER si la nouvelle SIM est sur un téléphone différent
                const [newSimInfo] = await pool.execute('SELECT phone_id FROM sims WHERE id = ?', [newSimId]);
                const newPhoneId = newSimInfo[0]?.phone_id;
                
                let newMessageId;
                if (newPhoneId && newPhoneId !== message.phone_id) {
                    // SIM sur un AUTRE téléphone → utiliser createNewMessageWithPhone
                    newMessageId = await this.createNewMessageWithPhone(message, newPhoneId, newSimId);
                    console.log(`📝 Nouveau message ${newMessageId} créé avec SIM ${newSimId} sur AUTRE téléphone ${newPhoneId}`);
                } else {
                    // SIM sur le MÊME téléphone → utiliser createNewMessageWithSim
                    newMessageId = await this.createNewMessageWithSim(message, newSimId);
                    console.log(`📝 Nouveau message ${newMessageId} créé avec SIM ${newSimId} sur MÊME téléphone`);
                }
                
                return true;
            } else {
                // Pas de SIM alternative, essayer sur un autre téléphone
                console.log(`🔄 Tentative sur autre téléphone pour message ${messageId}`);
                return await this.retryWithDifferentPhone(messageId, message, strategy);
            }
            
        } catch (error) {
            console.error(`❌ Erreur lors du basculement SIM:`, error);
            return false;
        }
    }

    /**
     * Retry avec délai sur la même SIM
     */
    async retryWithDelay(messageId, strategy) {
        console.log(`⏰ Retry avec délai ${strategy.delay}ms pour message ${messageId}`);
        
        setTimeout(() => {
            this.retryMessage(messageId);
        }, strategy.delay);
        
        return true;
    }

    /**
     * Retry sur un téléphone différent
     */
    async retryWithDifferentPhone(messageId, message, strategy) {
        console.log(`📱 Recherche téléphone alternatif pour message ${messageId}`);
        
        try {
            const alternativePhone = await this.selectAlternativePhone(message.phone_id);
            
            if (alternativePhone) {
                console.log(`✅ Téléphone alternatif trouvé: ${alternativePhone.phone_id}`);
                
                // Créer un nouveau message sur le téléphone alternatif
                const newMessageId = await this.createNewMessageWithPhone(message, alternativePhone.phone_id, alternativePhone.best_sim_id);
                console.log(`📝 Nouveau message ${newMessageId} créé sur téléphone ${alternativePhone.phone_id}`);
                
                return true;
            } else {
                console.log(`❌ Aucun téléphone alternatif disponible`);
                await this.markMessageAsFinalFailure(messageId, 'NO_ALTERNATIVE_DEVICE');
                return false;
            }
            
        } catch (error) {
            console.error(`❌ Erreur lors du changement de téléphone:`, error);
            return false;
        }
    }

    /**
     * Sélectionne la meilleure SIM alternative
     */
    async selectAlternativeSim(currentSimId, phoneId, message = null) {
        try {
            console.log(`🔍 Recherche SIM alternative (actuelle: ${currentSimId}, téléphone: ${phoneId})`);
            
            // LOGIQUE MODIFIÉE: PRIORISER LES TÉLÉPHONES DIFFÉRENTS POUR LES SIMs NON TESTÉES
            if (message && message.recipient) {
                // D'abord chercher des SIMs non testées sur D'AUTRES téléphones
                const untestedSimsOtherPhones = await this.getUntestedActiveSimsFromOtherPhones(message.recipient, phoneId);
                if (untestedSimsOtherPhones.length > 0) {
                    const selectedSim = untestedSimsOtherPhones[0];
                    console.log(`🎯 SIM non testée AUTRE TÉLÉPHONE sélectionnée: ${selectedSim.id} (${selectedSim.phone_id} - ${selectedSim.carrier_name})`);
                    return selectedSim.id;
                }
                
                // Ensuite chercher des SIMs non testées sur le MÊME téléphone
                const untestedSimsSamePhone = await this.getUntestedActiveSimsFromSamePhone(message.recipient, phoneId);
                if (untestedSimsSamePhone.length > 0) {
                    const selectedSim = untestedSimsSamePhone[0];
                    console.log(`🎯 SIM non testée MÊME TÉLÉPHONE sélectionnée: ${selectedSim.id} (${selectedSim.carrier_name})`);
                    return selectedSim.id;
                }
                
                console.log(`⚠️ Aucune SIM non testée disponible, utilisation logique classique`);
            }
            
            // Logique classique avec quotas désactivés
            const [availableSims] = await pool.query(`
                SELECT s.id, s.carrier_name, s.messages_sent_month, s.monthly_limit,
                       s.recipients_monthly, s.recipients_monthly_limit,
                       COALESCE(ss.success_rate, 95) as success_rate,
                       COALESCE(ss.avg_response_time, 5000) as avg_response_time
                FROM sims s
                LEFT JOIN sim_stats ss ON s.id = ss.sim_id
                WHERE s.phone_id = ? 
                  AND s.id != ? 
                  AND s.is_active = true
                ORDER BY 
                    ss.success_rate DESC,
                    s.messages_sent_month ASC,
                    ss.avg_response_time ASC
                LIMIT 1
            `, [phoneId, currentSimId]);

            if (availableSims.length > 0) {
                console.log(`✅ SIM alternative trouvée sur le même téléphone: ${availableSims[0].id}`);
                return availableSims[0].id;
            }

            // Si pas de SIM alternative sur le même téléphone, essayer sur d'autres téléphones
            console.log(`🔄 Recherche SIM sur d'autres téléphones...`);
            const [otherPhoneSims] = await pool.query(`
                SELECT s.id, s.carrier_name, s.phone_number, s.phone_id,
                       COALESCE(ss.success_rate, 95) as success_rate,
                       COALESCE(ss.avg_response_time, 5000) as avg_response_time
                FROM sims s
                LEFT JOIN sim_stats ss ON s.id = ss.sim_id
                JOIN phones p ON s.phone_id = p.id
                WHERE p.status = 'active'
                  AND s.id != ? 
                  AND s.is_active = true
                ORDER BY 
                    ss.success_rate DESC,
                    s.messages_sent_month ASC,
                    ss.avg_response_time ASC
                LIMIT 1
            `, [currentSimId]);

            return otherPhoneSims.length > 0 ? otherPhoneSims[0].id : null;
            
        } catch (error) {
            console.error(`❌ Erreur lors de la sélection SIM alternative:`, error);
            return null;
        }
    }

    /**
     * Sélectionne un téléphone alternatif
     */
    async selectAlternativePhone(currentPhoneId) {
        try {
            console.log(`🔍 Recherche téléphone alternatif (actuel: ${currentPhoneId})`);
            
            const [alternativePhones] = await pool.query(`
                SELECT p.id as phone_id, 
                       MIN(s.id) as best_sim_id,
                       COUNT(s.id) as sim_count,
                       AVG(COALESCE(ss.success_rate, 95)) as avg_success_rate
                FROM phones p
                INNER JOIN sims s ON p.id = s.phone_id
                LEFT JOIN sim_stats ss ON s.id = ss.sim_id
                WHERE p.id != ?
                  AND p.status = 'active'
                  AND p.last_heartbeat > DATE_SUB(NOW(), INTERVAL 5 MINUTE)
                  AND s.is_active = true
                  AND s.messages_sent_month < s.monthly_limit * 0.9
                GROUP BY p.id
                HAVING sim_count > 0
                ORDER BY avg_success_rate DESC, sim_count DESC
                LIMIT 1
            `, [currentPhoneId]);

            console.log(`📊 Téléphones alternatifs trouvés: ${alternativePhones.length}`);
            
            if (alternativePhones.length === 0) {
                // Diagnostiquer pourquoi aucun téléphone n'est trouvé
                const [allPhones] = await pool.query(`
                    SELECT p.id, p.status, p.last_heartbeat,
                           COUNT(s.id) as total_sims,
                           COUNT(CASE WHEN s.is_active = true THEN 1 END) as active_sims
                    FROM phones p
                    LEFT JOIN sims s ON p.id = s.phone_id
                    WHERE p.id != ?
                    GROUP BY p.id, p.status, p.last_heartbeat
                `, [currentPhoneId]);
                
                console.log(`🔍 Tous les autres téléphones (${allPhones.length}):`, allPhones);
            }

            return alternativePhones.length > 0 ? alternativePhones[0] : null;
            
        } catch (error) {
            console.error(`❌ Erreur lors de la sélection téléphone alternatif:`, error);
            return null;
        }
    }

    /**
     * Crée un nouveau message avec une SIM différente
     */
    async createNewMessageWithSim(originalMessage, newSimId) {
        try {
            const [result] = await pool.execute(`
                INSERT INTO sms_history (
                    phone_id, recipient, message, sim_id, status, 
                    retry_count, created_at, updated_at
                ) VALUES (?, ?, ?, ?, 'pending', ?, NOW(), NOW())
            `, [
                originalMessage.phone_id,
                originalMessage.recipient,
                originalMessage.message,
                newSimId,
                (originalMessage.retry_count || 0) + 1
            ]);
            
            return result.insertId;
        } catch (error) {
            console.error(`❌ Erreur lors de la création du nouveau message:`, error);
            throw error;
        }
    }

    /**
     * Crée un nouveau message avec un téléphone différent
     */
    async createNewMessageWithPhone(originalMessage, newPhoneId, newSimId) {
        try {
            const [result] = await pool.execute(`
                INSERT INTO sms_history (
                    phone_id, recipient, message, sim_id, status, 
                    retry_count, created_at, updated_at
                ) VALUES (?, ?, ?, ?, 'pending', ?, NOW(), NOW())
            `, [
                newPhoneId,
                originalMessage.recipient,
                originalMessage.message,
                newSimId,
                (originalMessage.retry_count || 0) + 1
            ]);
            
            return result.insertId;
        } catch (error) {
            console.error(`❌ Erreur lors de la création du nouveau message sur autre téléphone:`, error);
            throw error;
        }
    }

    /**
     * Marque un message comme échec final
     */
    async markMessageAsFinalFailure(messageId, reason) {
        try {
            await pool.query(`
                UPDATE sms_history 
                SET status = 'failed', 
                    failure_reason = ?,
                    updated_at = NOW()
                WHERE id = ?
            `, [reason, messageId]);
            
            console.log(`⛔ Message ${messageId} marqué comme échec final: ${reason}`);
            
        } catch (error) {
            console.error(`❌ Erreur lors du marquage échec final:`, error);
        }
    }

    /**
     * Obtient la stratégie de retry pour un code d'erreur
     */
    getRetryStrategy(errorCode) {
        return this.retryStrategies[errorCode] || {
            switchSim: false,
            delay: 60000, // 1 minute par défaut
            maxRetries: 2
        };
    }

    /**
     * Obtient le nombre max de retries pour un code d'erreur
     */
    getMaxRetries(errorCode) {
        const strategy = this.getRetryStrategy(errorCode);
        return strategy.maxRetries;
    }

    /**
     * Récupère un message par son ID
     */
    async getMessageById(messageId) {
        try {
            const [messages] = await pool.query(`
                SELECT * FROM sms_history WHERE id = ?
            `, [messageId]);
            
            return messages.length > 0 ? messages[0] : null;
            
        } catch (error) {
            console.error(`❌ Erreur lors de la récupération du message:`, error);
            return null;
        }
    }

    /**
     * Incrémente le compteur de retry
     */
    async incrementRetryCount(messageId) {
        try {
            await pool.query(`
                UPDATE sms_history 
                SET retry_count = retry_count + 1,
                    updated_at = NOW()
                WHERE id = ?
            `, [messageId]);
            
        } catch (error) {
            console.error(`❌ Erreur lors de l'incrémentation retry:`, error);
        }
    }

    /**
     * Met à jour la SIM d'un message
     */
    async updateMessageSim(messageId, newSimId) {
        try {
            await pool.query(`
                UPDATE sms_history 
                SET sim_id = ?,
                    status = 'pending',
                    updated_at = NOW()
                WHERE id = ?
            `, [newSimId, messageId]);
            
        } catch (error) {
            console.error(`❌ Erreur lors de la mise à jour SIM:`, error);
        }
    }

    /**
     * Met à jour le téléphone et la SIM d'un message
     */
    async updateMessagePhone(messageId, newPhoneId, newSimId) {
        try {
            await pool.query(`
                UPDATE sms_history 
                SET phone_id = ?,
                    sim_id = ?,
                    status = 'pending',
                    updated_at = NOW()
                WHERE id = ?
            `, [newPhoneId, newSimId, messageId]);
            
        } catch (error) {
            console.error(`❌ Erreur lors de la mise à jour téléphone:`, error);
        }
    }

    /**
     * Remet un message en pending pour retry
     */
    async retryMessage(messageId) {
        try {
            await pool.query(`
                UPDATE sms_history 
                SET status = 'pending',
                    updated_at = NOW()
                WHERE id = ?
            `, [messageId]);
            
            console.log(`🔄 Message ${messageId} remis en pending pour retry`);
            
        } catch (error) {
            console.error(`❌ Erreur lors du retry message:`, error);
        }
    }

    /**
     * Démarre le système de monitoring des timeouts
     */
    startTimeoutMonitoring() {
        console.log(`🕐 Démarrage du monitoring des timeouts`);
        
        // Vérifier les messages en timeout toutes les 30 secondes
        setInterval(() => {
            this.checkTimeoutMessages();
        }, 30000);
    }

    /**
     * Vérifie les messages en timeout
     */
    async checkTimeoutMessages() {
        try {
            const [timeoutMessages] = await pool.query(`
                SELECT id, phone_id, sim_id, recipient, retry_count
                FROM sms_history 
                WHERE status = 'pending' 
                AND created_at < DATE_SUB(NOW(), INTERVAL 3 MINUTE)
                AND retry_count < 3
            `);

            for (const message of timeoutMessages) {
                console.log(`⏰ Timeout détecté pour message ${message.id}`);
                await this.handleFailedMessage(message.id, 'TIMEOUT', message.phone_id, message.sim_id);
            }
            
        } catch (error) {
            console.error(`❌ Erreur lors de la vérification des timeouts:`, error);
        }
    }

    /**
     * Vérifie si une SIM a trop d'échecs récents et la désactive si nécessaire
     */
    async checkAndDeactivateFailingSim(simId) {
        if (!simId) return;

        try {
            // Compter les échecs des 30 dernières minutes pour cette SIM
            const [recentFailures] = await pool.query(`
                SELECT COUNT(*) as failure_count
                FROM sms_history 
                WHERE sim_id = ? 
                AND status = 'failed' 
                AND created_at > DATE_SUB(NOW(), INTERVAL 30 MINUTE)
            `, [simId]);

            // Compter le total des messages des 30 dernières minutes
            const [totalMessages] = await pool.query(`
                SELECT COUNT(*) as total_count
                FROM sms_history 
                WHERE sim_id = ? 
                AND created_at > DATE_SUB(NOW(), INTERVAL 30 MINUTE)
            `, [simId]);

            const failureCount = recentFailures[0]?.failure_count || 0;
            const totalCount = totalMessages[0]?.total_count || 0;
            const failureRate = totalCount > 0 ? (failureCount / totalCount) * 100 : 0;

            console.log(`📊 SIM ${simId}: ${failureCount} échecs sur ${totalCount} messages (${failureRate.toFixed(1)}%)`);

            // Seuils de désactivation - BEAUCOUP MOINS AGRESSIFS POUR LES TESTS
            const FAILURE_THRESHOLD = 15; // 15 échecs minimum (au lieu de 3)
            const FAILURE_RATE_THRESHOLD = 90; // 90% de taux d'échec (au lieu de 70%)

            if (failureCount >= FAILURE_THRESHOLD && failureRate >= FAILURE_RATE_THRESHOLD) {
                console.log(`🚨 SIM ${simId} défaillante: ${failureCount} échecs (${failureRate.toFixed(1)}%) - DÉSACTIVATION`);
                
                // Récupérer les infos de la SIM avant désactivation
                const [simInfo] = await pool.query(`
                    SELECT carrier_name, phone_number, phone_id, is_default
                    FROM sims WHERE id = ?
                `, [simId]);

                const sim = simInfo[0];
                if (sim) {
                    // Désactiver la SIM
                    await pool.execute(`
                        UPDATE sims 
                        SET is_active = 0, is_default = 0, updated_at = NOW()
                        WHERE id = ?
                    `, [simId]);

                    console.log(`❌ SIM ${simId} (${sim.carrier_name} ${sim.phone_number || 'N/A'}) désactivée automatiquement`);

                    // Si c'était la SIM par défaut, activer une autre SIM disponible
                    if (sim.is_default) {
                        await this.activateAlternativeDefaultSim(sim.phone_id, simId);
                    }

                    // Enregistrer l'événement de désactivation
                    await this.logSimDeactivation(simId, failureCount, failureRate);
                }
            }

        } catch (error) {
            console.error(`❌ Erreur lors de la vérification de la SIM ${simId}:`, error);
        }
    }

    /**
     * Active une SIM alternative comme SIM par défaut
     */
    async activateAlternativeDefaultSim(phoneId, deactivatedSimId) {
        try {
            // Chercher une SIM active alternative sur le même téléphone
            const [alternativeSims] = await pool.query(`
                SELECT id, carrier_name, phone_number
                FROM sims 
                WHERE phone_id = ? AND id != ? AND is_active = 1
                ORDER BY RAND()
                LIMIT 1
            `, [phoneId, deactivatedSimId]);

            if (alternativeSims.length > 0) {
                const altSim = alternativeSims[0];
                await pool.execute(`
                    UPDATE sims 
                    SET is_default = 1, updated_at = NOW()
                    WHERE id = ?
                `, [altSim.id]);
                
                console.log(`✅ SIM ${altSim.id} (${altSim.carrier_name} ${altSim.phone_number || 'N/A'}) définie comme nouvelle SIM par défaut`);
            } else {
                console.log(`⚠️ Aucune SIM alternative trouvée sur le téléphone ${phoneId}`);
            }

        } catch (error) {
            console.error(`❌ Erreur lors de l'activation SIM alternative:`, error);
        }
    }

    /**
     * Enregistre l'événement de désactivation d'une SIM
     */
    async logSimDeactivation(simId, failureCount, failureRate) {
        try {
            // Ici on pourrait enregistrer dans une table de logs ou envoyer une notification
            console.log(`📝 Événement enregistré: SIM ${simId} désactivée - ${failureCount} échecs (${failureRate.toFixed(1)}%)`);
            
            // TODO: Implémenter une table de logs si nécessaire
            // await pool.execute(`
            //     INSERT INTO sim_deactivation_log (sim_id, failure_count, failure_rate, created_at)
            //     VALUES (?, ?, ?, NOW())
            // `, [simId, failureCount, failureRate]);

        } catch (error) {
            console.error(`❌ Erreur lors de l'enregistrement de l'événement:`, error);
        }
    }

    /**
     * Vérifie s'il reste des SIMs disponibles pour retry
     */
    async hasAvailableSimsForRetry(message) {
        try {
            // Compter toutes les SIMs actives disponibles
            const [allActiveSims] = await pool.query(`
                SELECT COUNT(*) as total_active_sims
                FROM sims s
                JOIN phones p ON s.phone_id = p.id
                WHERE s.is_active = 1 AND p.status = 'active'
            `);

            // Compter les SIMs qui ont déjà été testées pour ce message récemment
            const [testedSims] = await pool.query(`
                SELECT COUNT(DISTINCT sim_id) as tested_sims
                FROM sms_history
                WHERE recipient = ? 
                AND created_at > DATE_SUB(NOW(), INTERVAL 1 HOUR)
                AND status IN ('failed', 'pending')
            `, [message.recipient]);

            const totalActive = allActiveSims[0]?.total_active_sims || 0;
            const alreadyTested = testedSims[0]?.tested_sims || 0;
            const available = totalActive - alreadyTested;

            console.log(`📊 SIMs pour ${message.recipient}: ${totalActive} actives, ${alreadyTested} testées, ${available} disponibles`);

            return available > 0;

        } catch (error) {
            console.error(`❌ Erreur lors de la vérification des SIMs disponibles:`, error);
            return false; // En cas d'erreur, continuer par sécurité
        }
    }

    /**
     * Obtient toutes les SIMs actives non testées pour un destinataire
     */
    async getUntestedActiveSims(recipient) {
        try {
            const [untestedSims] = await pool.query(`
                SELECT s.id, s.carrier_name, s.phone_number, s.phone_id
                FROM sims s
                JOIN phones p ON s.phone_id = p.id
                WHERE s.is_active = 1 
                AND p.status = 'active'
                AND s.id NOT IN (
                    SELECT DISTINCT sim_id 
                    FROM sms_history 
                    WHERE recipient = ? 
                    AND created_at > DATE_SUB(NOW(), INTERVAL 1 HOUR)
                    AND status IN ('failed', 'pending')
                    AND sim_id IS NOT NULL
                )
                ORDER BY RAND()
            `, [recipient]);

            console.log(`🔍 ${untestedSims.length} SIMs non testées trouvées pour ${recipient}`);
            return untestedSims;

        } catch (error) {
            console.error(`❌ Erreur lors de la récupération des SIMs non testées:`, error);
            return [];
        }
    }

    /**
     * Obtient les SIMs actives non testées sur D'AUTRES téléphones (PRIORITÉ)
     */
    async getUntestedActiveSimsFromOtherPhones(recipient, currentPhoneId) {
        try {
            const [untestedSims] = await pool.query(`
                SELECT s.id, s.carrier_name, s.phone_number, s.phone_id
                FROM sims s
                JOIN phones p ON s.phone_id = p.id
                WHERE s.is_active = 1 
                AND p.status = 'active'
                AND s.phone_id != ?
                AND s.id NOT IN (
                    SELECT DISTINCT sim_id 
                    FROM sms_history 
                    WHERE recipient = ? 
                    AND created_at > DATE_SUB(NOW(), INTERVAL 1 HOUR)
                    AND status IN ('failed', 'pending')
                    AND sim_id IS NOT NULL
                )
                ORDER BY RAND()
                LIMIT 1
            `, [currentPhoneId, recipient]);

            console.log(`🔍 ${untestedSims.length} SIMs non testées trouvées sur AUTRES téléphones pour ${recipient}`);
            return untestedSims;

        } catch (error) {
            console.error(`❌ Erreur lors de la récupération des SIMs d'autres téléphones:`, error);
            return [];
        }
    }

    /**
     * Obtient les SIMs actives non testées sur le MÊME téléphone (en dernier recours)
     */
    async getUntestedActiveSimsFromSamePhone(recipient, currentPhoneId) {
        try {
            const [untestedSims] = await pool.query(`
                SELECT s.id, s.carrier_name, s.phone_number, s.phone_id
                FROM sims s
                JOIN phones p ON s.phone_id = p.id
                WHERE s.is_active = 1 
                AND p.status = 'active'
                AND s.phone_id = ?
                AND s.id NOT IN (
                    SELECT DISTINCT sim_id 
                    FROM sms_history 
                    WHERE recipient = ? 
                    AND created_at > DATE_SUB(NOW(), INTERVAL 1 HOUR)
                    AND status IN ('failed', 'pending')
                    AND sim_id IS NOT NULL
                )
                ORDER BY RAND()
                LIMIT 1
            `, [currentPhoneId, recipient]);

            console.log(`🔍 ${untestedSims.length} SIMs non testées trouvées sur MÊME téléphone ${currentPhoneId} pour ${recipient}`);
            return untestedSims;

        } catch (error) {
            console.error(`❌ Erreur lors de la récupération des SIMs du même téléphone:`, error);
            return [];
        }
    }
}

module.exports = SmartRetrySystem;
























