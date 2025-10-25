const express = require('express');
const router = express.Router();
const { pool } = require('../config/database');

// Obtenir la liste des SIMs
router.get('/', async (req, res) => {
  try {
    const [sims] = await pool.query(`
      SELECT s.*, p.model as device_model, p.status as device_status
      FROM sims s
      LEFT JOIN phones p ON s.device_id = p.tel_id
      ORDER BY s.sim_id DESC
    `);
    res.json(sims);
  } catch (error) {
    console.error('Erreur lors de la récupération des SIMs:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Obtenir les détails d'une SIM spécifique
router.get('/:id', async (req, res) => {
  try {
    const [sims] = await pool.query(`
      SELECT s.*, p.model as device_model, p.status as device_status
      FROM sims s
      LEFT JOIN phones p ON s.device_id = p.tel_id
      WHERE s.sim_id = ?
    `, [req.params.id]);

    if (sims.length === 0) {
      return res.status(404).json({ error: 'SIM non trouvée' });
    }

    res.json(sims[0]);
  } catch (error) {
    console.error('Erreur lors de la récupération de la SIM:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Mettre à jour la configuration d'une SIM
router.put('/:id/config', async (req, res) => {
  const { daily_limit, recipient_limit, status } = req.body;
  
  try {
    const [result] = await pool.query(
      `UPDATE sims 
       SET daily_limit = ?, 
           recipient_limit = ?, 
           status = ?
       WHERE sim_id = ?`,
      [daily_limit, recipient_limit, status, req.params.id]
    );

    if (result.affectedRows === 0) {
      return res.status(404).json({ error: 'SIM non trouvée' });
    }

    res.json({ message: 'Configuration mise à jour avec succès' });
  } catch (error) {
    console.error('Erreur lors de la mise à jour de la configuration:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Obtenir les statistiques d'utilisation des SIMs
router.get('/stats', async (req, res) => {
  try {
    const [stats] = await pool.query(`
      SELECT 
        s.sim_id,
        s.phone_number,
        s.operator,
        s.messages_sent,
        s.daily_limit,
        COUNT(DISTINCT DATE(sh.sent_at)) as days_active,
        COUNT(DISTINCT sh.recipient) as unique_recipients,
        SUM(CASE WHEN sh.status = 'sent' THEN 1 ELSE 0 END) as successful_sends,
        SUM(CASE WHEN sh.status = 'failed' THEN 1 ELSE 0 END) as failed_sends
      FROM sims s
      LEFT JOIN sms_history sh ON s.sim_id = sh.sim_id
      GROUP BY s.sim_id
    `);
    res.json(stats);
  } catch (error) {
    console.error('Erreur lors de la récupération des statistiques:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

module.exports = router; 
const router = express.Router();
const { pool } = require('../config/database');

// Obtenir la liste des SIMs
router.get('/', async (req, res) => {
  try {
    const [sims] = await pool.query(`
      SELECT s.*, p.model as device_model, p.status as device_status
      FROM sims s
      LEFT JOIN phones p ON s.device_id = p.tel_id
      ORDER BY s.sim_id DESC
    `);
    res.json(sims);
  } catch (error) {
    console.error('Erreur lors de la récupération des SIMs:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Obtenir les détails d'une SIM spécifique
router.get('/:id', async (req, res) => {
  try {
    const [sims] = await pool.query(`
      SELECT s.*, p.model as device_model, p.status as device_status
      FROM sims s
      LEFT JOIN phones p ON s.device_id = p.tel_id
      WHERE s.sim_id = ?
    `, [req.params.id]);

    if (sims.length === 0) {
      return res.status(404).json({ error: 'SIM non trouvée' });
    }

    res.json(sims[0]);
  } catch (error) {
    console.error('Erreur lors de la récupération de la SIM:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Mettre à jour la configuration d'une SIM
router.put('/:id/config', async (req, res) => {
  const { daily_limit, recipient_limit, status } = req.body;
  
  try {
    const [result] = await pool.query(
      `UPDATE sims 
       SET daily_limit = ?, 
           recipient_limit = ?, 
           status = ?
       WHERE sim_id = ?`,
      [daily_limit, recipient_limit, status, req.params.id]
    );

    if (result.affectedRows === 0) {
      return res.status(404).json({ error: 'SIM non trouvée' });
    }

    res.json({ message: 'Configuration mise à jour avec succès' });
  } catch (error) {
    console.error('Erreur lors de la mise à jour de la configuration:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Obtenir les statistiques d'utilisation des SIMs
router.get('/stats', async (req, res) => {
  try {
    const [stats] = await pool.query(`
      SELECT 
        s.sim_id,
        s.phone_number,
        s.operator,
        s.messages_sent,
        s.daily_limit,
        COUNT(DISTINCT DATE(sh.sent_at)) as days_active,
        COUNT(DISTINCT sh.recipient) as unique_recipients,
        SUM(CASE WHEN sh.status = 'sent' THEN 1 ELSE 0 END) as successful_sends,
        SUM(CASE WHEN sh.status = 'failed' THEN 1 ELSE 0 END) as failed_sends
      FROM sims s
      LEFT JOIN sms_history sh ON s.sim_id = sh.sim_id
      GROUP BY s.sim_id
    `);
    res.json(stats);
  } catch (error) {
    console.error('Erreur lors de la récupération des statistiques:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

module.exports = router; 
 
 