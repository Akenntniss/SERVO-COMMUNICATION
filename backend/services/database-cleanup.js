const { pool } = require('../config/database');
const cron = require('node-cron');

class DatabaseCleanupService {
    constructor() {
        this.isRunning = false;
    }

    start() {
        if (this.isRunning) return;
        
        this.isRunning = true;
        console.log('🧹 Démarrage du service de nettoyage de la base de données');
        
        // Nettoyage quotidien à 2h du matin
        cron.schedule('0 2 * * *', async () => {
            await this.performDailyCleanup();
        });
        
        // Nettoyage immédiat au démarrage (pour test)
        setTimeout(() => {
            this.performDailyCleanup();
        }, 5000);
    }

    stop() {
        this.isRunning = false;
        console.log('🛑 Arrêt du service de nettoyage de la base de données');
    }

    async performDailyCleanup() {
        console.log('🧹 Début du nettoyage quotidien de la base de données');
        
        try {
            // 1. Nettoyer les anciens heartbeats (garder seulement les 24 dernières heures)
            await this.cleanupOldHeartbeats();
            
            // 2. Nettoyer les anciens messages (garder seulement les 30 derniers jours)
            await this.cleanupOldMessages();
            
            // 3. Nettoyer les statistiques anciennes (garder seulement les 90 derniers jours)
            await this.cleanupOldStats();
            
            // 4. Optimiser les tables
            await this.optimizeTables();
            
            console.log('✅ Nettoyage quotidien terminé avec succès');
            
        } catch (error) {
            console.error('❌ Erreur lors du nettoyage quotidien:', error);
        }
    }

    async cleanupOldHeartbeats() {
        try {
            // Marquer les téléphones inactifs (pas de heartbeat depuis 24h)
            const [inactiveResult] = await pool.execute(`
                UPDATE phones 
                SET status = 'inactive' 
                WHERE last_heartbeat < DATE_SUB(NOW(), INTERVAL 24 HOUR) 
                AND status = 'active'
            `);
            
            if (inactiveResult.affectedRows > 0) {
                console.log(`📱 ${inactiveResult.affectedRows} téléphone(s) marqué(s) comme inactif(s)`);
            }
            
            // Note: On ne supprime pas les enregistrements de heartbeat car ils sont dans la table phones
            // On se contente de marquer les téléphones comme inactifs
            
        } catch (error) {
            console.error('❌ Erreur lors du nettoyage des heartbeats:', error);
        }
    }

    async cleanupOldMessages() {
        try {
            // Supprimer les messages de plus de 30 jours
            const [result] = await pool.execute(`
                DELETE FROM sms_history 
                WHERE created_at < DATE_SUB(NOW(), INTERVAL 30 DAY)
            `);
            
            if (result.affectedRows > 0) {
                console.log(`📨 ${result.affectedRows} ancien(s) message(s) supprimé(s)`);
            }
            
        } catch (error) {
            console.error('❌ Erreur lors du nettoyage des messages:', error);
        }
    }

    async cleanupOldStats() {
        try {
            // Supprimer les statistiques de plus de 90 jours
            const [result] = await pool.execute(`
                DELETE FROM sim_stats 
                WHERE date < DATE_SUB(NOW(), INTERVAL 90 DAY)
            `);
            
            if (result.affectedRows > 0) {
                console.log(`📊 ${result.affectedRows} ancienne(s) statistique(s) supprimée(s)`);
            }
            
        } catch (error) {
            console.error('❌ Erreur lors du nettoyage des statistiques:', error);
        }
    }

    async optimizeTables() {
        try {
            const tables = ['phones', 'sims', 'sms_history', 'sim_stats'];
            
            for (const table of tables) {
                await pool.execute(`OPTIMIZE TABLE ${table}`);
            }
            
            console.log(`🔧 ${tables.length} table(s) optimisée(s)`);
            
        } catch (error) {
            console.error('❌ Erreur lors de l\'optimisation des tables:', error);
        }
    }

    // Méthode pour forcer un nettoyage manuel
    async forceCleanup() {
        console.log('🧹 Nettoyage manuel forcé');
        await this.performDailyCleanup();
    }

    // Statistiques de nettoyage
    async getCleanupStats() {
        try {
            const [stats] = await pool.execute(`
                SELECT 
                    (SELECT COUNT(*) FROM phones WHERE status = 'active') as active_phones,
                    (SELECT COUNT(*) FROM phones WHERE status = 'inactive') as inactive_phones,
                    (SELECT COUNT(*) FROM sms_history WHERE created_at > DATE_SUB(NOW(), INTERVAL 24 HOUR)) as messages_24h,
                    (SELECT COUNT(*) FROM sms_history WHERE created_at > DATE_SUB(NOW(), INTERVAL 7 DAY)) as messages_7d,
                    (SELECT COUNT(*) FROM sms_history WHERE created_at > DATE_SUB(NOW(), INTERVAL 30 DAY)) as messages_30d,
                    (SELECT COUNT(*) FROM sim_stats WHERE date > DATE_SUB(NOW(), INTERVAL 30 DAY)) as stats_30d
            `);
            
            return stats[0];
        } catch (error) {
            console.error('❌ Erreur lors de la récupération des stats de nettoyage:', error);
            return null;
        }
    }
}

module.exports = DatabaseCleanupService;
