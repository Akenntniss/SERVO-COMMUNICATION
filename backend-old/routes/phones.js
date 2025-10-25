const express = require('express');
const router = express.Router();
const { pool } = require('../config/database');
const { v4: uuidv4 } = require('uuid');

// GET /api/phones - Liste tous les téléphones
router.get('/', async (req, res) => {
  try {
    const [phones] = await pool.execute(`
      SELECT p.*, 
             COUNT(s.id) as sim_count,
             COUNT(CASE WHEN s.is_active = 1 THEN 1 END) as active_sims,
             COALESCE(SUM(s.messages_sent_month), 0) as messages_month
      FROM phones p
      LEFT JOIN sims s ON p.id = s.phone_id
      GROUP BY p.id
      ORDER BY p.created_at DESC
    `);
    
    res.json({
      success: true,
      data: phones
    });
  } catch (error) {
    console.error('Erreur lors de la récupération des téléphones:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

// POST /api/phones/register - Enregistrer un nouveau téléphone
router.post('/register', async (req, res) => {
  try {
    const { model, android_version, app_version, sims = [] } = req.body;
    
    if (!model || !android_version || !app_version) {
      return res.status(400).json({
        success: false,
        message: 'Données manquantes: model, android_version et app_version sont requis'
      });
    }
    
    const phoneId = uuidv4();
    
    // Insérer le téléphone
    await pool.execute(
      'INSERT INTO phones (id, model, android_version, app_version, status, last_heartbeat) VALUES (?, ?, ?, ?, ?, NOW())',
      [phoneId, model, android_version, app_version, 'active']
    );
    
    // Insérer les SIMs si fournies
    if (sims.length > 0) {
      for (const sim of sims) {
        await pool.execute(`
          INSERT INTO sims (phone_id, slot_index, phone_number, carrier_name, country_code, subscription_id, is_active, monthly_limit, recipients_monthly_limit, messages_sent_month, recipients_monthly)
          VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        `, [
          phoneId,
          sim.slot_index || 0,
          sim.phone_number || null,
          sim.carrier_name || null,
          sim.country_code || null,
          sim.subscription_id || null,
          sim.is_active !== false,
          sim.monthly_limit || 30000,
          sim.recipients_monthly_limit || 50,
          0,
          0
        ]);
      }
    }
    
    // Récupérer le téléphone créé avec ses SIMs
    const [phoneData] = await pool.execute(`
      SELECT p.*, 
             COUNT(s.id) as sim_count,
             COUNT(CASE WHEN s.is_active = 1 THEN 1 END) as active_sims
      FROM phones p
      LEFT JOIN sims s ON p.id = s.phone_id
      WHERE p.id = ?
      GROUP BY p.id
    `, [phoneId]);
    
    res.status(201).json({
      success: true,
      message: 'Téléphone enregistré avec succès',
      data: {
        phone: phoneData[0],
        phone_id: phoneId
      }
    });
    
  } catch (error) {
    console.error('Erreur lors de l\'enregistrement du téléphone:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

// PUT /api/phones/:id/heartbeat - Mettre à jour le heartbeat
router.put('/:id/heartbeat', async (req, res) => {
  try {
    const { id } = req.params;
    const { sims = [] } = req.body;
    
    // Mettre à jour le heartbeat du téléphone
    await pool.execute(
      'UPDATE phones SET last_heartbeat = NOW() WHERE id = ?',
      [id]
    );
    
    // Mettre à jour les SIMs si fournies
    if (sims.length > 0) {
      // Marquer toutes les SIMs comme inactives d'abord
      await pool.execute(
        'UPDATE sims SET is_active = false WHERE phone_id = ?',
        [id]
      );
      
      // Mettre à jour ou insérer les SIMs actives
      for (const sim of sims) {
        await pool.execute(`
          INSERT INTO sims (phone_id, slot_index, phone_number, carrier_name, country_code, subscription_id, is_active, monthly_limit, recipients_monthly_limit, messages_sent_month, recipients_monthly)
          VALUES (?, ?, ?, ?, ?, ?, true, ?, ?, ?, ?)
          ON DUPLICATE KEY UPDATE
          phone_number = VALUES(phone_number),
          carrier_name = VALUES(carrier_name),
          country_code = VALUES(country_code),
          subscription_id = VALUES(subscription_id),
          is_active = true,
          monthly_limit = VALUES(monthly_limit),
          recipients_monthly_limit = VALUES(recipients_monthly_limit),
          updated_at = NOW()
        `, [
          id,
          sim.slot_index || 0,
          sim.phone_number || null,
          sim.carrier_name || null,
          sim.country_code || null,
          sim.subscription_id || null,
          sim.monthly_limit || 30000,
          sim.recipients_monthly_limit || 50,
          0,
          0
        ]);
      }
    }
    
    res.json({
      success: true,
      message: 'Heartbeat mis à jour'
    });
    
  } catch (error) {
    console.error('Erreur lors de la mise à jour du heartbeat:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

// GET /api/phones/:id - Détails d'un téléphone
router.get('/:id', async (req, res) => {
  try {
    const { id } = req.params;
    
    // Récupérer le téléphone
    const [phones] = await pool.execute(
      'SELECT * FROM phones WHERE id = ?',
      [id]
    );
    
    if (phones.length === 0) {
      return res.status(404).json({
        success: false,
        message: 'Téléphone non trouvé'
      });
    }
    
    // Récupérer les SIMs
    const [sims] = await pool.execute(
      'SELECT * FROM sims WHERE phone_id = ? ORDER BY slot_index',
      [id]
    );
    
    res.json({
      success: true,
      data: {
        phone: phones[0],
        sims: sims
      }
    });
    
  } catch (error) {
    console.error('Erreur lors de la récupération du téléphone:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

// PUT /api/phones/:id/status - Changer le statut d'un téléphone
router.put('/:id/status', async (req, res) => {
  try {
    const { id } = req.params;
    const { status } = req.body;
    
    if (!['active', 'inactive', 'maintenance'].includes(status)) {
      return res.status(400).json({
        success: false,
        message: 'Statut invalide. Valeurs autorisées: active, inactive, maintenance'
      });
    }
    
    await pool.execute(
      'UPDATE phones SET status = ?, updated_at = NOW() WHERE id = ?',
      [status, id]
    );
    
    res.json({
      success: true,
      message: 'Statut mis à jour'
    });
    
  } catch (error) {
    console.error('Erreur lors de la mise à jour du statut:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

// DELETE /api/phones/:id - Supprimer un téléphone
router.delete('/:id', async (req, res) => {
  try {
    const { id } = req.params;
    
    // Supprimer les SIMs associées
    await pool.execute('DELETE FROM sims WHERE phone_id = ?', [id]);
    
    // Supprimer le téléphone
    const [result] = await pool.execute('DELETE FROM phones WHERE id = ?', [id]);
    
    if (result.affectedRows === 0) {
      return res.status(404).json({
        success: false,
        message: 'Téléphone non trouvé'
      });
    }
    
    res.json({
      success: true,
      message: 'Téléphone supprimé'
    });
    
  } catch (error) {
    console.error('Erreur lors de la suppression du téléphone:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

module.exports = router; 
 
 


