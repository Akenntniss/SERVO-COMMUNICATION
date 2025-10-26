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
        console.log(`🔄 Gestion échec message ${messageId}: ${errorCode}`);
        
        try {
            // Récupérer les informations du message
            const message = await this.getMessageById(messageId);
            if (!message) {
                console.error(`❌ Message ${messageId} non trouvé`);
                return false;
            }

            // DÉSACTIVATION SYSTÉMATIQUE: Désactiver immédiatement la SIM défaillante
            if (message.sim_id) {
                await pool.execute(
                    'UPDATE sims SET is_active = 0, is_default = 0 WHERE id = ?',
                    [message.sim_id]
                );
                console.log(`❌ SIM ${message.sim_id} désactivée suite à l'échec du message ${messageId} (SYSTÉMATIQUE)`);
            }

            // SYSTÈME SIMPLIFIÉ: Toujours essayer de basculer vers une autre SIM
            console.log(`📋 Échec détecté - Basculement automatique vers une autre SIM`);

            // Vérifier s'il reste des SIMs disponibles
            const hasAvailableSims = await this.hasAvailableSimsForRetry(message);
            
            if (!hasAvailableSims) {
                console.log(`⛔ Message ${messageId}: Aucune SIM alternative disponible`);
                await this.markMessageAsFinalFailure(messageId, errorCode);
                return false;
            }

            // Sécurité : arrêt après 10 tentatives maximum pour éviter les boucles infinies
            if (message.retry_count >= 10) {
                console.log(`⛔ Message ${messageId}: Arrêt de sécurité après ${message.retry_count} tentatives`);
                await this.markMessageAsFinalFailure(messageId, errorCode);
                return false;
            }

            // Incrémenter le compteur de retry
            await this.incrementRetryCount(messageId);

            // TOUJOURS basculer vers une autre SIM en cas d'échec
            return await this.retryWithDifferentSim(messageId, message, { switchSim: true });

        } catch (error) {
            console.error(`❌ Erreur lors de la gestion d'échec:`, error);
            return false;
        }
    }

    /**
     * Retry avec basculement vers une autre SIM
     */
    async retryWithDifferentSim(messageId, message, strategy) {
        console.log(`🔄 Basculement SIM pour message ${messageId} (SIM ${message.sim_id} déjà désactivée)`);
        
        try {
            // Trouver une SIM alternative (la SIM défaillante est déjà désactivée dans handleFailedMessage)
            const newSimId = await this.selectAlternativeSim(message.sim_id, message.phone_id, message);
            
            if (newSimId) {
                console.log(`✅ SIM alternative trouvée: ${newSimId}`);
                
                // CORRECTION: Utiliser la fonction globale pour éviter les multiples SIMs par défaut
                const success = await this.setGlobalDefaultSim(newSimId, 'Basculement après échec');
                
                if (success) {
                    // CORRECTION: Modifier le message existant au lieu de créer un nouveau
                    await this.updateMessageWithNewSim(messageId, newSimId);
                    console.log(`📝 Message ${messageId} mis à jour avec SIM ${newSimId} (pas de doublon)`);
                    
                    return true;
                } else {
                    console.error(`❌ Échec de la définition de la SIM ${newSimId} par défaut`);
                    return false;
                }
            } else {
                // Pas de SIM alternative sur ce téléphone, essayer sur un autre téléphone
                console.log(`🔄 Tentative sur autre téléphone pour message ${messageId}`);
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
                
                // CORRECTION: Utiliser la logique unifiée pour éviter les doublons
                const success = await this.setGlobalDefaultSim(alternativePhone.best_sim_id, 'Basculement vers autre téléphone');
                
                if (success) {
                    // Modifier le message existant au lieu de créer un nouveau
                    await this.updateMessageWithNewSim(messageId, alternativePhone.best_sim_id);
                    console.log(`📝 Message ${messageId} mis à jour avec téléphone ${alternativePhone.phone_id}, SIM ${alternativePhone.best_sim_id} (pas de doublon)`);
                    
                    return true;
                } else {
                    console.error(`❌ Échec de la définition de la SIM ${alternativePhone.best_sim_id} par défaut`);
                    return false;
                }
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
     * NOUVELLE FONCTION: Met à jour le message existant avec une nouvelle SIM (évite les doublons)
     */
    async updateMessageWithNewSim(messageId, newSimId) {
        try {
            // Récupérer les informations de la nouvelle SIM
            const [simInfo] = await pool.query(
                'SELECT phone_id FROM sims WHERE id = ?',
                [newSimId]
            );
            
            if (simInfo.length === 0) {
                throw new Error(`SIM ${newSimId} non trouvée`);
            }
            
            // Mettre à jour le message existant avec la nouvelle SIM
            await pool.execute(`
                UPDATE sms_history 
                SET sim_id = ?, 
                    phone_id = ?, 
                    status = 'pending', 
                    retry_count = retry_count + 1,
                    updated_at = NOW(),
                    failure_reason = NULL
                WHERE id = ?
            `, [newSimId, simInfo[0].phone_id, messageId]);
            
            console.log(`✅ Message ${messageId} mis à jour: SIM ${newSimId}, statut 'pending'`);
            return true;
            
        } catch (error) {
            console.error(`❌ Erreur lors de la mise à jour du message ${messageId}:`, error);
            throw error;
        }
    }

    /**
     * ANCIENNE FONCTION: Crée un nouveau message avec une SIM différente (CAUSE DES DOUBLONS)
     * Conservée pour compatibilité avec retryWithDifferentPhone
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
     * FONCTION DÉPRÉCIÉE: Crée un nouveau message avec un téléphone différent
     * 
     * ⚠️ CETTE FONCTION CAUSE DES DOUBLONS ET N'EST PLUS UTILISÉE
     * 
     * Remplacée par la logique unifiée dans retryWithDifferentPhone() qui utilise
     * updateMessageWithNewSim() pour éviter les messages en double.
     * 
     * Conservée temporairement pour compatibilité mais ne devrait plus être appelée.
     */
    async createNewMessageWithPhone(originalMessage, newPhoneId, newSimId) {
        console.warn(`⚠️ ATTENTION: createNewMessageWithPhone() est dépréciée et cause des doublons`);
        console.warn(`⚠️ Utilisez updateMessageWithNewSim() à la place`);
        
        try {
            // CORRECTION: S'assurer que la SIM est définie comme unique par défaut
            const success = await this.setGlobalDefaultSim(newSimId, 'Basculement vers autre téléphone');
            
            if (!success) {
                throw new Error(`Impossible de définir la SIM ${newSimId} comme par défaut`);
            }
            
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
        console.log(`🔍 Surveillance des SIMs défaillantes (vérification toutes les 2 minutes - RÉACTIVITÉ AMÉLIORÉE)`);
        
        // Vérification des timeouts toutes les 2 minutes (optimisé)
        setInterval(() => {
            this.checkTimeoutMessages();
        }, 120000); // 2 minutes
        
        // Surveillance des messages 'failed' toutes les 2 minutes (réactivité améliorée)
        setInterval(() => {
            this.checkFailedMessagesForSimDeactivation();
        }, 120000); // 2 minutes
        
        // Vérification des SIMs par défaut multiples toutes les heures (maintenance)
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

    /**
     * Vérifie les messages 'failed' récents et désactive les SIMs correspondantes
     * Cette fonction traite les cas où l'app Android marque directement les messages comme 'failed'
     * sans passer par l'API qui déclenche handleFailedMessage
     * 
     * OPTIMISÉ: S'exécute toutes les 2 minutes pour une réactivité améliorée
     */
    async checkFailedMessagesForSimDeactivation() {
        try {
            console.log(`🔍 Surveillance périodique des SIMs défaillantes (toutes les 2 min)...`);
            
            // Chercher les messages 'failed' récents (dernières 15 minutes) avec des SIMs encore actives
            // Fenêtre élargie à 15 minutes pour compenser la vérification moins fréquente
            const [failedMessages] = await pool.query(`
                SELECT DISTINCT h.sim_id, 
                       MAX(h.id) as latest_message_id,
                       MAX(h.created_at) as latest_failure,
                       s.phone_number, 
                       s.carrier_name,
                       COUNT(h.id) as failure_count
                FROM sms_history h
                JOIN sims s ON h.sim_id = s.id
                WHERE h.status = 'failed' 
                AND h.created_at > DATE_SUB(NOW(), INTERVAL 15 MINUTE)
                AND s.is_active = 1
                GROUP BY h.sim_id, s.phone_number, s.carrier_name
                ORDER BY latest_failure DESC
            `);

            if (failedMessages.length > 0) {
                console.log(`🔍 ${failedMessages.length} SIMs actives avec échecs récents détectées`);
                
                for (const sim of failedMessages) {
                    console.log(`❌ Désactivation SIM ${sim.sim_id} (${sim.phone_number}) - ${sim.failure_count} échec(s) récent(s)`);
                    
                    // Désactiver immédiatement la SIM
                    await pool.execute(
                        'UPDATE sims SET is_active = 0, is_default = 0 WHERE id = ?',
                        [sim.sim_id]
                    );
                    
                    console.log(`✅ SIM ${sim.sim_id} désactivée automatiquement (dernier échec: ${sim.latest_failure})`);
                }
            } else {
                console.log(`✅ Aucune SIM défaillante détectée lors de cette vérification`);
            }
            
        } catch (error) {
            console.error(`❌ Erreur lors de la vérification des messages échoués:`, error);
        }
    }

    // FONCTION SUPPRIMÉE: checkAndDeactivateFailingSim
    // Le système de seuils a été désactivé - désormais désactivation systématique à chaque échec

    /**
     * FONCTION GLOBALE: Définit une SIM comme par défaut et s'assure qu'aucune autre ne l'est
     * Cette fonction garantit qu'il n'y a jamais plus d'une SIM par défaut dans tout le système
     */
    async setGlobalDefaultSim(simId, reason = 'Basculement automatique') {
        try {
            console.log(`🔄 Définition SIM ${simId} comme unique SIM par défaut (${reason})`);
            
            // ÉTAPE 1: Désactiver TOUTES les SIMs par défaut dans le système
            const [resetResult] = await pool.execute(
                'UPDATE sims SET is_default = 0 WHERE is_default = 1'
            );
            
            if (resetResult.affectedRows > 0) {
                console.log(`📝 ${resetResult.affectedRows} SIM(s) par défaut précédente(s) désactivée(s)`);
            }
            
            // ÉTAPE 2: Définir la nouvelle SIM comme par défaut ET active
            await pool.execute(
                'UPDATE sims SET is_active = 1, is_default = 1 WHERE id = ?',
                [simId]
            );
            
            // ÉTAPE 3: Vérifier qu'une seule SIM est par défaut
            const [verification] = await pool.query(
                'SELECT COUNT(*) as default_count FROM sims WHERE is_default = 1'
            );
            
            if (verification[0].default_count === 1) {
                console.log(`✅ SIM ${simId} est maintenant l'unique SIM par défaut`);
                return true;
            } else {
                console.error(`❌ ERREUR: ${verification[0].default_count} SIMs par défaut détectées après mise à jour`);
                return false;
            }
            
        } catch (error) {
            console.error(`❌ Erreur lors de la définition de la SIM par défaut:`, error);
            return false;
        }
    }

    /**
     * Vérifie et corrige les SIMs par défaut multiples
     * Fonction utilitaire pour diagnostiquer et corriger les problèmes existants
     */
    async checkAndFixMultipleDefaults() {
        try {
            const [defaultSims] = await pool.query(`
                SELECT id, phone_number, carrier_name, phone_id 
                FROM sims 
                WHERE is_default = 1 
                ORDER BY id ASC
            `);
            
            if (defaultSims.length > 1) {
                console.log(`⚠️ PROBLÈME: ${defaultSims.length} SIMs par défaut détectées`);
                
                // Garder seulement la première SIM par défaut (la plus ancienne)
                const keepSim = defaultSims[0];
                const removeSims = defaultSims.slice(1);
                
                console.log(`✅ Conservation SIM ${keepSim.id} (${keepSim.phone_number}) comme unique par défaut`);
                
                for (const sim of removeSims) {
                    await pool.execute(
                        'UPDATE sims SET is_default = 0 WHERE id = ?',
                        [sim.id]
                    );
                    console.log(`📝 SIM ${sim.id} (${sim.phone_number}) retirée du statut par défaut`);
                }
                
                return true;
            } else if (defaultSims.length === 1) {
                console.log(`✅ Une seule SIM par défaut détectée: ${defaultSims[0].id} (${defaultSims[0].phone_number})`);
                return true;
            } else {
                console.log(`⚠️ Aucune SIM par défaut détectée`);
                return false;
            }
            
        } catch (error) {
            console.error(`❌ Erreur lors de la vérification des SIMs par défaut:`, error);
            return false;
        }
    }

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
}

module.exports = SmartRetrySystem;
























