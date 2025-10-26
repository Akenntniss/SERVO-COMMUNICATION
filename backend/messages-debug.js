const express = require('express');
const router = express.Router();
const { pool } = require('../config/database');
const { updateRecipientCounter } = require('../utils/recipient-counter');
const SmartRetrySystem = require('../services/smart-retry-system');
const MessageDelayService = require('../services/message-delay-service');

// Instance du système de retry
const retrySystem = new SmartRetrySystem();

// Instance du service de délai entre messages (30 secondes)
const delayService = new MessageDelayService();

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
    
    // Sélectionner la SIM et le téléphone
    let selectedPhoneId = phone_id;
    let selectedSimId = sim_id;
    let selectedSimInfo = null;
    let usedDefaultSim = false;
    
    // Si une SIM spécifique est demandée, l'utiliser en priorité
    if (selectedSimId) {
      console.log(`🎯 SIM spécifique demandée: ${selectedSimId}`);
      
      // Vérifier que la SIM existe et est disponible (QUOTA DÉSACTIVÉ)
      const [requestedSim] = await pool.execute(`
        SELECT p.id, s.id as sim_id, s.slot_index, s.messages_sent_month, s.monthly_limit,
               s.carrier_name, s.phone_number, s.is_default, s.is_active
        FROM phones p
        JOIN sims s ON p.id = s.phone_id
        WHERE s.id = ? AND p.status = 'active' AND s.is_active = true
        LIMIT 1
      `, [selectedSimId]);
      
      if (requestedSim.length > 0) {
        selectedPhoneId = requestedSim[0].id;
        selectedSimId = requestedSim[0].sim_id;
        selectedSimInfo = requestedSim[0];
        usedDefaultSim = requestedSim[0].is_default;
        console.log(`✅ SIM ${selectedSimId} sélectionnée: ${selectedSimInfo.carrier_name}`);
      } else {
        // Vérifier pourquoi la SIM n'est pas disponible
        const [simCheck] = await pool.execute(`
          SELECT s.is_active, s.messages_sent_month, s.monthly_limit, s.carrier_name, s.phone_number, p.status
          FROM sims s
          LEFT JOIN phones p ON s.phone_id = p.id
          WHERE s.id = ?
          LIMIT 1
        `, [selectedSimId]);
        
        if (simCheck.length === 0) {
          return res.status(400).json({
            success: false,
            message: `SIM avec l'ID ${selectedSimId} non trouvée.`
          });
        }
        
        const sim = simCheck[0];
        if (!sim.is_active) {
          return res.status(503).json({
            success: false,
            message: `La SIM ${selectedSimId} (${sim.carrier_name} ${sim.phone_number}) est inactive.`
          });
        } else if (false) { // QUOTA DÉSACTIVÉ - Cette vérification est ignorée
          return res.status(503).json({
            success: false,
            message: `La SIM ${selectedSimId} (${sim.carrier_name} ${sim.phone_number}) a atteint son quota mensuel (${sim.monthly_limit} SMS).`
          });
        } else if (sim.status !== 'active') {
          return res.status(503).json({
            success: false,
            message: `Le téléphone associé à la SIM ${selectedSimId} n'est pas actif.`
          });
        }
      }
    }
    
    // Si aucune SIM spécifique ou si la SIM demandée n'est pas disponible, utiliser la logique par défaut
    if (!selectedPhoneId) {
      console.log('🔄 Sélection automatique de SIM...');
      
      // Prioriser la SIM par défaut (QUOTA DÉSACTIVÉ)
      const [defaultSim] = await pool.execute(`
        SELECT p.id, s.id as sim_id, s.slot_index, s.messages_sent_month, s.monthly_limit,
               s.carrier_name, s.phone_number, s.is_default
        FROM phones p
        JOIN sims s ON p.id = s.phone_id
        WHERE p.status = 'active' AND s.is_active = true AND s.is_default = true
        LIMIT 1
      `);
      
      if (defaultSim.length > 0) {
        // Utiliser la SIM par défaut si disponible
        selectedPhoneId = defaultSim[0].id;
        selectedSimId = defaultSim[0].sim_id;
        selectedSimInfo = defaultSim[0];
        usedDefaultSim = true;
        console.log(`✅ SIM par défaut sélectionnée: ${selectedSimInfo.carrier_name}`);
      } else {
        // Vérifier si la SIM par défaut existe mais n'est pas disponible
        const [defaultSimCheck] = await pool.execute(`
          SELECT s.is_active, s.messages_sent_month, s.monthly_limit, s.carrier_name, s.phone_number
          FROM sims s
          WHERE s.is_default = true
          LIMIT 1
        `);
        
        if (defaultSimCheck.length > 0) {
          const defaultSim = defaultSimCheck[0];
          if (!defaultSim.is_active) {
            return res.status(503).json({
              success: false,
              message: `La SIM par défaut (${defaultSim.carrier_name} ${defaultSim.phone_number}) est inactive. Veuillez l'activer.`
            });
          } else if (false) { // QUOTA DÉSACTIVÉ - Cette vérification est ignorée
            return res.status(503).json({
              success: false,
              message: `La SIM par défaut (${defaultSim.carrier_name} ${defaultSim.phone_number}) a atteint son quota mensuel (${defaultSim.monthly_limit} SMS).`
            });
          }
        }
        
        // Fallback: sélectionner n'importe quelle SIM active disponible (QUOTA DÉSACTIVÉ)
        const [activePhones] = await pool.execute(`
          SELECT p.id, s.id as sim_id, s.slot_index, s.messages_sent_month, s.monthly_limit,
                 s.carrier_name, s.phone_number, s.is_default
          FROM phones p
          JOIN sims s ON p.id = s.phone_id
          WHERE p.status = 'active' AND s.is_active = true
          ORDER BY s.messages_sent_month ASC, RAND()
          LIMIT 1
        `);
        
        if (activePhones.length === 0) {
          return res.status(503).json({
            success: false,
            message: 'Aucune SIM active disponible pour envoyer le SMS.'
          });
        }
        
        selectedPhoneId = activePhones[0].id;
        selectedSimId = activePhones[0].sim_id;
        selectedSimInfo = activePhones[0];
        usedDefaultSim = false;
        console.log(`✅ SIM alternative sélectionnée: ${selectedSimInfo.carrier_name}`);
      }
    }
    
    console.log(`📤 Envoi SMS via SIM ${selectedSimId} (${selectedSimInfo?.carrier_name})`);
    
    // 🔍 DEBUG: Vérifier si le message existe déjà avec cette SIM
    const [existingCheck] = await pool.query(`
      SELECT id, status, created_at FROM sms_history 
      WHERE message = ? AND sim_id = ? AND recipient = ?
      AND created_at > DATE_SUB(NOW(), INTERVAL 1 HOUR)
    `, [message, selectedSimId, recipient]);
    
    if (existingCheck.length > 0) {
      console.warn(`🚨 DOUBLON DÉTECTÉ: Message déjà existant avec SIM ${selectedSimId}`);
      console.warn(`🚨 Message existant ID: ${existingCheck[0].id}, statut: ${existingCheck[0].status}`);
      console.warn(`🚨 Création: ${existingCheck[0].created_at}`);
      console.warn(`🚨 TENTATIVE DE DOUBLON BLOQUÉE`);
      
      return res.status(409).json({
        success: false,
        message: 'Message déjà existant avec cette SIM',
        existing_message_id: existingCheck[0].id
      });
    }
    
    console.log(`✅ Aucun doublon détecté, création du message...`);
    
    // Insérer le message dans la queue
    const [result] = await pool.execute(`
      INSERT INTO sms_history (phone_id, sim_id, recipient, message, status, created_at)
      VALUES (?, ?, ?, ?, 'pending', NOW())
    `, [selectedPhoneId, selectedSimId, recipient, message]);
    
    const messageId = result.insertId;
    
    // Incrémenter le compteur de messages
    if (selectedSimId) {
      await pool.execute(`
        UPDATE sims SET messages_sent_month = messages_sent_month + 1
        WHERE id = ?
      `, [selectedSimId]);
      
      // Mettre à jour le compteur de destinataires uniques
      try {
        await updateRecipientCounter(selectedSimId, recipient);
      } catch (error) {
        console.error('Erreur lors de la mise à jour du compteur de destinataires:', error);
        // Ne pas faire échouer l'envoi pour cette erreur
      }
    }
    
    res.status(201).json({
      success: true,
      message: 'SMS ajouté à la queue d\'envoi',
      data: {
        message_id: messageId,
        phone_id: selectedPhoneId,
        sim_id: selectedSimId,
        status: 'pending',
        sim_info: selectedSimInfo ? {
          carrier_name: selectedSimInfo.carrier_name,
          phone_number: selectedSimInfo.phone_number,
          is_default: usedDefaultSim,
          messages_sent: selectedSimInfo.messages_sent_month + 1,
          monthly_limit: selectedSimInfo.monthly_limit
        } : null
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
        
        // Sélectionner un téléphone disponible (prioriser la SIM par défaut)
        let selectedPhone = null;
        
        if (!phone_id) {
          // Prioriser la SIM par défaut (QUOTA DÉSACTIVÉ)
          const [defaultSim] = await pool.execute(`
            SELECT p.id, s.id as sim_id, s.messages_sent_month, s.monthly_limit
            FROM phones p
            JOIN sims s ON p.id = s.phone_id
            WHERE p.status = 'active' AND s.is_active = true AND s.is_default = true
            LIMIT 1
          `);
          
          if (defaultSim.length > 0) {
            selectedPhone = defaultSim[0];
          }
        }
        
        if (!selectedPhone) {
          // Fallback: sélectionner n'importe quelle SIM active disponible (QUOTA DÉSACTIVÉ)
          const [activePhones] = await pool.execute(`
            SELECT p.id, s.id as sim_id, s.messages_sent_month, s.monthly_limit
            FROM phones p
            JOIN sims s ON p.id = s.phone_id
            WHERE p.status = 'active' AND s.is_active = true
            ${phone_id ? 'AND p.id = ?' : ''}
            ORDER BY s.messages_sent_month ASC, RAND()
            LIMIT 1
          `, phone_id ? [phone_id] : []);
          
          if (activePhones.length === 0) {
            errors.push({ recipient, error: 'Aucun téléphone disponible' });
            continue;
          }
          
          selectedPhone = activePhones[0];
        }
        
        // Insérer le message
        const [result] = await pool.execute(`
          INSERT INTO sms_history (phone_id, sim_id, recipient, message, status, created_at)
          VALUES (?, ?, ?, ?, 'pending', NOW())
        `, [selectedPhone.id, selectedPhone.sim_id, recipient, message]);
        
        // Incrémenter le compteur
        await pool.execute(`
          UPDATE sims SET messages_sent_month = messages_sent_month + 1
          WHERE id = ?
        `, [selectedPhone.sim_id]);
        
        // Mettre à jour le compteur de destinataires uniques
        try {
          await updateRecipientCounter(selectedPhone.sim_id, recipient);
        } catch (error) {
          console.error('Erreur lors de la mise à jour du compteur de destinataires:', error);
          // Ne pas faire échouer l'envoi pour cette erreur
        }
        
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

// Route supprimée - duplication avec la route ligne 434

// PUT /api/messages/:id/status - Mettre à jour le statut d'un message
router.put('/:id/status', async (req, res) => {
  try {
    const { id } = req.params;
    const { status, failure_reason, phone_id, sim_id } = req.body;
    
    if (!['sent', 'failed', 'delivered'].includes(status)) {
      return res.status(400).json({
        success: false,
        message: 'Statut invalide'
      });
    }
    
    console.log(`📝 Mise à jour statut message ${id}: ${status}${failure_reason ? ` (${failure_reason})` : ''}`);
    
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
    
    // Si le message a été envoyé avec succès, enregistrer le délai
    if (status === 'sent' && sim_id) {
      try {
        await delayService.recordSuccessfulSend(sim_id, id);
        console.log(`🕐 Délai de 30s enregistré pour SIM ${sim_id}, message ${id}`);
      } catch (error) {
        console.error(`❌ Erreur lors de l'enregistrement du délai pour SIM ${sim_id}:`, error);
        // Ne pas faire échouer la mise à jour du statut pour cette erreur
      }
    }
    
    // Si le message a échoué, déclencher le système de retry intelligent
    if (status === 'failed') {
      // Si pas de failure_reason spécifique, utiliser un code générique pour les problèmes opérateur
      const errorCode = failure_reason || 'OPERATOR_FAILURE';
      console.log(`🔄 Déclenchement du système de retry pour message ${id} avec code: ${errorCode}`);
      
      // Traitement asynchrone pour ne pas bloquer la réponse
      setImmediate(async () => {
        try {
          await retrySystem.handleFailedMessage(id, errorCode, phone_id, sim_id);
        } catch (error) {
          console.error(`❌ Erreur lors du traitement retry pour message ${id}:`, error);
        }
      });
    }
    
    res.json({
      success: true,
      message: 'Statut mis à jour',
      retry_triggered: status === 'failed' && failure_reason ? true : false
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
      LIMIT ${limit} OFFSET ${offset}
    `);
    
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

// GET /api/messages/test - Route de test
router.get('/test', async (req, res) => {
  res.json({
    success: true,
    message: 'Route de test fonctionnelle'
  });
});

// GET /api/messages/pending-simple/:phone_id - Route simple pour tester
router.get('/pending-simple/:phone_id', async (req, res) => {
  try {
    const { phone_id } = req.params;
    console.log('🔍 Test simple pour phone_id:', phone_id);
    
    res.json({
      success: true,
      data: [],
      phone_id: phone_id
    });
    
  } catch (error) {
    console.error('❌ Erreur test simple:', error);
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
    
    console.log('🔍 Récupération des messages en attente pour phone_id:', phone_id);
    console.log('📊 Limite:', limit);
    
    const [messages] = await pool.execute(
      `SELECT 
        h.id, 
        h.phone_id,
        h.recipient, 
        h.message as content, 
        h.sim_id, 
        h.created_at, 
        h.status,
        h.retry_count,
        COALESCE(s.subscription_id, 0) as subscription_id,
        COALESCE(s.slot_index, 0) as slot_index,
        COALESCE(s.carrier_name, 'SIM inconnue') as carrier_name,
        s.phone_number,
        s.is_active
      FROM sms_history h
      LEFT JOIN sims s ON h.sim_id = s.id
      WHERE h.phone_id = ? AND h.status = ? 
      ORDER BY h.created_at ASC 
      LIMIT ${limit}`,
      [phone_id, 'pending']
    );
    
    console.log('📨 Messages trouvés avant filtrage délai:', messages.length);
    
    // Appliquer le filtrage avec délai de 30 secondes
    const authorizedMessages = await delayService.filterMessagesWithDelay(messages);
    
    console.log(`🕐 Filtrage délai appliqué: ${messages.length} -> ${authorizedMessages.length} messages autorisés`);
    
    // Debug: Afficher les détails de chaque message autorisé
    authorizedMessages.forEach(msg => {
      const delayInfo = msg.delay_info ? ` (${msg.delay_info.reason})` : '';
      console.log(`📋 Message ${msg.id}: sim_id=${msg.sim_id}, slot_index=${msg.slot_index}, subscription_id=${msg.subscription_id}, carrier=${msg.carrier_name}${delayInfo}`);
    });
    
    res.json({
      success: true,
      data: authorizedMessages
    });
    
  } catch (error) {
    console.error('❌ Erreur lors de la récupération des messages en attente:', error);
    console.error('❌ Détails de l\'erreur:', error.message);
    res.status(500).json({
      success: false,
      message: 'Erreur serveur',
      error: error.message
    });
  }
});

// GET /api/messages/delay-stats - Statistiques des délais entre messages
router.get('/delay-stats', async (req, res) => {
  try {
    console.log('📊 Récupération des statistiques de délai...');
    
    const delayStats = await delayService.getDelayStats();
    
    res.json({
      success: true,
      message: 'Statistiques de délai récupérées',
      data: {
        delay_seconds: 30,
        ...delayStats
      }
    });
    
  } catch (error) {
    console.error('❌ Erreur lors de la récupération des stats de délai:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur lors de la récupération des statistiques de délai',
      error: error.message
    });
  }
});

// ROUTE DE TEST - Forcer l'échec d'un message pour tester la désactivation
router.post('/test-failure/:messageId', async (req, res) => {
  try {
    const { messageId } = req.params;
    const { simId } = req.body;
    
    console.log(`🧪 TEST: Forcer l'échec du message ${messageId} avec SIM ${simId}`);
    
    // Déclencher directement le système de retry
    const result = await retrySystem.handleFailedMessage(messageId, 'TEST_FAILURE', null, simId);
    
    res.json({
      success: true,
      message: 'Test d\'échec déclenché',
      result: result
    });
    
  } catch (error) {
    console.error('❌ Erreur lors du test d\'échec:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur lors du test'
    });
  }
});

// ROUTE DE TEST - Forcer la désactivation d'une SIM
router.post('/test-deactivate-sim/:simId', async (req, res) => {
  try {
    const { simId } = req.params;
    
    console.log(`🧪 TEST: Forcer la désactivation de la SIM ${simId}`);
    
    // Désactiver directement la SIM
    await pool.execute(
      'UPDATE sims SET is_active = 0, is_default = 0 WHERE id = ?',
      [simId]
    );
    
    console.log(`❌ SIM ${simId} désactivée par test manuel`);
    
    res.json({
      success: true,
      message: `SIM ${simId} désactivée avec succès`
    });
    
  } catch (error) {
    console.error('❌ Erreur lors de la désactivation test:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur lors de la désactivation'
    });
  }
});

// ROUTE DE TEST - Vérifier et forcer les timeouts
router.post('/test-check-timeouts', async (req, res) => {
  try {
    console.log(`🧪 TEST: Vérification manuelle des timeouts`);
    
    // Récupérer les messages en pending depuis plus de 1 minute (au lieu de 3 pour le test)
    const [timeoutMessages] = await pool.query(`
      SELECT id, phone_id, sim_id, recipient, created_at, retry_count
      FROM sms_history 
      WHERE status = 'pending' 
      AND created_at < DATE_SUB(NOW(), INTERVAL 1 MINUTE)
    `);
    
    console.log(`🕐 ${timeoutMessages.length} messages en timeout détectés`);
    
    let processedCount = 0;
    for (const message of timeoutMessages) {
      console.log(`⏰ Traitement timeout pour message ${message.id}`);
      try {
        await retrySystem.handleFailedMessage(message.id, 'MANUAL_TIMEOUT', message.phone_id, message.sim_id);
        processedCount++;
      } catch (error) {
        console.error(`❌ Erreur traitement message ${message.id}:`, error);
      }
    }
    
    res.json({
      success: true,
      message: `${processedCount} messages en timeout traités`,
      timeoutMessages: timeoutMessages.length
    });
    
  } catch (error) {
    console.error('❌ Erreur lors de la vérification des timeouts:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur lors de la vérification'
    });
  }
});

// ROUTE DE TEST - Vérifier spécifiquement les messages de retry
router.post('/test-check-retry-timeouts', async (req, res) => {
  try {
    console.log(`🧪 TEST: Vérification manuelle des retry timeouts`);
    
    // Récupérer les messages de retry en pending depuis plus de 30 secondes
    const [retryMessages] = await pool.query(`
      SELECT id, phone_id, sim_id, recipient, created_at, retry_count
      FROM sms_history 
      WHERE status = 'pending' 
      AND retry_count > 0
      AND created_at < DATE_SUB(NOW(), INTERVAL 30 SECOND)
    `);
    
    console.log(`🔄 ${retryMessages.length} messages de retry en timeout détectés`);
    
    let processedCount = 0;
    for (const message of retryMessages) {
      console.log(`⏰ Traitement retry timeout pour message ${message.id} (retry #${message.retry_count})`);
      try {
        await retrySystem.handleFailedMessage(message.id, 'MANUAL_RETRY_TIMEOUT', message.phone_id, message.sim_id);
        processedCount++;
      } catch (error) {
        console.error(`❌ Erreur traitement retry message ${message.id}:`, error);
      }
    }
    
    res.json({
      success: true,
      message: `${processedCount} messages de retry en timeout traités`,
      retryMessages: retryMessages.length
    });
    
  } catch (error) {
    console.error('❌ Erreur lors de la vérification des retry timeouts:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur lors de la vérification'
    });
  }
});

// ROUTE DE TEST - Forcer la vérification des SIMs défaillantes
router.post('/force-check-failed-sims', async (req, res) => {
  try {
    console.log(`🧪 FORCE: Vérification immédiate des SIMs défaillantes`);
    
    // Importer le système de retry
    const SmartRetrySystem = require('../services/smart-retry-system');
    const forceRetrySystem = new SmartRetrySystem();
    
    // Forcer la vérification des messages failed
    await forceRetrySystem.checkFailedMessagesForSimDeactivation();
    
    res.json({
      success: true,
      message: 'Vérification des SIMs défaillantes forcée avec succès'
    });
    
  } catch (error) {
    console.error('❌ Erreur lors de la vérification forcée:', error);
    res.status(500).json({
      success: false,
      message: 'Erreur lors de la vérification forcée'
    });
  }
});

module.exports = router; 
 
 