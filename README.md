# 📱 SMS Gateway - Système Complet

Un système complet de passerelle SMS comprenant une application Android, un backend Node.js et un dashboard web avec design cyberpunk.

## 🌟 Fonctionnalités

- **📱 Application Android** : Détection automatique des cartes SIM et envoi de SMS
- **🖥️ Backend API** : Serveur Express avec base de données MySQL
- **🌐 Dashboard Web** : Interface cyberpunk pour la gestion et le monitoring
- **🔄 Synchronisation** : Communication en temps réel entre tous les composants

## 🎨 Design Cyberpunk

- **Couleurs principales** : #0F0F23, #1A1A2E
- **Accents néon** : #00D4FF (bleu), #9D00FF (violet), #00FF88 (vert)
- **Interface futuriste** avec effets de glow et animations

## 📋 Prérequis

### Backend
- **Node.js** 16+ 
- **MySQL** 5.7+
- **npm** ou **yarn**

### Android
- **Android Studio** (pour compilation)
- **Android SDK** 21+
- **Permissions** : SMS, PHONE, READ_PHONE_STATE

### Base de données
- **MySQL Server** configuré
- **Accès réseau** à la base de données

## 🚀 Installation Rapide

### 1. Cloner le projet
```bash
git clone <repository-url>
cd SMSGEEK
```

### 2. Configuration de la base de données
```sql
-- Créer la base de données
CREATE DATABASE sms_gateway;

-- Utiliser les informations de connexion :
Host: 168.231.85.4
User: smsadmin
Password: Maman01#
Database: sms_gateway
```

### 3. Installation des dépendances
```bash
npm install
```

### 4. Démarrage du serveur
```bash
# Méthode 1 : Script automatique
./start.sh

# Méthode 2 : Manuel
node backend/simple-server.js
```

## 📡 URLs d'accès

- **Dashboard Web** : http://localhost:3001
- **API Health** : http://localhost:3001/health
- **API Phones** : http://localhost:3001/api/phones
- **API Messages** : http://localhost:3001/api/messages

## 🏗️ Architecture

```
SMS Gateway/
├── 📱 android/                 # Application Android
│   ├── app/src/main/java/      # Code source Kotlin
│   ├── app/src/main/res/       # Ressources UI
│   └── app/build.gradle        # Configuration Android
├── 🖥️ backend/                 # Serveur Node.js
│   ├── config/database.js      # Configuration MySQL
│   ├── routes/                 # Routes API
│   └── simple-server.js        # Serveur principal
├── 🌐 frontend/                # Dashboard Web
│   └── index.html              # Interface cyberpunk
└── 📄 Documentation
    ├── README.md               # Ce fichier
    └── start.sh                # Script de démarrage
```

## 🔧 Configuration

### Base de données MySQL
Le fichier `backend/config/database.js` contient la configuration :
```javascript
const config = {
  host: '168.231.85.4',
  user: 'smsadmin',
  password: 'Maman01#',
  database: 'sms_gateway',
  ssl: false
};
```

### Application Android
1. Ouvrir le projet dans Android Studio
2. Synchroniser les dépendances Gradle
3. Compiler et installer sur un appareil physique
4. Accorder les permissions SMS et téléphone

## 📊 API Endpoints

### Téléphones
- `GET /api/phones` - Liste des téléphones
- `POST /api/phones` - Enregistrer un téléphone
- `PUT /api/phones/:id` - Mettre à jour un téléphone
- `DELETE /api/phones/:id` - Supprimer un téléphone

### Messages
- `POST /api/messages/send` - Envoyer un SMS
- `POST /api/messages/bulk` - Envoi en masse
- `GET /api/messages/history` - Historique
- `GET /api/messages/pending/:phone_id` - Messages en attente
- `PUT /api/messages/:id/status` - Mettre à jour le statut

### Système
- `GET /health` - Vérification de santé
- `GET /api/health` - Statut détaillé

## 🎯 Utilisation

### 1. Démarrer le système
```bash
./start.sh
```

### 2. Accéder au dashboard
Ouvrir http://localhost:3001 dans un navigateur

### 3. Installer l'app Android
1. Compiler l'APK avec Android Studio
2. Installer sur un téléphone avec carte SIM
3. Accorder les permissions
4. L'app se connectera automatiquement au serveur

### 4. Envoyer des SMS
- Via le dashboard web
- Via l'API REST
- Automatiquement depuis l'application Android

## 🔍 Monitoring

### Dashboard Web
- **Statistiques en temps réel**
- **Liste des téléphones connectés**
- **Historique des messages**
- **Taux de succès**
- **Actualisation automatique (30s)**

### Logs serveur
```bash
# Voir les logs en temps réel
tail -f logs/server.log

# Vérifier le statut
curl http://localhost:3001/health
```

## 🛠️ Développement

### Structure du code Android
```kotlin
// Détection des cartes SIM
SimUtils.kt - Gestion des SIM
SmsService.kt - Service d'envoi SMS
ApiClient.kt - Communication avec l'API
MainActivity.kt - Interface principale
```

### Backend Node.js
```javascript
// Routes principales
routes/phones.js - Gestion des téléphones
routes/messages.js - Gestion des SMS
config/database.js - Configuration MySQL
simple-server.js - Serveur Express
```

## 🐛 Dépannage

### Problèmes courants

**1. Erreur de connexion à la base de données**
```bash
# Vérifier la connexion
curl http://localhost:3001/health
```

**2. Application Android ne détecte pas les SIM**
- Vérifier les permissions
- Redémarrer l'application
- Vérifier les logs avec `adb logcat`

**3. Dashboard web ne se charge pas**
- Vérifier que le serveur est démarré
- Contrôler l'URL : http://localhost:3001

### Logs de débogage
```bash
# Logs Android
adb logcat | grep "SMS Gateway"

# Logs serveur
node backend/simple-server.js

# Test API
curl -X GET http://localhost:3001/api/phones
```

## 📈 Performance

- **Capacité** : Jusqu'à 1000 SMS par envoi en masse
- **Débit** : Limité par les opérateurs téléphoniques
- **Monitoring** : Statistiques en temps réel
- **Fiabilité** : Gestion d'erreurs robuste

## 🔒 Sécurité

- **Validation** des numéros de téléphone
- **Limitation** du débit d'envoi
- **Logs** de toutes les actions
- **Gestion d'erreurs** sécurisée

## 🤝 Contribution

1. Fork le projet
2. Créer une branche feature
3. Commit les changements
4. Push vers la branche
5. Ouvrir une Pull Request

## 📄 Licence

Ce projet est sous licence MIT. Voir le fichier LICENSE pour plus de détails.

## 🆘 Support

Pour toute question ou problème :
1. Vérifier la documentation
2. Consulter les logs
3. Tester les endpoints API
4. Ouvrir une issue sur GitHub

---

**🎉 Système SMS Gateway - Prêt pour la production !** 🎉 
 
 