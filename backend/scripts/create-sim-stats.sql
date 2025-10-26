-- Création de la table sim_stats pour suivre les performances des SIMs
-- Cette table permet au système de retry de prendre des décisions intelligentes

CREATE TABLE IF NOT EXISTS sim_stats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sim_id INT NOT NULL,
    success_rate DECIMAL(5,2) DEFAULT 95.00 COMMENT 'Taux de succès en pourcentage',
    avg_response_time INT DEFAULT 5000 COMMENT 'Temps de réponse moyen en millisecondes',
    total_sent INT DEFAULT 0 COMMENT 'Total des messages envoyés',
    total_failed INT DEFAULT 0 COMMENT 'Total des messages échoués',
    last_failure_time TIMESTAMP NULL COMMENT 'Dernière fois qu\'un message a échoué',
    consecutive_failures INT DEFAULT 0 COMMENT 'Nombre d\'échecs consécutifs',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    FOREIGN KEY (sim_id) REFERENCES sims(id) ON DELETE CASCADE,
    UNIQUE KEY unique_sim_stats (sim_id),
    INDEX idx_success_rate (success_rate),
    INDEX idx_avg_response_time (avg_response_time),
    INDEX idx_consecutive_failures (consecutive_failures)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Initialiser les statistiques pour les SIMs existantes
INSERT IGNORE INTO sim_stats (sim_id, success_rate, avg_response_time, total_sent, total_failed)
SELECT 
    s.id as sim_id,
    COALESCE(
        CASE 
            WHEN COUNT(h.id) > 0 THEN 
                ROUND((COUNT(CASE WHEN h.status = 'sent' THEN 1 END) * 100.0) / COUNT(h.id), 2)
            ELSE 95.00 
        END, 
        95.00
    ) as success_rate,
    5000 as avg_response_time,
    COUNT(CASE WHEN h.status = 'sent' THEN 1 END) as total_sent,
    COUNT(CASE WHEN h.status = 'failed' THEN 1 END) as total_failed
FROM sims s
LEFT JOIN sms_history h ON s.id = h.sim_id
GROUP BY s.id;

-- Créer une procédure stockée pour mettre à jour les statistiques
DELIMITER //

CREATE PROCEDURE IF NOT EXISTS UpdateSimStats(IN p_sim_id INT, IN p_status VARCHAR(20))
BEGIN
    DECLARE v_success_rate DECIMAL(5,2);
    DECLARE v_total_sent INT;
    DECLARE v_total_failed INT;
    DECLARE v_consecutive_failures INT;
    
    -- Calculer les nouvelles statistiques
    SELECT 
        COUNT(CASE WHEN status = 'sent' THEN 1 END) as sent_count,
        COUNT(CASE WHEN status = 'failed' THEN 1 END) as failed_count,
        CASE 
            WHEN COUNT(*) > 0 THEN 
                ROUND((COUNT(CASE WHEN status = 'sent' THEN 1 END) * 100.0) / COUNT(*), 2)
            ELSE 95.00 
        END as success_rate
    INTO v_total_sent, v_total_failed, v_success_rate
    FROM sms_history 
    WHERE sim_id = p_sim_id 
    AND created_at >= DATE_SUB(NOW(), INTERVAL 30 DAY);
    
    -- Calculer les échecs consécutifs
    SELECT COUNT(*) INTO v_consecutive_failures
    FROM (
        SELECT status
        FROM sms_history 
        WHERE sim_id = p_sim_id 
        ORDER BY created_at DESC 
        LIMIT 10
    ) recent_messages
    WHERE status = 'failed';
    
    -- Mettre à jour ou insérer les statistiques
    INSERT INTO sim_stats (
        sim_id, success_rate, total_sent, total_failed, 
        consecutive_failures, last_failure_time, updated_at
    ) VALUES (
        p_sim_id, v_success_rate, v_total_sent, v_total_failed,
        v_consecutive_failures, 
        CASE WHEN p_status = 'failed' THEN NOW() ELSE NULL END,
        NOW()
    ) ON DUPLICATE KEY UPDATE
        success_rate = v_success_rate,
        total_sent = v_total_sent,
        total_failed = v_total_failed,
        consecutive_failures = v_consecutive_failures,
        last_failure_time = CASE WHEN p_status = 'failed' THEN NOW() ELSE last_failure_time END,
        updated_at = NOW();
        
END //

DELIMITER ;

-- Créer un trigger pour mettre à jour automatiquement les statistiques
DROP TRIGGER IF EXISTS update_sim_stats_trigger;

DELIMITER //

CREATE TRIGGER update_sim_stats_trigger
    AFTER UPDATE ON sms_history
    FOR EACH ROW
BEGIN
    IF NEW.status != OLD.status AND NEW.status IN ('sent', 'failed') THEN
        CALL UpdateSimStats(NEW.sim_id, NEW.status);
    END IF;
END //

DELIMITER ;

-- Afficher le résultat
SELECT 'Table sim_stats et triggers créés avec succès' as result;

-- Vérifier la structure de la table
DESCRIBE sim_stats;
