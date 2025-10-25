const express = require('express');
const router = express.Router();
const { pool } = require('../config/database');

// POST /api/messages/send - Envoyer un SMS
router.post('/send', async (req, res) => {
  try {
    const { recipient, message, phone_id, sim_id } = req.body;
    
    // Validation des données
    if (!recipient || !message) {
      return res.status(400).json({
        success: false,
        message: 'Destinataire et message sont requis'
      });
    }
    
    // Vérifier le format du numéro
    const phoneRegex = /^[\+]?[1-9][\d]{0,15}$/;
    if (!phoneRegex.test(recipient.replace(/\s/g, ''))) {
      return res.status(400).json({
        success: false,
        message: 'Format de numéro invalide'
      });
    }
    
    // Sélectionner un téléphone actif si non spécifié
    let selectedPhoneId = phone_id;
    let selectedSimId = sim_id;
    
    if (!selectedPhoneId) {
      const [activePhones] = await pool.execute(`
        SELECT p.id, s.id as sim_id, s.slot_index, s.messages_sent_today, s.daily_limit
        FROM phones p
        JOIN sims s ON p.id = s.phone_id
        WHERE p.status = 'active' AND s.is_active = true
        AND s.messages_sent_today < s.daily_limit
        ORDER BY s.messages_sent_today ASC, RAND()
        LIMIT 1
      `);
      
      if (activePhones.length === 0) {
        return res.status(503).json({
          success: false,
          message: 'Aucun téléphone disponible pour envoyer le SMS'
        });
      }
      
      selectedPhoneId = activePhones[0].id;
      selectedSimId = activePhones[0].sim_id;
    }
    
    // Insérer le message dans la queue
    const [result] = await pool.execute(`
      INSERT INTO sms_history (phone_id, sim_id, recipient, message, status, created_at)
      VALUES (?, ?, ?, ?, 'pending', NOW())
    `, [selectedPhoneId, selectedSimId, recipient, message]);
    
    const messageId = result.insertId;
    
    // Incrémenter le compteur de messages
    if (selectedSimId) {
      await pool.execute(`
        UPDATE sims SET messages_sent_today = messages_sent_today + 1
        WHERE id = ?
      `, [selectedSimId]);
    }
    
    res.status(201).json({
      success: true,
      message: 'SMS ajouté à la queue d\'envoi',
      data: {
        message_id: messageId,
        phone_id: selectedPhoneId,
        sim_id: selectedSimId,
        status: 'pending'
      }
    });
    
  } catch (error) {
    console.error('Erreur lors de l\'envoi du SMS:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

// POST /api/messages/bulk - Envoi en masse
router.post('/bulk', async (req, res) => {
  try {
    const { recipients, message, phone_id } = req.body;
    
    if (!recipients || !Array.isArray(recipients) || recipients.length === 0) {
      return res.status(400).json({
        success: false,
        message: 'Liste de destinataires requise'
      });
    }
    
    if (!message) {
      return res.status(400).json({
        success: false,
        message: 'Message requis'
      });
    }
    
    if (recipients.length > 1000) {
      return res.status(400).json({
        success: false,
        message: 'Maximum 1000 destinataires par envoi'
      });
    }
    
    const results = [];
    const errors = [];
    
    // Traiter chaque destinataire
    for (const recipient of recipients) {
      try {
        // Validation du numéro
        const phoneRegex = /^[\+]?[1-9][\d]{0,15}$/;
        if (!phoneRegex.test(recipient.replace(/\s/g, ''))) {
          errors.push({ recipient, error: 'Format invalide' });
          continue;
        }
        
        // Sélectionner un téléphone disponible
        const [activePhones] = await pool.execute(`
          SELECT p.id, s.id as sim_id, s.messages_sent_today, s.daily_limit
          FROM phones p
          JOIN sims s ON p.id = s.phone_id
          WHERE p.status = 'active' AND s.is_active = true
          AND s.messages_sent_today < s.daily_limit
          ${phone_id ? 'AND p.id = ?' : ''}
          ORDER BY s.messages_sent_today ASC, RAND()
          LIMIT 1
        `, phone_id ? [phone_id] : []);
        
        if (activePhones.length === 0) {
          errors.push({ recipient, error: 'Aucun téléphone disponible' });
          continue;
        }
        
        const selectedPhone = activePhones[0];
        
        // Insérer le message
        const [result] = await pool.execute(`
          INSERT INTO sms_history (phone_id, sim_id, recipient, message, status, created_at)
          VALUES (?, ?, ?, ?, 'pending', NOW())
        `, [selectedPhone.id, selectedPhone.sim_id, recipient, message]);
        
        // Incrémenter le compteur
        await pool.execute(`
          UPDATE sims SET messages_sent_today = messages_sent_today + 1
          WHERE id = ?
        `, [selectedPhone.sim_id]);
        
        results.push({
          recipient,
          message_id: result.insertId,
          phone_id: selectedPhone.id,
          status: 'pending'
        });
        
      } catch (error) {
        errors.push({ recipient, error: error.message });
      }
    }
    
    res.status(201).json({
      success: true,
      message: `${results.length} SMS ajoutés à la queue`,
      data: {
        sent: results.length,
        errors: errors.length,
        results: results,
        errors: errors
      }
    });
    
  } catch (error) {
    console.error('Erreur lors de l\'envoi en masse:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

// GET /api/messages/pending/:phone_id - Messages en attente pour un téléphone
router.get('/pending/:phone_id', async (req, res) => {
  try {
    const { phone_id } = req.params;
    const limit = parseInt(req.query.limit) || 10;
    
    const [messages] = await pool.execute(`
      SELECT id, recipient, message, sim_id, created_at
      FROM sms_history
      WHERE phone_id = ? AND status = 'pending'
      ORDER BY created_at ASC
      LIMIT ?
    `, [phone_id, limit]);
    
    res.json({
      success: true,
      data: messages
    });
    
  } catch (error) {
    console.error('Erreur lors de la récupération des messages:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

// PUT /api/messages/:id/status - Mettre à jour le statut d'un message
router.put('/:id/status', async (req, res) => {
  try {
    const { id } = req.params;
    const { status, failure_reason } = req.body;
    
    if (!['sent', 'failed', 'delivered'].includes(status)) {
      return res.status(400).json({
        success: false,
        message: 'Statut invalide'
      });
    }
    
    const updateFields = ['status = ?'];
    const updateValues = [status];
    
    if (status === 'sent') {
      updateFields.push('sent_at = NOW()');
    } else if (status === 'delivered') {
      updateFields.push('delivered_at = NOW()');
    } else if (status === 'failed' && failure_reason) {
      updateFields.push('failure_reason = ?');
      updateValues.push(failure_reason);
    }
    
    updateValues.push(id);
    
    await pool.execute(`
      UPDATE sms_history 
      SET ${updateFields.join(', ')}, updated_at = NOW()
      WHERE id = ?
    `, updateValues);
    
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

// GET /api/messages/history - Historique des messages
router.get('/history', async (req, res) => {
  try {
    const page = parseInt(req.query.page) || 1;
    const limit = parseInt(req.query.limit) || 50;
    const offset = (page - 1) * limit;
    
    // Compter le total des messages
    const [countResult] = await pool.execute(`
      SELECT COUNT(*) as total FROM sms_history
    `);
    const total = countResult[0].total;
    
    // Récupérer les messages avec pagination
    const [messages] = await pool.execute(`
      SELECT h.*, p.model as phone_model, s.slot_index
      FROM sms_history h
      LEFT JOIN phones p ON h.phone_id = p.id
      LEFT JOIN sims s ON h.sim_id = s.id
      ORDER BY h.created_at DESC
      LIMIT ? OFFSET ?
    `, [limit, offset]);
    
    res.json({
      success: true,
      data: messages,
      pagination: {
        page: page,
        limit: limit,
        total: total,
        pages: Math.ceil(total / limit)
      }
    });
    
  } catch (error) {
    console.error('Erreur lors de la récupération de l\'historique:', error);
    // Retourner des données vides au lieu d'une erreur
    res.json({
      success: true,
      data: [],
      pagination: {
        page: 1,
        limit: 50,
        total: 0,
        pages: 0
      }
    });
  }
});

// GET /api/messages/stats - Statistiques des messages
router.get('/stats', async (req, res) => {
  try {
    const [todayStats] = await pool.execute(`
      SELECT 
        COUNT(*) as total,
        COUNT(CASE WHEN status = 'sent' THEN 1 END) as sent,
        COUNT(CASE WHEN status = 'failed' THEN 1 END) as failed,
        COUNT(CASE WHEN status = 'pending' THEN 1 END) as pending,
        COUNT(CASE WHEN status = 'delivered' THEN 1 END) as delivered
      FROM sms_history 
      WHERE DATE(created_at) = CURDATE()
    `);
    
    const [weeklyStats] = await pool.execute(`
      SELECT 
        DATE(created_at) as date,
        COUNT(*) as total,
        COUNT(CASE WHEN status = 'sent' THEN 1 END) as sent,
        COUNT(CASE WHEN status = 'failed' THEN 1 END) as failed
      FROM sms_history 
      WHERE created_at >= DATE_SUB(CURDATE(), INTERVAL 7 DAY)
      GROUP BY DATE(created_at)
      ORDER BY date DESC
    `);
    
    res.json({
      success: true,
      data: {
        today: todayStats[0],
        weekly: weeklyStats
      }
    });
    
  } catch (error) {
    console.error('Erreur lors de la récupération des statistiques:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

// GET /api/messages/pending/:phone_id - Récupérer les messages en attente pour un téléphone
router.get('/pending/:phone_id', async (req, res) => {
  try {
    const { phone_id } = req.params;
    const limit = parseInt(req.query.limit) || 10;
    
    const [messages] = await pool.execute(`
      SELECT id, recipient, message, sim_id, created_at, status
      FROM sms_history 
      WHERE phone_id = ? AND status = 'pending'
      ORDER BY created_at ASC
      LIMIT ?
    `, [phone_id, limit]);
    
    res.json({
      success: true,
      data: messages
    });
    
  } catch (error) {
    console.error('Erreur lors de la récupération des messages en attente:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur'
    });
  }
});

// PUT /api/messages/:id/status - Mettre à jour le statut d'un message
router.put('/:id/status', async (req, res) => {
  try {
    const { id } = req.params;
    const { status, failure_reason } = req.body;
    
    if (!['pending', 'sent', 'delivered', 'failed'].includes(status)) {
      return res.status(400).json({
        success: false,
        message: 'Statut invalide'
      });
    }
    
    const updateFields = ['status = ?', 'updated_at = NOW()'];
    const updateValues = [status];
    
    if (failure_reason) {
      updateFields.push('failure_reason = ?');
      updateValues.push(failure_reason);
    }
    
    if (status === 'sent') {
      updateFields.push('sent_at = NOW()');
    } else if (status === 'delivered') {
      updateFields.push('delivered_at = NOW()');
    }
    
    updateValues.push(id);
    
    await pool.execute(
      `UPDATE sms_history SET ${updateFields.join(', ')} WHERE id = ?`,
      updateValues
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

module.exports = router; 
 
 