const express = require('express');
const router = express.Router();
const { pool } = require('../config/database');
const SmartRetrySystem = require('../services/smart-retry-system');

// Instance du système de retry
const retrySystem = new SmartRetrySystem();

// POST /api/retry/handle-failure - Gérer un échec de message
router.post('/handle-failure', async (req, res) => {
    try {
        const { message_id, error_code, phone_id, sim_id } = req.body;

        if (!message_id || !error_code) {
            return res.status(400).json({
                success: false,
                message: 'message_id et error_code sont requis'
            });
        }

        console.log(`📥 Réception échec: Message ${message_id}, Erreur: ${error_code}`);

        // Traiter l'échec avec le système intelligent
        const retryScheduled = await retrySystem.handleFailedMessage(
            message_id, 
            error_code, 
            phone_id, 
            sim_id
        );

        res.json({
            success: true,
            message: retryScheduled ? 'Retry programmé' : 'Message marqué comme échec final',
            retry_scheduled: retryScheduled,
            error_code: error_code
        });

    } catch (error) {
        console.error('❌ Erreur lors de la gestion d\'échec:', error);
        res.status(500).json({
            success: false,
            message: 'Erreur serveur'
        });
    }
});

// POST /api/retry/manual-retry - Retry manuel d'un message
router.post('/manual-retry', async (req, res) => {
    try {
        const { message_id, force_sim_switch } = req.body;

        if (!message_id) {
            return res.status(400).json({
                success: false,
                message: 'message_id est requis'
            });
        }

        // Récupérer le message
        const [messages] = await pool.query(`
            SELECT * FROM sms_history WHERE id = ?
        `, [message_id]);

        if (messages.length === 0) {
            return res.status(404).json({
                success: false,
                message: 'Message non trouvé'
            });
        }

        const message = messages[0];

        if (force_sim_switch) {
            // Forcer le basculement SIM
            const success = await retrySystem.retryWithDifferentSim(
                message_id, 
                message, 
                { switchSim: true, delay: 0, maxRetries: 3 }
            );
            
            res.json({
                success: true,
                message: success ? 'Retry avec nouvelle SIM programmé' : 'Échec du basculement SIM',
                sim_switched: success
            });
        } else {
            // Retry normal
            await retrySystem.retryMessage(message_id);
            
            res.json({
                success: true,
                message: 'Message remis en pending pour retry'
            });
        }

    } catch (error) {
        console.error('❌ Erreur lors du retry manuel:', error);
        res.status(500).json({
            success: false,
            message: 'Erreur serveur'
        });
    }
});

// GET /api/retry/failed-messages - Liste des messages en échec
router.get('/failed-messages', async (req, res) => {
    try {
        const { limit = 50, offset = 0 } = req.query;

        const [failedMessages] = await pool.query(`
            SELECT h.id, h.recipient, h.message, h.status, h.failure_reason,
                   h.retry_count, h.created_at, h.updated_at,
                   p.model as phone_model,
                   s.carrier_name, s.phone_number as sim_number
            FROM sms_history h
            LEFT JOIN phones p ON h.phone_id = p.id
            LEFT JOIN sims s ON h.sim_id = s.id
            WHERE h.status = 'failed'
            ORDER BY h.updated_at DESC
            LIMIT ? OFFSET ?
        `, [parseInt(limit), parseInt(offset)]);

        // Compter le total
        const [countResult] = await pool.query(`
            SELECT COUNT(*) as total FROM sms_history WHERE status = 'failed'
        `);

        res.json({
            success: true,
            data: {
                messages: failedMessages,
                total: countResult[0].total,
                limit: parseInt(limit),
                offset: parseInt(offset)
            }
        });

    } catch (error) {
        console.error('❌ Erreur lors de la récupération des messages échoués:', error);
        res.status(500).json({
            success: false,
            message: 'Erreur serveur'
        });
    }
});

// GET /api/retry/stats - Statistiques des retries
router.get('/stats', async (req, res) => {
    try {
        // Statistiques générales
        const [generalStats] = await pool.query(`
            SELECT 
                COUNT(CASE WHEN status = 'failed' THEN 1 END) as total_failed,
                COUNT(CASE WHEN status = 'sent' THEN 1 END) as total_sent,
                COUNT(CASE WHEN retry_count > 0 THEN 1 END) as total_retried,
                AVG(retry_count) as avg_retry_count
            FROM sms_history
            WHERE DATE(created_at) = CURDATE()
        `);

        // Statistiques par code d'erreur
        const [errorStats] = await pool.query(`
            SELECT failure_reason, COUNT(*) as count
            FROM sms_history
            WHERE status = 'failed' 
            AND DATE(created_at) = CURDATE()
            AND failure_reason IS NOT NULL
            GROUP BY failure_reason
            ORDER BY count DESC
        `);

        // Statistiques par SIM
        const [simStats] = await pool.query(`
            SELECT s.carrier_name, s.phone_number,
                   COUNT(CASE WHEN h.status = 'sent' THEN 1 END) as sent_count,
                   COUNT(CASE WHEN h.status = 'failed' THEN 1 END) as failed_count,
                   ROUND(
                       COUNT(CASE WHEN h.status = 'sent' THEN 1 END) * 100.0 / 
                       NULLIF(COUNT(*), 0), 2
                   ) as success_rate
            FROM sims s
            LEFT JOIN sms_history h ON s.id = h.sim_id AND DATE(h.created_at) = CURDATE()
            WHERE s.is_active = true
            GROUP BY s.id, s.carrier_name, s.phone_number
            ORDER BY success_rate DESC
        `);

        res.json({
            success: true,
            data: {
                general: generalStats[0],
                error_breakdown: errorStats,
                sim_performance: simStats
            }
        });

    } catch (error) {
        console.error('❌ Erreur lors de la récupération des stats:', error);
        res.status(500).json({
            success: false,
            message: 'Erreur serveur'
        });
    }
});

// POST /api/retry/bulk-retry - Retry en masse
router.post('/bulk-retry', async (req, res) => {
    try {
        const { message_ids, error_code_filter, force_sim_switch } = req.body;

        let messageIds = message_ids || [];

        // Si pas d'IDs spécifiques, utiliser le filtre par code d'erreur
        if (messageIds.length === 0 && error_code_filter) {
            const [messages] = await pool.query(`
                SELECT id FROM sms_history 
                WHERE status = 'failed' 
                AND failure_reason = ?
                AND retry_count < 3
            `, [error_code_filter]);
            
            messageIds = messages.map(m => m.id);
        }

        if (messageIds.length === 0) {
            return res.status(400).json({
                success: false,
                message: 'Aucun message à traiter'
            });
        }

        let successCount = 0;
        let failureCount = 0;

        for (const messageId of messageIds) {
            try {
                if (force_sim_switch) {
                    const [messages] = await pool.query(`
                        SELECT * FROM sms_history WHERE id = ?
                    `, [messageId]);
                    
                    if (messages.length > 0) {
                        const success = await retrySystem.retryWithDifferentSim(
                            messageId, 
                            messages[0], 
                            { switchSim: true, delay: 0, maxRetries: 3 }
                        );
                        
                        if (success) successCount++;
                        else failureCount++;
                    }
                } else {
                    await retrySystem.retryMessage(messageId);
                    successCount++;
                }
            } catch (error) {
                console.error(`❌ Erreur retry message ${messageId}:`, error);
                failureCount++;
            }
        }

        res.json({
            success: true,
            message: `Retry en masse terminé`,
            data: {
                total_processed: messageIds.length,
                success_count: successCount,
                failure_count: failureCount
            }
        });

    } catch (error) {
        console.error('❌ Erreur lors du retry en masse:', error);
        res.status(500).json({
            success: false,
            message: 'Erreur serveur'
        });
    }
});

module.exports = { router, retrySystem };
