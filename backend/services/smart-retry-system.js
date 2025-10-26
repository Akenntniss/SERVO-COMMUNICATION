const { pool } = require('../config/database');

class SmartRetrySystem {
    constructor() {
        // SYSTÈME SIMPLIFIÉ: Basculement systématique vers autre SIM en cas d'échec
        this.timeoutMessages = new Map(); // Gestion des timeouts
        this.processingQueue = new Set(); // Messages en cours de traitement
    }

    /**
     * Gère l'échec d'un message et décide de la stratégie de retry
     */
    async handleFailedMessage(messageId, errorCode, phoneId = null, simId = null) {
        console.log(`🔄 DÉBUT Gestion échec message ${messageId}: ${errorCode}`);
        
        try {
            // Récupérer les informations du message
            const message = await this.getMessageById(messageId);
            if (!message) {
                console.error(`❌ Message ${messageId} non trouvé`);
                return false;
            }

            console.log(`📋 Message trouvé: ID=${message.id}, SIM=${message.sim_id}, Phone=${message.phone_id}, Retry=${message.retry_count}, Status=${message.status}`);

            // DÉSACTIVATION SYSTÉMATIQUE: Désactiver immédiatement la SIM défaillante (sauf si exclue du monitoring)
            if (message.sim_id) {
                // Vérifier si la SIM est exclue du monitoring
                const [simInfo] = await pool.execute(
                    'SELECT excluded_from_monitoring FROM sims WHERE id = ?',
                    [message.sim_id]
                );
                
                if (simInfo.length > 0 && simInfo[0].excluded_from_monitoring === 1) {
                    console.log(`🛡️ SIM ${message.sim_id} exclue du monitoring - désactivation ignorée`);
                } else {
                    await pool.execute(
                        'UPDATE sims SET is_active = 0, is_default = 0 WHERE id = ?',
                        [message.sim_id]
                    );
                    console.log(`❌ SIM ${message.sim_id} désactivée suite à l'échec du message ${messageId} (SYSTÉMATIQUE)`);
                    
                    // IMMÉDIATEMENT définir une nouvelle SIM par défaut pour permettre le retry
                    await this.setNewDefaultSimAfterFailure(message.phone_id, message.sim_id);
                }
            }

            // SYSTÈME SIMPLIFIÉ: Toujours essayer de basculer vers une autre SIM
            console.log(`📋 Échec détecté - Basculement automatique vers une autre SIM`);

            // La nouvelle SIM par défaut a déjà été définie, pas besoin de vérifier la disponibilité
            console.log(`✅ Nouvelle SIM par défaut définie, procédure de retry autorisée`);

            // Sécurité : arrêt après 10 tentatives maximum pour éviter les boucles infinies
            if (message.retry_count >= 10) {
                console.log(`⛔ Message ${messageId}: Arrêt de sécurité après ${message.retry_count} tentatives`);
                await this.markMessageAsFinalFailure(messageId, errorCode);
                return false;
            }

            // Incrémenter le compteur de retry
            await this.incrementRetryCount(messageId);

            // TOUJOURS basculer vers une autre SIM en cas d'échec
            console.log(`🔄 Lancement du retry avec SIM différente pour message ${messageId}`);
            const retryResult = await this.retryWithDifferentSim(messageId, message, { switchSim: true });
            console.log(`📋 Résultat du retry: ${retryResult ? 'SUCCÈS' : 'ÉCHEC'}`);
            return retryResult;

        } catch (error) {
            console.error(`❌ Erreur lors de la gestion d'échec:`, error);
            return false;
        }
    }

    /**
     * Retry avec basculement vers une autre SIM
     */
    async retryWithDifferentSim(messageId, message, strategy) {
        console.log(`🔄 DÉBUT Basculement SIM pour message ${messageId} (SIM ${message.sim_id} déjà désactivée)`);
        
        try {
            // Chercher la SIM par défaut actuelle (qui a été définie dans setNewDefaultSimAfterFailure)
            console.log(`🔍 Recherche de la SIM par défaut actuelle...`);
            const [defaultSims] = await pool.execute(`
                SELECT id, phone_number, carrier_name, phone_id 
                FROM sims 
                WHERE is_default = 1 AND is_active = 1 
                LIMIT 1
            `);
            
            console.log(`📋 SIMs par défaut trouvées: ${defaultSims.length}`);
            
            if (defaultSims.length > 0) {
                const newDefaultSim = defaultSims[0];
                console.log(`✅ SIM par défaut trouvée: ${newDefaultSim.id} (${newDefaultSim.phone_number || 'N/A'} ${newDefaultSim.carrier_name}) - DÉJÀ ACTIVE sur téléphone ${newDefaultSim.phone_id}`);
                
                // Créer un NOUVEAU message avec la SIM par défaut et le bon phone_id
                console.log(`📝 Création du nouveau message...`);
                const newMessageId = await this.createNewMessageWithCorrectPhone(message, newDefaultSim.id, newDefaultSim.phone_id);
                console.log(`✅ SUCCÈS: Nouveau message ${newMessageId} créé avec SIM par défaut ${newDefaultSim.id} sur téléphone ${newDefaultSim.phone_id}`);
                
                return true;
            } else {
                // Aucune SIM par défaut disponible, essayer sur un autre téléphone
                console.log(`⚠️ Aucune SIM par défaut trouvée - Tentative sur autre téléphone pour message ${messageId}`);
                return await this.retryWithDifferentPhone(messageId, message, strategy);
            }
            
        } catch (error) {
            console.error(`❌ Erreur lors du basculement SIM:`, error);
            return false;
        }
    }

    // FONCTION SUPPRIMÉE: retryWithDelay
    // Le système simplifié ne fait que basculer vers une autre SIM

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
            
            // NOUVELLE LOGIQUE: D'abord essayer les SIMs non testées pour ce destinataire
            if (message && message.recipient) {
                const untestedSims = await this.getUntestedActiveSims(message.recipient);
                if (untestedSims.length > 0) {
                    const selectedSim = untestedSims[0];
                    console.log(`🎯 SIM non testée sélectionnée: ${selectedSim.id} (${selectedSim.carrier_name} ${selectedSim.phone_number || 'N/A'})`);
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
     * Crée un nouveau message avec la SIM et le téléphone corrects
     */
    async createNewMessageWithCorrectPhone(originalMessage, newSimId, newPhoneId) {
        try {
            console.log(`📝 Création nouveau message: SIM ${newSimId} sur téléphone ${newPhoneId}`);
            
            const [result] = await pool.execute(`
                INSERT INTO sms_history (
                    phone_id, recipient, message, sim_id, status, 
                    retry_count, created_at, updated_at
                ) VALUES (?, ?, ?, ?, 'pending', ?, NOW(), NOW())
            `, [
                newPhoneId,  // Utiliser le phone_id de la nouvelle SIM
                originalMessage.recipient,
                originalMessage.message,
                newSimId,
                (originalMessage.retry_count || 0) + 1
            ]);
            
            console.log(`✅ Nouveau message ${result.insertId} créé avec SIM ${newSimId} sur téléphone ${newPhoneId}`);
            return result.insertId;
        } catch (error) {
            console.error(`❌ Erreur lors de la création du nouveau message avec téléphone correct:`, error);
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

    // FONCTIONS SUPPRIMÉES: getRetryStrategy et getMaxRetries
    // Le système simplifié n'utilise plus de stratégies complexes

    /**
     * Définit immédiatement une nouvelle SIM par défaut après une défaillance
     * Cherche parmi TOUTES les SIMs déjà actives, peu importe le téléphone
     */
    async setNewDefaultSimAfterFailure(phoneId, failedSimId) {
        try {
            console.log(`🔄 Recherche d'une SIM DÉJÀ ACTIVE pour remplacer SIM ${failedSimId} comme par défaut`);
            
            // D'abord, retirer le statut par défaut de toutes les SIMs
            await pool.execute('UPDATE sims SET is_default = 0');
            
            // Chercher n'importe quelle SIM DÉJÀ ACTIVE (peu importe le téléphone)
            const [activeSims] = await pool.execute(`
                SELECT id, phone_number, carrier_name, phone_id 
                FROM sims 
                WHERE id != ? AND is_active = 1 
                ORDER BY id ASC 
                LIMIT 1
            `, [failedSimId]);
            
            if (activeSims.length > 0) {
                const newDefaultSim = activeSims[0];
                await pool.execute(
                    'UPDATE sims SET is_default = 1 WHERE id = ?',
                    [newDefaultSim.id]
                );
                console.log(`✅ Nouvelle SIM par défaut: ${newDefaultSim.id} (${newDefaultSim.phone_number || 'N/A'} ${newDefaultSim.carrier_name}) - DÉJÀ ACTIVE sur téléphone ${newDefaultSim.phone_id}`);
                return newDefaultSim.id;
            }
            
            console.log(`⚠️ Aucune SIM déjà active trouvée pour remplacer SIM ${failedSimId}`);
            return null;
            
        } catch (error) {
            console.error(`❌ Erreur lors de la définition nouvelle SIM par défaut:`, error);
            return null;
        }
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
        console.log(`🕐 Démarrage du monitoring des timeouts (vérification toutes les 2 minutes)`);
        console.log(`🔍 Surveillance renforcée des SIMs défaillantes (vérification toutes les 2 minutes)`);
        
        // Surveillance des messages timeout (toutes les 2 minutes)
        setInterval(() => {
            this.checkTimeoutMessages();
        }, 120000); // 2 minutes
        
        // SURVEILLANCE RENFORCÉE: Vérification des SIMs défaillantes (toutes les 2 minutes)
        setInterval(() => {
            this.checkFailedMessagesForSimDeactivation();
        }, 120000); // 2 minutes
        
        // Vérification périodique des SIMs par défaut multiples (toutes les heures)
        setInterval(() => {
            this.checkAndFixMultipleDefaults();
        }, 3600000); // 1 heure
    }

    /**
     * Vérifie les messages en timeout
     */
    async checkTimeoutMessages() {
        try {
            // CORRECTION: Traiter TOUS les messages en pending depuis plus d'1 minute
            // Sans limite de retry_count pour capturer les messages de retry
            const [timeoutMessages] = await pool.query(`
                SELECT id, phone_id, sim_id, recipient, retry_count, created_at
                FROM sms_history 
                WHERE status = 'pending' 
                AND created_at < DATE_SUB(NOW(), INTERVAL 1 MINUTE)
                ORDER BY created_at ASC
            `);

            console.log(`🕐 Vérification timeout: ${timeoutMessages.length} messages en attente détectés`);

            for (const message of timeoutMessages) {
                console.log(`⏰ Timeout détecté pour message ${message.id} (retry_count: ${message.retry_count}, créé: ${message.created_at})`);
                
                // Traiter le timeout - cela va désactiver la SIM et créer un nouveau message si possible
                await this.handleFailedMessage(message.id, 'TIMEOUT', message.phone_id, message.sim_id);
            }
            
        } catch (error) {
            console.error(`❌ Erreur lors de la vérification des timeouts:`, error);
        }
    }

    // FONCTION SUPPRIMÉE: checkAndDeactivateFailingSim
    // Le système de seuils a été désactivé - désormais désactivation systématique à chaque échec

    // FONCTIONS SUPPRIMÉES: activateAlternativeDefaultSim et logSimDeactivation
    // Ces fonctions étaient liées au système de seuils qui a été désactivé

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
     * SURVEILLANCE RENFORCÉE: Vérifie et désactive les SIMs défaillantes
     */
    async checkFailedMessagesForSimDeactivation() {
        console.log(`🔍 Surveillance périodique des SIMs défaillantes (toutes les 2 min)...`);
        
        try {
            // SURVEILLANCE RENFORCÉE: Chercher les messages 'failed' récents avec des critères plus larges
            const [failedMessages] = await pool.query(`
                SELECT DISTINCT h.sim_id, MAX(h.id) as latest_message_id, MAX(h.created_at) as latest_failure, 
                       s.phone_number, s.carrier_name, s.phone_id, COUNT(h.id) as failure_count,
                       MIN(h.created_at) as first_failure
                FROM sms_history h
                JOIN sims s ON h.sim_id = s.id
                WHERE h.status = 'failed' 
                AND h.created_at > DATE_SUB(NOW(), INTERVAL 30 MINUTE)  -- Élargi à 30 minutes
                AND s.is_active = 1
                GROUP BY h.sim_id, s.phone_number, s.carrier_name, s.phone_id
                ORDER BY failure_count DESC, latest_failure DESC
            `);

            // SURVEILLANCE SUPPLÉMENTAIRE: Chercher les messages 'pending' trop anciens (probablement échoués)
            const [stuckMessages] = await pool.query(`
                SELECT DISTINCT h.sim_id, MAX(h.id) as latest_message_id, MAX(h.created_at) as latest_stuck, 
                       s.phone_number, s.carrier_name, s.phone_id, COUNT(h.id) as stuck_count
                FROM sms_history h
                JOIN sims s ON h.sim_id = s.id
                WHERE h.status = 'pending' 
                AND h.created_at < DATE_SUB(NOW(), INTERVAL 5 MINUTE)  -- Messages bloqués depuis 5+ minutes
                AND s.is_active = 1
                GROUP BY h.sim_id, s.phone_number, s.carrier_name, s.phone_id
                HAVING stuck_count >= 2  -- Au moins 2 messages bloqués
                ORDER BY stuck_count DESC, latest_stuck DESC
            `);

            const totalProblematicSims = failedMessages.length + stuckMessages.length;
            
            if (totalProblematicSims > 0) {
                console.log(`🚨 ${totalProblematicSims} SIM(s) problématique(s) détectée(s):`);
                
                // Traiter les SIMs avec des échecs explicites
                for (const msg of failedMessages) {
                    console.log(`   - SIM ${msg.sim_id} (${msg.phone_number || 'N/A'} ${msg.carrier_name} sur ${msg.phone_id}): ${msg.failure_count} échec(s) explicite(s)`);
                    
                    // Vérifier si la SIM est exclue du monitoring avant de la désactiver
                    const [simInfo] = await pool.execute(
                        'SELECT excluded_from_monitoring FROM sims WHERE id = ?',
                        [msg.sim_id]
                    );
                    
                    if (simInfo.length > 0 && simInfo[0].excluded_from_monitoring === 1) {
                        console.log(`🛡️ SIM ${msg.sim_id} exclue du monitoring - désactivation automatique ignorée`);
                    } else {
                        // Désactiver immédiatement cette SIM
                        await pool.execute(
                            'UPDATE sims SET is_active = 0, is_default = 0 WHERE id = ?',
                            [msg.sim_id]
                        );
                        
                        console.log(`❌ SIM ${msg.sim_id} désactivée automatiquement (échecs explicites)`);
                    }
                    
                    // Marquer les messages pending de cette SIM comme failed
                    await pool.execute(`
                        UPDATE sms_history 
                        SET status = 'failed', failure_reason = 'SIM_AUTO_DEACTIVATED' 
                        WHERE sim_id = ? AND status = 'pending'
                    `, [msg.sim_id]);
                }
                
                // Traiter les SIMs avec des messages bloqués
                for (const msg of stuckMessages) {
                    console.log(`   - SIM ${msg.sim_id} (${msg.phone_number || 'N/A'} ${msg.carrier_name} sur ${msg.phone_id}): ${msg.stuck_count} message(s) bloqué(s)`);
                    
                    // Vérifier si la SIM est exclue du monitoring avant de la désactiver
                    const [simInfo] = await pool.execute(
                        'SELECT excluded_from_monitoring FROM sims WHERE id = ?',
                        [msg.sim_id]
                    );
                    
                    if (simInfo.length > 0 && simInfo[0].excluded_from_monitoring === 1) {
                        console.log(`🛡️ SIM ${msg.sim_id} exclue du monitoring - désactivation automatique ignorée (messages bloqués)`);
                    } else {
                        // Désactiver cette SIM aussi
                        await pool.execute(
                            'UPDATE sims SET is_active = 0, is_default = 0 WHERE id = ?',
                            [msg.sim_id]
                        );
                        
                        console.log(`❌ SIM ${msg.sim_id} désactivée automatiquement (messages bloqués)`);
                    }
                    
                    // Marquer les messages pending de cette SIM comme failed
                    await pool.execute(`
                        UPDATE sms_history 
                        SET status = 'failed', failure_reason = 'SIM_STUCK_MESSAGES' 
                        WHERE sim_id = ? AND status = 'pending'
                    `, [msg.sim_id]);
                }
                
                // S'assurer qu'il reste au moins une SIM active
                await this.ensureAtLeastOneActiveSim();
                
            } else {
                console.log(`✅ Aucune SIM problématique détectée`);
            }
            
        } catch (error) {
            console.error(`❌ Erreur lors de la surveillance des SIMs défaillantes:`, error);
        }
    }
    
    /**
     * S'assure qu'il reste au moins une SIM active dans le système
     */
    async ensureAtLeastOneActiveSim() {
        try {
            // Vérifier s'il reste des SIMs actives
            const [activeSims] = await pool.query('SELECT COUNT(*) as count FROM sims WHERE is_active = 1');
            
            if (activeSims[0].count === 0) {
                console.warn(`⚠️ ALERTE: Aucune SIM active restante! Réactivation d'urgence...`);
                
                // Réactiver la SIM la plus récemment utilisée avec succès
                const [lastSuccessfulSim] = await pool.query(`
                    SELECT s.id, s.phone_number, s.carrier_name 
                    FROM sims s
                    JOIN sms_history h ON s.id = h.sim_id
                    WHERE h.status IN ('sent', 'delivered')
                    ORDER BY h.created_at DESC
                    LIMIT 1
                `);
                
                if (lastSuccessfulSim.length > 0) {
                    const simToReactivate = lastSuccessfulSim[0];
                    await pool.execute(
                        'UPDATE sims SET is_active = 1, is_default = 1 WHERE id = ?',
                        [simToReactivate.id]
                    );
                    console.log(`🔄 SIM ${simToReactivate.id} (${simToReactivate.phone_number}) réactivée d'urgence`);
                } else {
                    // En dernier recours, réactiver la première SIM disponible
                    const [firstSim] = await pool.query('SELECT id, phone_number, carrier_name FROM sims ORDER BY id LIMIT 1');
                    if (firstSim.length > 0) {
                        await pool.execute(
                            'UPDATE sims SET is_active = 1, is_default = 1 WHERE id = ?',
                            [firstSim[0].id]
                        );
                        console.log(`🔄 SIM ${firstSim[0].id} (${firstSim[0].phone_number}) réactivée par défaut`);
                    }
                }
            }
        } catch (error) {
            console.error(`❌ Erreur lors de la vérification des SIMs actives:`, error);
        }
    }
    
    /**
     * Vérifie et corrige les SIMs par défaut multiples
     */
    async checkAndFixMultipleDefaults() {
        try {
            console.log(`🔍 Vérification des SIMs par défaut multiples...`);
            
            // Chercher les SIMs par défaut multiples
            const [defaultSims] = await pool.query(`
                SELECT id, phone_number, carrier_name, phone_id 
                FROM sims 
                WHERE is_default = 1 
                ORDER BY id
            `);
            
            if (defaultSims.length > 1) {
                console.warn(`⚠️ ${defaultSims.length} SIMs par défaut détectées! Correction en cours...`);
                
                // Garder seulement la première SIM par défaut active
                const simToKeep = defaultSims.find(sim => sim.is_active) || defaultSims[0];
                
                // Désactiver toutes les autres SIMs par défaut
                for (const sim of defaultSims) {
                    if (sim.id !== simToKeep.id) {
                        await pool.execute(
                            'UPDATE sims SET is_default = 0 WHERE id = ?',
                            [sim.id]
                        );
                        console.log(`🔧 SIM ${sim.id} (${sim.phone_number}) n'est plus par défaut`);
                    }
                }
                
                console.log(`✅ SIM ${simToKeep.id} (${simToKeep.phone_number}) reste la seule par défaut`);
                
            } else if (defaultSims.length === 1) {
                console.log(`✅ Une seule SIM par défaut: ${defaultSims[0].phone_number}`);
            } else {
                console.warn(`⚠️ Aucune SIM par défaut! Définition automatique...`);
                
                // Définir une SIM active comme par défaut
                const [activeSims] = await pool.query(`
                    SELECT id, phone_number, carrier_name 
                    FROM sims 
                    WHERE is_active = 1 
                    ORDER BY id 
                    LIMIT 1
                `);
                
                if (activeSims.length > 0) {
                    await pool.execute(
                        'UPDATE sims SET is_default = 1 WHERE id = ?',
                        [activeSims[0].id]
                    );
                    console.log(`🔧 SIM ${activeSims[0].id} (${activeSims[0].phone_number}) définie comme par défaut`);
                }
            }
            
        } catch (error) {
            console.error(`❌ Erreur lors de la vérification des SIMs par défaut:`, error);
        }
    }
}

module.exports = SmartRetrySystem;
























