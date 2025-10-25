-- Table des téléphones
CREATE TABLE IF NOT EXISTS phones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    uuid VARCHAR(100) NOT NULL UNIQUE,
    model VARCHAR(100) NOT NULL,
    status ENUM('online', 'offline') DEFAULT 'offline',
    last_heartbeat TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Table des SIMs
CREATE TABLE IF NOT EXISTS sims (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phone_id INT NOT NULL,
    sim_slot INT NOT NULL,
    number VARCHAR(20) NOT NULL,
    iccid VARCHAR(30),
    operator VARCHAR(50),
    daily_limit INT DEFAULT 100,
    recipient_limit INT DEFAULT 50,
    sms_sent INT DEFAULT 0,
    recipients_today INT DEFAULT 0,
    active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (phone_id) REFERENCES phones(id) ON DELETE CASCADE,
    UNIQUE KEY (phone_id, sim_slot)
);

-- Table des messages
CREATE TABLE IF NOT EXISTS messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sim_id INT,
    sender_id INT NOT NULL,
    recipient_number VARCHAR(20) NOT NULL,
    message TEXT NOT NULL,
    status ENUM('pending', 'sent', 'failed') DEFAULT 'pending',
    failure_reason TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    sent_at TIMESTAMP NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (sim_id) REFERENCES sims(id) ON DELETE SET NULL
);

-- Table des logs
CREATE TABLE IF NOT EXISTS logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    level ENUM('info', 'warning', 'error') DEFAULT 'info',
    category VARCHAR(50),
    message TEXT NOT NULL,
    data JSON,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table des utilisateurs
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE,
    api_key VARCHAR(100) UNIQUE,
    role ENUM('admin', 'user') DEFAULT 'user',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Table des destinataires quotidiens
CREATE TABLE IF NOT EXISTS daily_recipients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sim_id INT NOT NULL,
    recipient_number VARCHAR(20) NOT NULL,
    date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sim_id) REFERENCES sims(id) ON DELETE CASCADE,
    UNIQUE KEY (sim_id, recipient_number, date)
);

-- Table de configuration système
CREATE TABLE IF NOT EXISTS system_config (
    id INT AUTO_INCREMENT PRIMARY KEY,
    config_key VARCHAR(50) NOT NULL UNIQUE,
    config_value TEXT,
    description TEXT,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Table d'historique de basculement
CREATE TABLE IF NOT EXISTS failover_history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    from_sim_id INT,
    to_sim_id INT,
    reason VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (from_sim_id) REFERENCES sims(id) ON DELETE SET NULL,
    FOREIGN KEY (to_sim_id) REFERENCES sims(id) ON DELETE SET NULL
);

-- Insertion de la configuration par défaut
INSERT INTO system_config (config_key, config_value, description) VALUES
('default_sim_id', NULL, 'ID de la SIM par défaut pour l\'envoi de SMS'),
('api_rate_limit', '100', 'Nombre maximum de requêtes API par minute'),
('auto_switch_enabled', 'true', 'Activer/désactiver le switch automatique de SIM'),
('notifications_enabled', 'true', 'Activer/désactiver les notifications')
ON DUPLICATE KEY UPDATE config_value = VALUES(config_value);

-- Création de l'utilisateur admin par défaut (mot de passe: admin123)
INSERT INTO users (username, password, email, api_key, role) VALUES
('admin', '$2b$10$GQT0onaZqx5W7gVaDLCkbe2EP/yGHUUDmUSlDkO2kf3/QZ/KLKCFi', 'admin@smsgateway.com', 'SG_API_9f8d2c1b3a4e5f6d7c8b9a1c2d3e4f5g6h7i8j9k0l', 'admin')
ON DUPLICATE KEY UPDATE password = VALUES(password);

-- Procédure stockée pour réinitialiser les compteurs quotidiens
DELIMITER //
CREATE PROCEDURE IF NOT EXISTS reset_daily_counters()
BEGIN
    UPDATE sims SET sms_sent = 0, recipients_today = 0;
    DELETE FROM daily_recipients WHERE date < CURDATE();
END //
DELIMITER ; 