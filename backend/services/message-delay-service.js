const { pool } = require('../config/database');

/**
 * Service de gestion des délais entre messages SMS
 * Impose un délai de 30 secondes minimum entre chaque envoi réussi
 */
class MessageDelayService {
    constructor() {
        // Délai minimum entre messages en millisecondes (30 secondes)
        this.MINIMUM_DELAY_MS = 30 * 1000;
        
        // Cache en mémoire du dernier envoi par SIM pour performance
        this.lastSentTimestamps = new Map();
        
        console.log('🕐 Service de délai des messages initialisé (délai: 30s)');
    }

    /**
     * Enregistre le timestamp d'un message envoyé avec succès
     * @param {number} simId - ID de la SIM utilisée
     * @param {string} messageId - ID du message envoyé
     */
    async recordSuccessfulSend(simId, messageId) {
        const now = Date.now();
        
        try {
            // Mettre à jour le cache en mémoire
            this.lastSentTimestamps.set(simId.toString(), now);
            
            // Sauvegarder en base pour persistance
            await pool.execute(`
                INSERT INTO sim_last_activity (sim_id, last_sent_at, last_message_id)
                VALUES (?, FROM_UNIXTIME(?/1000), ?)
                ON DUPLICATE KEY UPDATE
                    last_sent_at = FROM_UNIXTIME(?/1000),
                    last_message_id = ?,
                    updated_at = NOW()
            `, [simId, now, messageId, now, messageId]);
            
            console.log(`✅ Délai enregistré - SIM ${simId}, Message ${messageId}, Timestamp: ${new Date(now).toISOString()}`);
            
        } catch (error) {
            console.error(`❌ Erreur lors de l'enregistrement du délai SIM ${simId}:`, error);
        }
    }

    /**
     * Vérifie si le délai minimum s'est écoulé depuis le dernier envoi
     * @param {number} simId - ID de la SIM à vérifier
     * @returns {Promise<{canSend: boolean, waitTimeMs: number, nextAvailableAt: Date}>}
     */
    async canSendMessage(simId) {
        try {
            // Vérifier d'abord le cache en mémoire
            const cachedTimestamp = this.lastSentTimestamps.get(simId.toString());
            let lastSentTimestamp = cachedTimestamp;

            // Si pas en cache, récupérer depuis la base de données
            if (!lastSentTimestamp) {
                const [result] = await pool.execute(`
                    SELECT UNIX_TIMESTAMP(last_sent_at) * 1000 as last_sent_ms
                    FROM sim_last_activity
                    WHERE sim_id = ?
                `, [simId]);

                if (result.length > 0) {
                    lastSentTimestamp = result[0].last_sent_ms;
                    // Mettre à jour le cache
                    this.lastSentTimestamps.set(simId.toString(), lastSentTimestamp);
                }
            }

            // Si aucun envoi précédent, autoriser immédiatement
            if (!lastSentTimestamp) {
                return {
                    canSend: true,
                    waitTimeMs: 0,
                    nextAvailableAt: new Date(),
                    reason: 'Aucun envoi précédent'
                };
            }

            const now = Date.now();
            const timeSinceLastSend = now - lastSentTimestamp;
            const waitTimeMs = Math.max(0, this.MINIMUM_DELAY_MS - timeSinceLastSend);
            const canSend = timeSinceLastSend >= this.MINIMUM_DELAY_MS;
            const nextAvailableAt = new Date(lastSentTimestamp + this.MINIMUM_DELAY_MS);

            const result = {
                canSend,
                waitTimeMs,
                nextAvailableAt,
                reason: canSend ? 
                    `Délai respecté (${Math.round(timeSinceLastSend/1000)}s écoulées)` : 
                    `Délai en cours (${Math.round(waitTimeMs/1000)}s restantes)`
            };

            console.log(`🕐 Vérification délai SIM ${simId}: ${result.reason}`);
            return result;

        } catch (error) {
            console.error(`❌ Erreur lors de la vérification du délai SIM ${simId}:`, error);
            // En cas d'erreur, autoriser l'envoi pour ne pas bloquer le système
            return {
                canSend: true,
                waitTimeMs: 0,
                nextAvailableAt: new Date(),
                reason: 'Erreur - autorisation par défaut'
            };
        }
    }

    /**
     * Filtre les messages en fonction des délais
     * @param {Array} messages - Liste des messages pending
     * @returns {Promise<Array>} Messages autorisés selon les délais
     */
    async filterMessagesWithDelay(messages) {
        if (!messages || messages.length === 0) {
            return [];
        }

        const authorizedMessages = [];

        for (const message of messages) {
            if (message.sim_id) {
                const delayCheck = await this.canSendMessage(message.sim_id);
                
                if (delayCheck.canSend) {
                    authorizedMessages.push({
                        ...message,
                        delay_info: delayCheck
                    });
                } else {
                    console.log(`⏳ Message ${message.id} en attente - ${delayCheck.reason}`);
                }
            } else {
                // Si pas de sim_id spécifique, autoriser (sera traité par la logique de sélection de SIM)
                authorizedMessages.push(message);
            }
        }

        console.log(`📊 Filtrage délais: ${messages.length} messages → ${authorizedMessages.length} autorisés`);
        return authorizedMessages;
    }

    /**
     * Obtenir les statistiques des délais
     * @returns {Promise<Object>} Statistiques des délais par SIM
     */
    async getDelayStats() {
        try {
            const [stats] = await pool.execute(`
                SELECT 
                    s.id as sim_id,
                    s.carrier_name,
                    s.phone_number,
                    sla.last_sent_at,
                    sla.last_message_id,
                    TIMESTAMPDIFF(SECOND, sla.last_sent_at, NOW()) as seconds_since_last_send,
                    CASE 
                        WHEN TIMESTAMPDIFF(SECOND, sla.last_sent_at, NOW()) >= 30 THEN 'ready'
                        ELSE 'waiting'
                    END as status,
                    GREATEST(0, 30 - TIMESTAMPDIFF(SECOND, sla.last_sent_at, NOW())) as wait_seconds_remaining
                FROM sims s
                LEFT JOIN sim_last_activity sla ON s.id = sla.sim_id
                WHERE s.is_active = 1
                ORDER BY s.id
            `);

            return {
                total_sims: stats.length,
                ready_sims: stats.filter(s => s.status === 'ready').length,
                waiting_sims: stats.filter(s => s.status === 'waiting').length,
                sims: stats
            };

        } catch (error) {
            console.error('❌ Erreur lors de la récupération des stats de délai:', error);
            return { error: error.message };
        }
    }

    /**
     * Nettoyer les anciens enregistrements de délai (plus de 24h)
     */
    async cleanupOldRecords() {
        try {
            const [result] = await pool.execute(`
                DELETE FROM sim_last_activity 
                WHERE last_sent_at < DATE_SUB(NOW(), INTERVAL 24 HOUR)
            `);

            if (result.affectedRows > 0) {
                console.log(`🧹 Nettoyage: ${result.affectedRows} anciens enregistrements de délai supprimés`);
            }
        } catch (error) {
            console.error('❌ Erreur lors du nettoyage des délais:', error);
        }
    }
}

module.exports = MessageDelayService;
