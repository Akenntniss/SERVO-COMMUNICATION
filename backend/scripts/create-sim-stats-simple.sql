-- Création simple de la table sim_stats
CREATE TABLE IF NOT EXISTS sim_stats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sim_id INT NOT NULL,
    success_rate DECIMAL(5,2) DEFAULT 95.00,
    avg_response_time INT DEFAULT 5000,
    total_sent INT DEFAULT 0,
    total_failed INT DEFAULT 0,
    last_failure_time TIMESTAMP NULL,
    consecutive_failures INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    FOREIGN KEY (sim_id) REFERENCES sims(id) ON DELETE CASCADE,
    UNIQUE KEY unique_sim_stats (sim_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
