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
                
                // ACTIVER et définir comme DÉFAUT la nouvelle SIM
                await pool.execute(
                    'UPDATE sims SET is_active = 1, is_default = 1 WHERE id = ?',
                    [newSimId]
                );
                console.log(`✅ SIM ${newSimId} activée et définie par défaut`);
                
                // S'assurer qu'aucune autre SIM n'est par défaut sur ce téléphone
                await pool.execute(
                    'UPDATE sims SET is_default = 0 WHERE phone_id = ? AND id != ?',
                    [message.phone_id, newSimId]
                );
                
                // Créer un NOUVEAU message avec la nouvelle SIM
                const newMessageId = await this.createNewMessageWithSim(message, newSimId);
                console.log(`📝 Nouveau message ${newMessageId} créé avec SIM ${newSimId}`);
                
                return true;
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
        console.log(`🕐 Démarrage du monitoring des timeouts (vérification toutes les 15 secondes)`);
        
        // CORRECTION: Vérifier plus fréquemment (toutes les 15 secondes au lieu de 30)
        // pour capturer rapidement les échecs de messages de retry
        setInterval(() => {
            this.checkTimeoutMessages();
        }, 15000);
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

            // NOUVEAU: Vérifier les messages 'failed' récents pour désactiver les SIMs
            await this.checkFailedMessagesForSimDeactivation();
            
        } catch (error) {
            console.error(`❌ Erreur lors de la vérification des timeouts:`, error);
        }
    }

    /**
     * Vérifie les messages 'failed' récents et désactive les SIMs correspondantes
     * Cette fonction traite les cas où l'app Android marque directement les messages comme 'failed'
     * sans passer par l'API qui déclenche handleFailedMessage
     */
    async checkFailedMessagesForSimDeactivation() {
        try {
            // Chercher les messages 'failed' récents (dernières 5 minutes) avec des SIMs encore actives
            const [failedMessages] = await pool.query(`
                SELECT DISTINCT h.id, h.sim_id, h.created_at, s.phone_number, s.carrier_name
                FROM sms_history h
                JOIN sims s ON h.sim_id = s.id
                WHERE h.status = 'failed' 
                AND h.created_at > DATE_SUB(NOW(), INTERVAL 5 MINUTE)
                AND s.is_active = 1
                ORDER BY h.created_at DESC
            `);

            if (failedMessages.length > 0) {
                console.log(`🔍 ${failedMessages.length} SIMs actives avec messages échoués récents détectées`);
                
                for (const message of failedMessages) {
                    console.log(`❌ Désactivation SIM ${message.sim_id} (${message.phone_number}) suite au message ${message.id} échoué`);
                    
                    // Désactiver immédiatement la SIM
                    await pool.execute(
                        'UPDATE sims SET is_active = 0, is_default = 0 WHERE id = ?',
                        [message.sim_id]
                    );
                    
                    console.log(`✅ SIM ${message.sim_id} désactivée automatiquement`);
                }
            }
            
        } catch (error) {
            console.error(`❌ Erreur lors de la vérification des messages échoués:`, error);
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
}

module.exports = SmartRetrySystem;
























