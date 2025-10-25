const express = require('express');
const router = express.Router();
const { pool } = require('../config/database');

// GET /api/sims - Obtenir toutes les SIM
router.get('/', async (req, res) => {
  try {
    const [sims] = await pool.execute(`
      SELECT s.*, p.model as phone_model, p.status as phone_status
      FROM sims s
      LEFT JOIN phones p ON s.phone_id = p.id
      ORDER BY s.slot_index
    `);
    
    // Convertir les valeurs numériques en booléens pour is_active
    const formattedSims = sims.map(sim => ({
      ...sim,
      is_active: Boolean(sim.is_active)
    }));
    
    res.json({
      success: true,
      data: formattedSims
    });
  } catch (error) {
    console.error('Erreur lors de la récupération des SIMs:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

// GET /api/sims/:id - Obtenir une SIM spécifique
router.get('/:id', async (req, res) => {
  try {
    const { id } = req.params;
    
    const [sims] = await pool.execute(`
      SELECT s.*, p.model as phone_model, p.status as phone_status
      FROM sims s
      LEFT JOIN phones p ON s.phone_id = p.id
      WHERE s.id = ?
    `, [id]);
    
    if (sims.length === 0) {
      return res.status(404).json({
        success: false,
        message: 'SIM non trouvée'
      });
    }
    
    // Convertir les valeurs numériques en booléens pour is_active
    const formattedSim = {
      ...sims[0],
      is_active: Boolean(sims[0].is_active)
    };
    
    res.json({
      success: true,
      data: formattedSim
    });
  } catch (error) {
    console.error('Erreur lors de la récupération de la SIM:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

// PUT /api/sims/:id/limits - Mettre à jour les limites d'une SIM
router.put('/:id/limits', async (req, res) => {
  try {
    const { id } = req.params;
    const { monthly_limit, recipients_monthly_limit } = req.body;
    
    // Validation des données
    if (monthly_limit !== undefined && (monthly_limit < 0 || monthly_limit > 100000)) {
      return res.status(400).json({
        success: false,
        message: 'La limite mensuelle doit être entre 0 et 100000'
      });
    }
    
    if (recipients_monthly_limit !== undefined && (recipients_monthly_limit < 0 || recipients_monthly_limit > 1000)) {
      return res.status(400).json({
        success: false,
        message: 'La limite de destinataires mensuels doit être entre 0 et 1000'
      });
    }
    
    // Vérifier que la SIM existe
    const [existingSim] = await pool.execute('SELECT id FROM sims WHERE id = ?', [id]);
    if (existingSim.length === 0) {
      return res.status(404).json({
        success: false,
        message: 'SIM non trouvée'
      });
    }
    
    // Construire la requête de mise à jour dynamiquement
    const updates = [];
    const values = [];
    
    if (monthly_limit !== undefined) {
      updates.push('monthly_limit = ?');
      values.push(monthly_limit);
    }
    
    if (recipients_monthly_limit !== undefined) {
      updates.push('recipients_monthly_limit = ?');
      values.push(recipients_monthly_limit);
    }
    
    if (updates.length === 0) {
      return res.status(400).json({
        success: false,
        message: 'Aucune limite à mettre à jour'
      });
    }
    
    // Ajouter l'ID à la fin pour la clause WHERE
    values.push(id);
    
    // Exécuter la mise à jour
    await pool.execute(
      `UPDATE sims SET ${updates.join(', ')}, updated_at = NOW() WHERE id = ?`,
      values
    );
    
    // Récupérer la SIM mise à jour
    const [updatedSim] = await pool.execute(`
      SELECT s.*, p.model as phone_model, p.status as phone_status
      FROM sims s
      LEFT JOIN phones p ON s.phone_id = p.id
      WHERE s.id = ?
    `, [id]);
    
    // Convertir les valeurs numériques en booléens pour is_active
    const formattedSim = {
      ...updatedSim[0],
      is_active: Boolean(updatedSim[0].is_active)
    };
    
    res.json({
      success: true,
      message: 'Limites mises à jour avec succès',
      data: formattedSim
    });
    
  } catch (error) {
    console.error('Erreur lors de la mise à jour des limites:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

// PUT /api/sims/:id/status - Activer/désactiver une SIM
router.put('/:id/status', async (req, res) => {
  try {
    const { id } = req.params;
    const { is_active } = req.body;
    
    if (typeof is_active !== 'boolean') {
      return res.status(400).json({
        success: false,
        message: 'Le statut doit être un booléen'
      });
    }
    
    await pool.execute(
      'UPDATE sims SET is_active = ?, updated_at = NOW() WHERE id = ?',
      [is_active, id]
    );
    
    res.json({
      success: true,
      message: `SIM ${is_active ? 'activée' : 'désactivée'} avec succès`
    });
    
  } catch (error) {
    console.error('Erreur lors de la mise à jour du statut:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

// GET /api/sims/:id/stats - Obtenir les statistiques d'une SIM
router.get('/:id/stats', async (req, res) => {
  try {
    const { id } = req.params;
    
    const [sim] = await pool.execute(`
      SELECT 
        s.*,
        p.model as phone_model,
        (s.monthly_limit - s.messages_sent_month) as remaining_monthly,
        (s.recipients_monthly_limit - s.recipients_monthly) as remaining_recipients_monthly,
        ROUND((s.messages_sent_month / s.monthly_limit) * 100, 2) as monthly_usage_percent,
        ROUND((s.recipients_monthly / s.recipients_monthly_limit) * 100, 2) as recipients_monthly_usage_percent
      FROM sims s
      LEFT JOIN phones p ON s.phone_id = p.id
      WHERE s.id = ?
    `, [id]);
    
    if (sim.length === 0) {
      return res.status(404).json({
        success: false,
        message: 'SIM non trouvée'
      });
    }
    
    // Convertir les valeurs numériques en booléens pour is_active
    const formattedSim = {
      ...sim[0],
      is_active: Boolean(sim[0].is_active)
    };
    
    res.json({
      success: true,
      data: formattedSim
    });
    
  } catch (error) {
    console.error('Erreur lors de la récupération des statistiques:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

// POST /api/sims/sync - Synchroniser les SIM d'un téléphone
router.post('/sync', async (req, res) => {
  try {
    const { phone_id, sims } = req.body;
    
    // Validation des données
    if (!phone_id || !Array.isArray(sims)) {
      return res.status(400).json({
        success: false,
        message: 'phone_id et sims (array) sont requis'
      });
    }
    
    // Vérifier que le téléphone existe
    const [existingPhone] = await pool.execute('SELECT id FROM phones WHERE id = ?', [phone_id]);
    if (existingPhone.length === 0) {
      return res.status(404).json({
        success: false,
        message: 'Téléphone non trouvé'
      });
    }
    
    // Commencer une transaction
    const connection = await pool.getConnection();
    await connection.beginTransaction();
    
    try {
      // Supprimer les anciennes SIM de ce téléphone
      await connection.execute('DELETE FROM sims WHERE phone_id = ?', [phone_id]);
      
      // Insérer les nouvelles SIM
      let insertedCount = 0;
      for (const sim of sims) {
        const {
          slot_index,
          phone_number,
          carrier_name,
          country_code,
          subscription_id,
          is_active = true
        } = sim;
        
        await connection.execute(`
          INSERT INTO sims (
            phone_id, slot_index, phone_number, carrier_name, 
            country_code, subscription_id, is_active,
            monthly_limit, recipients_monthly_limit,
            messages_sent_month, recipients_monthly,
            created_at, updated_at
          ) VALUES (?, ?, ?, ?, ?, ?, ?, 30000, 50, 0, 0, NOW(), NOW())
        `, [
          phone_id, slot_index, phone_number, carrier_name,
          country_code, subscription_id, is_active
        ]);
        
        insertedCount++;
      }
      
      // Valider la transaction
      await connection.commit();
      
      // Récupérer les SIM synchronisées
      const [syncedSims] = await connection.execute(`
        SELECT s.*, p.model as phone_model, p.status as phone_status
        FROM sims s
        LEFT JOIN phones p ON s.phone_id = p.id
        WHERE s.phone_id = ?
        ORDER BY s.slot_index
      `, [phone_id]);
      
      // Convertir les valeurs numériques en booléens pour is_active
      const formattedSims = syncedSims.map(sim => ({
        ...sim,
        is_active: Boolean(sim.is_active)
      }));
      
              res.json({
          success: true,
          message: `${insertedCount} SIM(s) synchronisée(s) avec succès`,
          data: {
            phone_id,
            synced_count: insertedCount,
            sims: formattedSims
          }
        });
      
    } catch (error) {
      // Annuler la transaction en cas d'erreur
      await connection.rollback();
      throw error;
    } finally {
      connection.release();
    }
    
  } catch (error) {
    console.error('Erreur lors de la synchronisation des SIMs:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur lors de la synchronisation des SIMs'
    });
  }
});

module.exports = router; 