const express = require('express');
const router = express.Router();
const { pool } = require('../config/database');

// Envoyer un SMS
router.post('/send', async (req, res) => {
  const { recipient, message, sim_id } = req.body;

  if (!recipient || !message) {
    return res.status(400).json({ error: 'Destinataire et message sont requis' });
  }

  try {
    // Vérifier si une SIM spécifique est demandée
    let targetSimId = sim_id;
    if (!targetSimId) {
      // Sélectionner la SIM par défaut ou la première SIM active
      const [defaultSim] = await pool.query(`
        SELECT sim_id 
        FROM sims 
        WHERE status = 'active' 
        ORDER BY messages_sent ASC 
        LIMIT 1
      `);
      if (defaultSim.length === 0) {
        return res.status(400).json({ error: 'Aucune SIM active disponible' });
      }
      targetSimId = defaultSim[0].sim_id;
    }

    // Vérifier les limites de la SIM
    const [simInfo] = await pool.query(`
      SELECT daily_limit, messages_sent 
      FROM sims 
      WHERE sim_id = ? AND status = 'active'
    `, [targetSimId]);

    if (simInfo.length === 0) {
      return res.status(400).json({ error: 'SIM non trouvée ou inactive' });
    }

    if (simInfo[0].messages_sent >= simInfo[0].daily_limit) {
      return res.status(400).json({ error: 'Limite quotidienne atteinte pour cette SIM' });
    }

    // Insérer le message dans l'historique
    const [result] = await pool.query(
      `INSERT INTO sms_history (recipient, message, sim_id, status) 
       VALUES (?, ?, ?, 'pending')`,
      [recipient, message, targetSimId]
    );

    // Mettre à jour le compteur de messages de la SIM
    await pool.query(
      'UPDATE sims SET messages_sent = messages_sent + 1 WHERE sim_id = ?',
      [targetSimId]
    );

    res.status(201).json({
      message_id: result.insertId,
      status: 'pending',
      sim_id: targetSimId
    });
  } catch (error) {
    console.error('Erreur lors de l\'envoi du SMS:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Envoyer des SMS en masse
router.post('/send-bulk', async (req, res) => {
  const { messages } = req.body;

  if (!Array.isArray(messages) || messages.length === 0) {
    return res.status(400).json({ error: 'Liste de messages invalide' });
  }

  try {
    const results = [];
    for (const msg of messages) {
      const { recipient, message, sim_id } = msg;
      
      if (!recipient || !message) {
        results.push({ recipient, status: 'failed', error: 'Données invalides' });
        continue;
      }

      // Même logique que pour l'envoi simple
      let targetSimId = sim_id;
      if (!targetSimId) {
        const [defaultSim] = await pool.query(`
          SELECT sim_id 
          FROM sims 
          WHERE status = 'active' 
          ORDER BY messages_sent ASC 
          LIMIT 1
        `);
        if (defaultSim.length === 0) {
          results.push({ recipient, status: 'failed', error: 'Aucune SIM disponible' });
          continue;
        }
        targetSimId = defaultSim[0].sim_id;
      }

      const [simInfo] = await pool.query(`
        SELECT daily_limit, messages_sent 
        FROM sims 
        WHERE sim_id = ? AND status = 'active'
      `, [targetSimId]);

      if (simInfo.length === 0 || simInfo[0].messages_sent >= simInfo[0].daily_limit) {
        results.push({ recipient, status: 'failed', error: 'SIM indisponible ou limite atteinte' });
        continue;
      }

      const [result] = await pool.query(
        `INSERT INTO sms_history (recipient, message, sim_id, status) 
         VALUES (?, ?, ?, 'pending')`,
        [recipient, message, targetSimId]
      );

      await pool.query(
        'UPDATE sims SET messages_sent = messages_sent + 1 WHERE sim_id = ?',
        [targetSimId]
      );

      results.push({
        recipient,
        message_id: result.insertId,
        status: 'pending',
        sim_id: targetSimId
      });
    }

    res.status(201).json({ results });
  } catch (error) {
    console.error('Erreur lors de l\'envoi en masse:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Obtenir l'historique des messages
router.get('/history', async (req, res) => {
  const { start_date, end_date, status, sim_id, recipient } = req.query;
  
  try {
    let query = `
      SELECT sh.*, s.phone_number as sim_number
      FROM sms_history sh
      LEFT JOIN sims s ON sh.sim_id = s.sim_id
      WHERE 1=1
    `;
    const params = [];

    if (start_date) {
      query += ' AND sh.sent_at >= ?';
      params.push(start_date);
    }
    if (end_date) {
      query += ' AND sh.sent_at <= ?';
      params.push(end_date);
    }
    if (status) {
      query += ' AND sh.status = ?';
      params.push(status);
    }
    if (sim_id) {
      query += ' AND sh.sim_id = ?';
      params.push(sim_id);
    }
    if (recipient) {
      query += ' AND sh.recipient LIKE ?';
      params.push(`%${recipient}%`);
    }

    query += ' ORDER BY sh.sent_at DESC LIMIT 100';

    const [messages] = await pool.query(query, params);
    res.json(messages);
  } catch (error) {
    console.error('Erreur lors de la récupération de l\'historique:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Mettre à jour le statut d'un message
router.put('/:id/status', async (req, res) => {
  const { status, failure_reason } = req.body;

  if (!status || !['sent', 'failed', 'pending'].includes(status)) {
    return res.status(400).json({ error: 'Statut invalide' });
  }

  try {
    const [result] = await pool.query(
      `UPDATE sms_history 
       SET status = ?, 
           failure_reason = ? 
       WHERE id = ?`,
      [status, failure_reason, req.params.id]
    );

    if (result.affectedRows === 0) {
      return res.status(404).json({ error: 'Message non trouvé' });
    }

    res.json({ message: 'Statut mis à jour avec succès' });
  } catch (error) {
    console.error('Erreur lors de la mise à jour du statut:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

module.exports = router; 
const router = express.Router();
const { pool } = require('../config/database');

// Envoyer un SMS
router.post('/send', async (req, res) => {
  const { recipient, message, sim_id } = req.body;

  if (!recipient || !message) {
    return res.status(400).json({ error: 'Destinataire et message sont requis' });
  }

  try {
    // Vérifier si une SIM spécifique est demandée
    let targetSimId = sim_id;
    if (!targetSimId) {
      // Sélectionner la SIM par défaut ou la première SIM active
      const [defaultSim] = await pool.query(`
        SELECT sim_id 
        FROM sims 
        WHERE status = 'active' 
        ORDER BY messages_sent ASC 
        LIMIT 1
      `);
      if (defaultSim.length === 0) {
        return res.status(400).json({ error: 'Aucune SIM active disponible' });
      }
      targetSimId = defaultSim[0].sim_id;
    }

    // Vérifier les limites de la SIM
    const [simInfo] = await pool.query(`
      SELECT daily_limit, messages_sent 
      FROM sims 
      WHERE sim_id = ? AND status = 'active'
    `, [targetSimId]);

    if (simInfo.length === 0) {
      return res.status(400).json({ error: 'SIM non trouvée ou inactive' });
    }

    if (simInfo[0].messages_sent >= simInfo[0].daily_limit) {
      return res.status(400).json({ error: 'Limite quotidienne atteinte pour cette SIM' });
    }

    // Insérer le message dans l'historique
    const [result] = await pool.query(
      `INSERT INTO sms_history (recipient, message, sim_id, status) 
       VALUES (?, ?, ?, 'pending')`,
      [recipient, message, targetSimId]
    );

    // Mettre à jour le compteur de messages de la SIM
    await pool.query(
      'UPDATE sims SET messages_sent = messages_sent + 1 WHERE sim_id = ?',
      [targetSimId]
    );

    res.status(201).json({
      message_id: result.insertId,
      status: 'pending',
      sim_id: targetSimId
    });
  } catch (error) {
    console.error('Erreur lors de l\'envoi du SMS:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Envoyer des SMS en masse
router.post('/send-bulk', async (req, res) => {
  const { messages } = req.body;

  if (!Array.isArray(messages) || messages.length === 0) {
    return res.status(400).json({ error: 'Liste de messages invalide' });
  }

  try {
    const results = [];
    for (const msg of messages) {
      const { recipient, message, sim_id } = msg;
      
      if (!recipient || !message) {
        results.push({ recipient, status: 'failed', error: 'Données invalides' });
        continue;
      }

      // Même logique que pour l'envoi simple
      let targetSimId = sim_id;
      if (!targetSimId) {
        const [defaultSim] = await pool.query(`
          SELECT sim_id 
          FROM sims 
          WHERE status = 'active' 
          ORDER BY messages_sent ASC 
          LIMIT 1
        `);
        if (defaultSim.length === 0) {
          results.push({ recipient, status: 'failed', error: 'Aucune SIM disponible' });
          continue;
        }
        targetSimId = defaultSim[0].sim_id;
      }

      const [simInfo] = await pool.query(`
        SELECT daily_limit, messages_sent 
        FROM sims 
        WHERE sim_id = ? AND status = 'active'
      `, [targetSimId]);

      if (simInfo.length === 0 || simInfo[0].messages_sent >= simInfo[0].daily_limit) {
        results.push({ recipient, status: 'failed', error: 'SIM indisponible ou limite atteinte' });
        continue;
      }

      const [result] = await pool.query(
        `INSERT INTO sms_history (recipient, message, sim_id, status) 
         VALUES (?, ?, ?, 'pending')`,
        [recipient, message, targetSimId]
      );

      await pool.query(
        'UPDATE sims SET messages_sent = messages_sent + 1 WHERE sim_id = ?',
        [targetSimId]
      );

      results.push({
        recipient,
        message_id: result.insertId,
        status: 'pending',
        sim_id: targetSimId
      });
    }

    res.status(201).json({ results });
  } catch (error) {
    console.error('Erreur lors de l\'envoi en masse:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Obtenir l'historique des messages
router.get('/history', async (req, res) => {
  const { start_date, end_date, status, sim_id, recipient } = req.query;
  
  try {
    let query = `
      SELECT sh.*, s.phone_number as sim_number
      FROM sms_history sh
      LEFT JOIN sims s ON sh.sim_id = s.sim_id
      WHERE 1=1
    `;
    const params = [];

    if (start_date) {
      query += ' AND sh.sent_at >= ?';
      params.push(start_date);
    }
    if (end_date) {
      query += ' AND sh.sent_at <= ?';
      params.push(end_date);
    }
    if (status) {
      query += ' AND sh.status = ?';
      params.push(status);
    }
    if (sim_id) {
      query += ' AND sh.sim_id = ?';
      params.push(sim_id);
    }
    if (recipient) {
      query += ' AND sh.recipient LIKE ?';
      params.push(`%${recipient}%`);
    }

    query += ' ORDER BY sh.sent_at DESC LIMIT 100';

    const [messages] = await pool.query(query, params);
    res.json(messages);
  } catch (error) {
    console.error('Erreur lors de la récupération de l\'historique:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Mettre à jour le statut d'un message
router.put('/:id/status', async (req, res) => {
  const { status, failure_reason } = req.body;

  if (!status || !['sent', 'failed', 'pending'].includes(status)) {
    return res.status(400).json({ error: 'Statut invalide' });
  }

  try {
    const [result] = await pool.query(
      `UPDATE sms_history 
       SET status = ?, 
           failure_reason = ? 
       WHERE id = ?`,
      [status, failure_reason, req.params.id]
    );

    if (result.affectedRows === 0) {
      return res.status(404).json({ error: 'Message non trouvé' });
    }

    res.json({ message: 'Statut mis à jour avec succès' });
  } catch (error) {
    console.error('Erreur lors de la mise à jour du statut:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

module.exports = router; 
 
 