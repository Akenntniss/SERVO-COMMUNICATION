-- Script pour ajouter le système de tracking des délais entre messages
-- À exécuter sur la base de données sms_gateway

USE sms_gateway;

-- Table pour tracker la dernière activité d'envoi par SIM
CREATE TABLE IF NOT EXISTS sim_last_activity (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sim_id INT NOT NULL,
    last_sent_at TIMESTAMP NOT NULL,
    last_message_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    -- Index pour performance
    UNIQUE KEY unique_sim_activity (sim_id),
    INDEX idx_last_sent_at (last_sent_at),
    
    -- Contrainte de clé étrangère
    FOREIGN KEY (sim_id) REFERENCES sims(id) ON DELETE CASCADE
);

-- Ajouter des commentaires pour la documentation
ALTER TABLE sim_last_activity 
COMMENT = 'Table de tracking des derniers envois SMS par SIM pour gestion des délais';

-- Initialiser les données existantes si nécessaire
-- (Prendre le dernier message envoyé avec succès pour chaque SIM)
INSERT IGNORE INTO sim_last_activity (sim_id, last_sent_at, last_message_id)
SELECT 
    sim_id,
    MAX(sent_at) as last_sent_at,
    (SELECT id FROM sms_history sh2 
     WHERE sh2.sim_id = sh.sim_id 
     AND sh2.sent_at = MAX(sh.sent_at) 
     AND sh2.status = 'sent'
     LIMIT 1) as last_message_id
FROM sms_history sh
WHERE status = 'sent' 
AND sent_at IS NOT NULL
AND sim_id IS NOT NULL
GROUP BY sim_id;

-- Afficher un résumé des données initialisées
SELECT 
    COUNT(*) as total_sims_with_activity,
    MIN(last_sent_at) as oldest_activity,
    MAX(last_sent_at) as newest_activity
FROM sim_last_activity;

-- Afficher le détail par SIM
SELECT 
    s.id,
    s.carrier_name,
    s.phone_number,
    sla.last_sent_at,
    sla.last_message_id,
    TIMESTAMPDIFF(SECOND, sla.last_sent_at, NOW()) as seconds_since_last_send
FROM sims s
LEFT JOIN sim_last_activity sla ON s.id = sla.sim_id
WHERE s.is_active = 1
ORDER BY sla.last_sent_at DESC;

COMMIT;
