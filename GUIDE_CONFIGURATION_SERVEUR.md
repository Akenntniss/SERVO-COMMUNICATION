# 🌐 Guide de Configuration du Serveur - SMS Gateway

## 📱 Nouvelles Fonctionnalités Ajoutées

L'application SMS Gateway dispose maintenant de fonctionnalités avancées pour configurer et basculer entre différents types de serveurs.

### ✨ **Fonctionnalités Principales**

1. **🏠 Serveur Local** - Pour utilisation en réseau local (localhost/LAN)
2. **☁️ Serveur Cloud** - Pour utilisation avec un serveur distant
3. **🔍 Test de Connexion** - Vérification en temps réel de la connectivité
4. **💾 Sauvegarde Automatique** - Configuration persistante
5. **📊 Indicateur Visuel** - Affichage du serveur actuel sur l'écran principal

---

## 🚀 **Comment Utiliser**

### **1. Accéder à la Configuration**
- Ouvrez l'application SMS Gateway
- Appuyez sur le bouton **"Configuration"** sur l'écran principal
- L'écran de configuration du serveur s'ouvre

### **2. Configurer un Serveur Local**
```
🏠 Serveur Local
├── Sélectionnez "🏠 Serveur Local"
├── Saisissez l'IP : 192.168.1.155:3001
├── Appuyez sur "🔍 Tester" pour vérifier
└── Appuyez sur "💾 Sauvegarder"
```

**Exemples d'IP locales :**
- `192.168.1.155:3001` (votre IP actuelle)
- `192.168.1.100:3001` (autre machine du réseau)
- `10.0.2.2:3001` (pour émulateur Android)
- `localhost:3001` (même appareil)

### **3. Configurer un Serveur Cloud**
```
☁️ Serveur Cloud
├── Sélectionnez "☁️ Serveur Cloud"
├── Saisissez l'URL : https://votre-serveur.com:3001
├── Appuyez sur "🔍 Tester" pour vérifier
└── Appuyez sur "💾 Sauvegarder"
```

**Exemples d'URLs cloud :**
- `https://sms-gateway.herokuapp.com:3001`
- `https://votre-domaine.com:3001`
- `http://123.456.789.123:3001` (IP publique)

---

## 🔧 **Interface Utilisateur**

### **Écran Principal**
```
📱 SMS Gateway
├── 🌐 Indicateur de serveur actuel
│   ├── 🏠 Serveur Local: 192.168.1.155:3001
│   └── ☁️ Serveur Cloud: votre-serveur.com:3001
├── 📊 Statut de connexion
└── 🔘 Bouton "Configuration"
```

### **Écran de Configuration**
```
⚙️ Configuration du Serveur
├── 🌐 Type de serveur
│   ├── ⚪ 🏠 Serveur Local
│   └── ⚪ ☁️ Serveur Cloud
├── 🏠 IP du serveur local
├── ☁️ URL du serveur cloud
├── ℹ️ Statut de connexion
└── 🔘 Boutons d'action
    ├── 🔍 Tester
    ├── 💾 Sauvegarder
    └── 🔙 Retour
```

---

## 🎯 **Cas d'Usage**

### **🏠 Utilisation Locale (Développement/Test)**
```bash
# Démarrer le serveur local
cd /Users/admin/Documents/SMSGEEK
node backend/simple-server.js

# Dans l'app Android
1. Ouvrir Configuration
2. Sélectionner "🏠 Serveur Local"
3. Saisir "192.168.1.155:3001"
4. Tester et Sauvegarder
```

### **☁️ Utilisation Cloud (Production)**
```bash
# Déployer sur votre serveur cloud
# Exemple avec Heroku, AWS, etc.

# Dans l'app Android
1. Ouvrir Configuration
2. Sélectionner "☁️ Serveur Cloud"
3. Saisir "https://votre-serveur.com:3001"
4. Tester et Sauvegarder
```

### **🔄 Basculement Rapide**
```
Scénario : Passer du local au cloud
├── 1. Ouvrir Configuration
├── 2. Changer le type de serveur
├── 3. Tester la nouvelle configuration
└── 4. Sauvegarder
```

---

## 🛠️ **Dépannage**

### **❌ Erreurs Communes**

#### **"Erreur de connexion"**
```
Solutions :
├── Vérifier que le serveur est démarré
├── Vérifier l'IP/URL saisie (IP actuelle: 192.168.1.155)
├── Vérifier la connectivité réseau
├── Vérifier les ports (3001)
└── S'assurer que le serveur écoute sur 0.0.0.0 et pas seulement localhost
```

#### **"IP incorrecte"**
```
Problème fréquent : L'IP change dynamiquement
Solutions :
├── Vérifier l'IP actuelle : ifconfig | grep "inet "
├── Mettre à jour l'IP dans l'application
├── Utiliser une IP statique sur le routeur
└── Configurer le serveur pour écouter sur toutes les interfaces
```

#### **"Impossible de créer le service API"**
```
Solutions :
├── Redémarrer l'application
├── Vérifier le format de l'URL
└── Essayer avec http:// au lieu de https://
```

#### **"Serveur non accessible"**
```
Solutions :
├── Ping l'IP du serveur
├── Vérifier le firewall
├── Tester avec curl : curl http://IP:3001/health
└── Vérifier les logs du serveur
```

---

## 📋 **Commandes Utiles**

### **Test Manuel du Serveur**
```bash
# Tester la santé du serveur
curl http://192.168.1.155:3001/health

# Tester l'API phones
curl http://192.168.1.155:3001/api/phones

# Voir les logs en temps réel
tail -f backend/logs/server.log
```

### **Diagnostic Réseau**
```bash
# Ping du serveur
ping 192.168.1.155

# Test de port
telnet 192.168.1.155 3001

# Voir les connexions
netstat -an | grep 3001
```

---

## 🎉 **Avantages**

### **🏠 Mode Local**
- ✅ Latence minimale
- ✅ Pas de dépendance internet
- ✅ Contrôle total
- ✅ Idéal pour développement

### **☁️ Mode Cloud**
- ✅ Accessible de partout
- ✅ Haute disponibilité
- ✅ Sauvegarde centralisée
- ✅ Idéal pour production

### **🔄 Basculement Flexible**
- ✅ Changement instantané
- ✅ Configuration persistante
- ✅ Test avant activation
- ✅ Indicateur visuel

---

## 🔐 **Sécurité**

### **Recommandations**
```
🏠 Serveur Local :
├── Utiliser un réseau sécurisé
├── Configurer un firewall
└── Limiter l'accès au réseau local

☁️ Serveur Cloud :
├── Utiliser HTTPS en production
├── Configurer l'authentification
├── Utiliser des certificats SSL
└── Surveiller les accès
```

---

## 📞 **Support**

En cas de problème :
1. Vérifier ce guide
2. Consulter les logs de l'application
3. Tester la connectivité réseau
4. Redémarrer l'application et le serveur

**L'application SMS Gateway est maintenant prête pour une utilisation flexible en local et en cloud !** 🎉 