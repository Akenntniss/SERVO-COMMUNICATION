const express = require('express');
const router = express.Router();
const { pool } = require('../config/database');

// Obtenir la liste des téléphones
router.get('/', async (req, res) => {
  try {
    const [phones] = await pool.query(`
      SELECT p.*, 
        COUNT(s.sim_id) as sim_count,
        GROUP_CONCAT(s.phone_number) as sim_numbers
      FROM phones p
      LEFT JOIN sims s ON p.tel_id = s.device_id
      GROUP BY p.id
    `);
    res.json(phones);
  } catch (error) {
    console.error('Erreur lors de la récupération des téléphones:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Obtenir les détails d'un téléphone spécifique
router.get('/:id', async (req, res) => {
  try {
    const [phones] = await pool.query(`
      SELECT p.*, 
        COUNT(s.sim_id) as sim_count,
        GROUP_CONCAT(s.phone_number) as sim_numbers
      FROM phones p
      LEFT JOIN sims s ON p.tel_id = s.device_id
      WHERE p.tel_id = ?
      GROUP BY p.id
    `, [req.params.id]);

    if (phones.length === 0) {
      return res.status(404).json({ error: 'Téléphone non trouvé' });
    }

    res.json(phones[0]);
  } catch (error) {
    console.error('Erreur lors de la récupération du téléphone:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Enregistrer un nouveau téléphone
router.post('/register', async (req, res) => {
  const { tel_id, model } = req.body;

  if (!tel_id || !model) {
    return res.status(400).json({ error: 'tel_id et model sont requis' });
  }

  try {
    const [result] = await pool.query(
      'INSERT INTO phones (tel_id, model, status) VALUES (?, ?, "online")',
      [tel_id, model]
    );
    res.status(201).json({ id: result.insertId, tel_id, model, status: 'online' });
  } catch (error) {
    if (error.code === 'ER_DUP_ENTRY') {
      return res.status(409).json({ error: 'Ce téléphone est déjà enregistré' });
    }
    console.error('Erreur lors de l\'enregistrement du téléphone:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Mettre à jour le statut d'un téléphone (heartbeat)
router.put('/:id/heartbeat', async (req, res) => {
  try {
    const [result] = await pool.query(
      'UPDATE phones SET status = "online", last_seen = CURRENT_TIMESTAMP WHERE tel_id = ?',
      [req.params.id]
    );

    if (result.affectedRows === 0) {
      return res.status(404).json({ error: 'Téléphone non trouvé' });
    }

    res.json({ message: 'Heartbeat reçu' });
  } catch (error) {
    console.error('Erreur lors de la mise à jour du statut:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Supprimer un téléphone
router.delete('/:id', async (req, res) => {
  try {
    const [result] = await pool.query(
      'DELETE FROM phones WHERE tel_id = ?',
      [req.params.id]
    );

    if (result.affectedRows === 0) {
      return res.status(404).json({ error: 'Téléphone non trouvé' });
    }

    res.json({ message: 'Téléphone supprimé avec succès' });
  } catch (error) {
    console.error('Erreur lors de la suppression du téléphone:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

module.exports = router; 
const router = express.Router();
const { pool } = require('../config/database');

// Obtenir la liste des téléphones
router.get('/', async (req, res) => {
  try {
    const [phones] = await pool.query(`
      SELECT p.*, 
        COUNT(s.sim_id) as sim_count,
        GROUP_CONCAT(s.phone_number) as sim_numbers
      FROM phones p
      LEFT JOIN sims s ON p.tel_id = s.device_id
      GROUP BY p.id
    `);
    res.json(phones);
  } catch (error) {
    console.error('Erreur lors de la récupération des téléphones:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Obtenir les détails d'un téléphone spécifique
router.get('/:id', async (req, res) => {
  try {
    const [phones] = await pool.query(`
      SELECT p.*, 
        COUNT(s.sim_id) as sim_count,
        GROUP_CONCAT(s.phone_number) as sim_numbers
      FROM phones p
      LEFT JOIN sims s ON p.tel_id = s.device_id
      WHERE p.tel_id = ?
      GROUP BY p.id
    `, [req.params.id]);

    if (phones.length === 0) {
      return res.status(404).json({ error: 'Téléphone non trouvé' });
    }

    res.json(phones[0]);
  } catch (error) {
    console.error('Erreur lors de la récupération du téléphone:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Enregistrer un nouveau téléphone
router.post('/register', async (req, res) => {
  const { tel_id, model } = req.body;

  if (!tel_id || !model) {
    return res.status(400).json({ error: 'tel_id et model sont requis' });
  }

  try {
    const [result] = await pool.query(
      'INSERT INTO phones (tel_id, model, status) VALUES (?, ?, "online")',
      [tel_id, model]
    );
    res.status(201).json({ id: result.insertId, tel_id, model, status: 'online' });
  } catch (error) {
    if (error.code === 'ER_DUP_ENTRY') {
      return res.status(409).json({ error: 'Ce téléphone est déjà enregistré' });
    }
    console.error('Erreur lors de l\'enregistrement du téléphone:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Mettre à jour le statut d'un téléphone (heartbeat)
router.put('/:id/heartbeat', async (req, res) => {
  try {
    const [result] = await pool.query(
      'UPDATE phones SET status = "online", last_seen = CURRENT_TIMESTAMP WHERE tel_id = ?',
      [req.params.id]
    );

    if (result.affectedRows === 0) {
      return res.status(404).json({ error: 'Téléphone non trouvé' });
    }

    res.json({ message: 'Heartbeat reçu' });
  } catch (error) {
    console.error('Erreur lors de la mise à jour du statut:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

// Supprimer un téléphone
router.delete('/:id', async (req, res) => {
  try {
    const [result] = await pool.query(
      'DELETE FROM phones WHERE tel_id = ?',
      [req.params.id]
    );

    if (result.affectedRows === 0) {
      return res.status(404).json({ error: 'Téléphone non trouvé' });
    }

    res.json({ message: 'Téléphone supprimé avec succès' });
  } catch (error) {
    console.error('Erreur lors de la suppression du téléphone:', error);
    res.status(500).json({ error: 'Erreur serveur' });
  }
});

module.exports = router; 
 
 