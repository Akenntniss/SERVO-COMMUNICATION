const { pool } = require('../config/database');

/**
 * SURVEILLANCE IMMÉDIATE ET FORCÉE
 * Ce système vérifie et désactive immédiatement toutes les SIMs défaillantes
 */
class SurveillanceImmediate {
    
    /**
     * Exécute immédiatement la surveillance et désactive toutes les SIMs défaillantes
     */
    async executerSurveillanceComplete() {
        console.log(`🚨 SURVEILLANCE IMMÉDIATE DÉMARRÉE`);
        
        try {
            // 1. DÉSACTIVER TOUTES LES SIMS AVEC DES ÉCHECS RÉCENTS
            await this.desactiverSimsEchoues();
            
            // 2. DÉFINIR LA MEILLEURE SIM COMME PAR DÉFAUT
            await this.definirMeilleurSimParDefaut();
            
            // 3. CORRIGER LES SIMS PAR DÉFAUT MULTIPLES
            await this.corrigerSimsDefautMultiples();
            
            console.log(`✅ SURVEILLANCE IMMÉDIATE TERMINÉE`);
            
        } catch (error) {
            console.error(`❌ Erreur surveillance immédiate:`, error);
        }
    }
    
    /**
     * Désactive toutes les SIMs qui ont des messages échoués récents
     */
    async desactiverSimsEchoues() {
        console.log(`🔍 Recherche des SIMs dont le DERNIER SMS est un échec...`);
        
        // Chercher les SIMs dont le DERNIER SMS (le plus récent) est un échec
        const [simsEchoues] = await pool.execute(`
            SELECT s.id as sim_id, s.phone_number, s.carrier_name, s.phone_id,
                   h.status as dernier_status, h.created_at as dernier_sms,
                   h.message as dernier_message
            FROM sims s
            JOIN sms_history h ON s.id = h.sim_id
            WHERE s.is_active = 1 
            AND s.excluded_from_monitoring = 0
            AND h.id = (
                SELECT h2.id 
                FROM sms_history h2 
                WHERE h2.sim_id = s.id 
                ORDER BY h2.created_at DESC 
                LIMIT 1
            )
            AND h.status = 'failed'
            AND h.created_at > DATE_SUB(NOW(), INTERVAL 2 HOUR)
            ORDER BY h.created_at DESC
        `);
        
        if (simsEchoues.length > 0) {
            console.log(`🚨 ${simsEchoues.length} SIM(s) avec dernier SMS en échec:`);
            
            for (const sim of simsEchoues) {
                console.log(`   - SIM ${sim.sim_id} (${sim.phone_number || 'N/A'} ${sim.carrier_name} sur ${sim.phone_id}): dernier SMS en échec (${sim.dernier_sms})`);
                
                // Désactiver cette SIM
                await pool.execute(
                    'UPDATE sims SET is_active = 0, is_default = 0 WHERE id = ?',
                    [sim.sim_id]
                );
                
                console.log(`❌ SIM ${sim.sim_id} désactivée (dernier SMS en échec)`);
            }
        } else {
            console.log(`✅ Aucune SIM avec dernier SMS en échec`);
        }
    }
    
    /**
     * Définit la SIM qui a le plus de succès récents comme par défaut
     */
    async definirMeilleurSimParDefaut() {
        console.log(`🔍 Recherche de la meilleure SIM pour définir comme par défaut...`);
        
        // Chercher la SIM avec le plus de succès récents
        const [meilleuresSims] = await pool.execute(`
            SELECT s.id, s.phone_number, s.carrier_name, s.phone_id,
                   COUNT(h.id) as succes_count, MAX(h.created_at) as dernier_succes
            FROM sims s
            LEFT JOIN sms_history h ON s.id = h.sim_id AND h.status IN ('sent', 'delivered')
            WHERE s.is_active = 1
            AND h.created_at > DATE_SUB(NOW(), INTERVAL 24 HOUR)
            GROUP BY s.id, s.phone_number, s.carrier_name, s.phone_id
            ORDER BY succes_count DESC, dernier_succes DESC
            LIMIT 1
        `);
        
        if (meilleuresSims.length > 0) {
            const meilleureSim = meilleuresSims[0];
            
            // D'abord, retirer le statut par défaut de toutes les SIMs
            await pool.execute('UPDATE sims SET is_default = 0');
            
            // Puis définir la meilleure SIM comme par défaut
            await pool.execute(
                'UPDATE sims SET is_default = 1 WHERE id = ?',
                [meilleureSim.id]
            );
            
            console.log(`✅ SIM ${meilleureSim.id} (${meilleureSim.phone_number || 'N/A'} ${meilleureSim.carrier_name}) définie comme par défaut (${meilleureSim.succes_count} succès récents)`);
        } else {
            // Si aucune SIM n'a de succès récents, prendre la première SIM active
            const [premiereSimActive] = await pool.execute(`
                SELECT id, phone_number, carrier_name 
                FROM sims 
                WHERE is_active = 1 
                ORDER BY id 
                LIMIT 1
            `);
            
            if (premiereSimActive.length > 0) {
                await pool.execute('UPDATE sims SET is_default = 0');
                await pool.execute(
                    'UPDATE sims SET is_default = 1 WHERE id = ?',
                    [premiereSimActive[0].id]
                );
                console.log(`✅ SIM ${premiereSimActive[0].id} (${premiereSimActive[0].phone_number || 'N/A'}) définie comme par défaut (première SIM active)`);
            }
        }
    }
    
    /**
     * Corrige le problème des SIMs par défaut multiples
     */
    async corrigerSimsDefautMultiples() {
        console.log(`🔍 Vérification des SIMs par défaut multiples...`);
        
        const [simsParDefaut] = await pool.execute(`
            SELECT id, phone_number, carrier_name, is_active 
            FROM sims 
            WHERE is_default = 1 
            ORDER BY is_active DESC, id ASC
        `);
        
        if (simsParDefaut.length > 1) {
            console.log(`⚠️ ${simsParDefaut.length} SIMs par défaut détectées! Correction...`);
            
            // Garder seulement la première SIM active par défaut
            const simAGarder = simsParDefaut.find(sim => sim.is_active === 1) || simsParDefaut[0];
            
            // Retirer le statut par défaut de toutes les autres
            for (const sim of simsParDefaut) {
                if (sim.id !== simAGarder.id) {
                    await pool.execute(
                        'UPDATE sims SET is_default = 0 WHERE id = ?',
                        [sim.id]
                    );
                    console.log(`🔧 SIM ${sim.id} (${sim.phone_number || 'N/A'}) n'est plus par défaut`);
                }
            }
            
            console.log(`✅ SIM ${simAGarder.id} (${simAGarder.phone_number || 'N/A'}) reste la seule par défaut`);
        } else if (simsParDefaut.length === 1) {
            console.log(`✅ Une seule SIM par défaut: ${simsParDefaut[0].phone_number || 'N/A'}`);
        } else {
            console.log(`⚠️ Aucune SIM par défaut! Correction automatique...`);
            await this.definirMeilleurSimParDefaut();
        }
    }
    
    /**
     * Démarre la surveillance automatique toutes les 30 secondes
     */
    demarrerSurveillanceAutomatique() {
        console.log(`🚀 DÉMARRAGE SURVEILLANCE AUTOMATIQUE (toutes les 30 secondes)`);
        
        // Exécuter immédiatement
        this.executerSurveillanceComplete();
        
        // Puis toutes les 30 secondes
        setInterval(() => {
            this.executerSurveillanceComplete();
        }, 30000); // 30 secondes
    }
}

module.exports = SurveillanceImmediate;








