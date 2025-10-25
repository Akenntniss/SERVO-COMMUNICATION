# 🚀 Guide de Déploiement - SMS Gateway

Ce guide vous accompagne pour déployer le système SMS Gateway en production.

## 📋 Prérequis de Production

### Serveur
- **OS** : Ubuntu 20.04+ / CentOS 8+ / Debian 11+
- **RAM** : Minimum 2GB, recommandé 4GB+
- **CPU** : 2 cores minimum
- **Stockage** : 20GB minimum
- **Réseau** : Accès internet et ports 3001, 80, 443

### Logiciels
- **Node.js** 16+ avec npm
- **MySQL** 5.7+ ou 8.0+
- **Nginx** (optionnel, pour reverse proxy)
- **PM2** (pour la gestion des processus)

## 🔧 Installation Production

### 1. Préparation du serveur

```bash
# Mise à jour du système
sudo apt update && sudo apt upgrade -y

# Installation de Node.js
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

# Installation de MySQL
sudo apt install mysql-server -y
sudo mysql_secure_installation

# Installation de PM2
sudo npm install -g pm2

# Installation de Nginx (optionnel)
sudo apt install nginx -y
```

### 2. Configuration de la base de données

```sql
-- Connexion à MySQL
mysql -u root -p

-- Création de l'utilisateur et de la base
CREATE DATABASE sms_gateway;
CREATE USER 'smsadmin'@'%' IDENTIFIED BY 'VotreMotDePasseSecurise';
GRANT ALL PRIVILEGES ON sms_gateway.* TO 'smsadmin'@'%';
FLUSH PRIVILEGES;

-- Initialisation des tables
USE sms_gateway;
SOURCE backend/scripts/init-simple.sql;
```

### 3. Déploiement de l'application

```bash
# Cloner le projet
git clone <votre-repository> /opt/sms-gateway
cd /opt/sms-gateway

# Installation des dépendances
npm install --production

# Configuration
cp config.example config.env
nano config.env  # Modifier selon votre environnement

# Test de l'application
npm start
```

### 4. Configuration PM2

```bash
# Créer le fichier de configuration PM2
cat > ecosystem.config.js << EOF
module.exports = {
  apps: [{
    name: 'sms-gateway',
    script: 'backend/simple-server.js',
    instances: 'max',
    exec_mode: 'cluster',
    env: {
      NODE_ENV: 'production',
      PORT: 3001
    },
    error_file: './logs/err.log',
    out_file: './logs/out.log',
    log_file: './logs/combined.log',
    time: true,
    max_memory_restart: '1G',
    restart_delay: 4000
  }]
};
EOF

# Créer le dossier logs
mkdir -p logs

# Démarrer avec PM2
pm2 start ecosystem.config.js
pm2 save
pm2 startup
```

### 5. Configuration Nginx (Optionnel)

```bash
# Créer la configuration Nginx
sudo cat > /etc/nginx/sites-available/sms-gateway << EOF
server {
    listen 80;
    server_name votre-domaine.com;

    location / {
        proxy_pass http://localhost:3001;
        proxy_http_version 1.1;
        proxy_set_header Upgrade \$http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
        proxy_cache_bypass \$http_upgrade;
    }
}
EOF

# Activer le site
sudo ln -s /etc/nginx/sites-available/sms-gateway /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx
```

## 🔒 Sécurisation

### 1. Firewall

```bash
# Configuration UFW
sudo ufw allow ssh
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 3001  # Si pas de reverse proxy
sudo ufw enable
```

### 2. SSL/TLS avec Let's Encrypt

```bash
# Installation Certbot
sudo apt install certbot python3-certbot-nginx -y

# Obtention du certificat
sudo certbot --nginx -d votre-domaine.com

# Renouvellement automatique
sudo crontab -e
# Ajouter : 0 12 * * * /usr/bin/certbot renew --quiet
```

### 3. Sécurité de la base de données

```sql
-- Changer le mot de passe par défaut
ALTER USER 'smsadmin'@'%' IDENTIFIED BY 'MotDePasseTresSecurise123!';

-- Limiter les connexions
SET GLOBAL max_connections = 100;
SET GLOBAL max_user_connections = 50;
```

## 📊 Monitoring

### 1. Monitoring PM2

```bash
# Statut des processus
pm2 status

# Logs en temps réel
pm2 logs sms-gateway

# Monitoring
pm2 monit

# Redémarrage
pm2 restart sms-gateway
```

### 2. Monitoring système

```bash
# Installation de htop
sudo apt install htop -y

# Surveillance des ressources
htop

# Surveillance des logs
tail -f /opt/sms-gateway/logs/combined.log
```

### 3. Health checks automatiques

```bash
# Créer un script de monitoring
cat > /opt/sms-gateway/health-check.sh << EOF
#!/bin/bash
RESPONSE=\$(curl -s http://localhost:3001/health)
if echo "\$RESPONSE" | grep -q "success.*true"; then
    echo "\$(date): ✅ Service OK"
else
    echo "\$(date): ❌ Service DOWN - Redémarrage..."
    pm2 restart sms-gateway
fi
EOF

chmod +x /opt/sms-gateway/health-check.sh

# Ajouter au crontab
crontab -e
# Ajouter : */5 * * * * /opt/sms-gateway/health-check.sh >> /var/log/sms-gateway-health.log
```

## 🔄 Sauvegarde

### 1. Sauvegarde de la base de données

```bash
# Script de sauvegarde
cat > /opt/sms-gateway/backup-db.sh << EOF
#!/bin/bash
DATE=\$(date +%Y%m%d_%H%M%S)
mysqldump -u smsadmin -p'VotreMotDePasse' sms_gateway > /opt/backups/sms_gateway_\$DATE.sql
find /opt/backups -name "sms_gateway_*.sql" -mtime +7 -delete
EOF

chmod +x /opt/sms-gateway/backup-db.sh
mkdir -p /opt/backups

# Sauvegarde quotidienne
crontab -e
# Ajouter : 0 2 * * * /opt/sms-gateway/backup-db.sh
```

### 2. Sauvegarde des fichiers

```bash
# Sauvegarde des logs et configuration
tar -czf /opt/backups/sms-gateway-files_$(date +%Y%m%d).tar.gz \
    /opt/sms-gateway/logs \
    /opt/sms-gateway/config.env \
    /opt/sms-gateway/ecosystem.config.js
```

## 🚀 Mise à jour

### 1. Mise à jour de l'application

```bash
cd /opt/sms-gateway

# Sauvegarde avant mise à jour
cp -r . ../sms-gateway-backup-$(date +%Y%m%d)

# Mise à jour du code
git pull origin main

# Mise à jour des dépendances
npm install --production

# Redémarrage
pm2 restart sms-gateway
```

### 2. Mise à jour de Node.js

```bash
# Mise à jour vers la dernière LTS
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Redémarrage des services
pm2 restart all
```

## 🐛 Dépannage Production

### Problèmes courants

**1. Service ne démarre pas**
```bash
# Vérifier les logs
pm2 logs sms-gateway

# Vérifier la configuration
node -c backend/simple-server.js

# Vérifier les ports
sudo netstat -tlnp | grep 3001
```

**2. Base de données inaccessible**
```bash
# Test de connexion
mysql -h 168.231.85.4 -u smsadmin -p sms_gateway

# Vérifier les processus MySQL
sudo systemctl status mysql
```

**3. Mémoire insuffisante**
```bash
# Vérifier l'utilisation mémoire
free -h
pm2 monit

# Redémarrer si nécessaire
pm2 restart sms-gateway
```

## 📞 Support Production

### Contacts d'urgence
- **Administrateur système** : admin@votre-domaine.com
- **Développeur** : dev@votre-domaine.com

### Procédures d'urgence
1. **Arrêt d'urgence** : `pm2 stop sms-gateway`
2. **Redémarrage complet** : `pm2 restart sms-gateway`
3. **Rollback** : Restaurer depuis `/opt/sms-gateway-backup-YYYYMMDD`

---

**🎯 Système prêt pour la production !** 🎯 
 
 