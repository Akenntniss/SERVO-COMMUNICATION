# 🔧 Guide de Gestion des SIM - SMS Gateway

## 📋 Vue d'ensemble

Ce guide explique comment utiliser la nouvelle fonctionnalité de gestion des cartes SIM avec configuration des limites personnalisées.

## 🚀 Démarrage Rapide

### 1. Démarrer le serveur
```bash
# Démarrer le serveur backend
node backend/simple-server.js

# Ou utiliser le script automatique
./start.sh
```

### 2. Ouvrir l'application Android
1. Lancez l'application SMS Gateway sur votre téléphone
2. Accordez toutes les permissions nécessaires
3. L'application détectera automatiquement vos cartes SIM

### 3. Accéder à la gestion des SIM
1. Sur l'écran principal, cliquez sur le bouton **🔧 SIM**
2. L'application va détecter toutes les cartes SIM disponibles
3. Vous verrez la liste des SIM avec leurs informations

## ⚙️ Configuration des Limites

### Paramètres disponibles pour chaque SIM :

#### 📱 Informations de base
- **Slot** : Position de la carte SIM (1, 2, etc.)
- **Numéro** : Numéro de téléphone (si disponible)
- **Opérateur** : Nom de l'opérateur (Orange, SFR, etc.)
- **ID Souscription** : Identifiant unique de la SIM

#### 🎛️ Contrôles
- **Switch Actif/Inactif** : Active ou désactive la SIM pour l'envoi
- **Limite quotidienne** : Nombre maximum de SMS par jour (défaut: 1000)
- **Limite mensuelle** : Nombre maximum de SMS par mois (défaut: 30000)

#### 📊 Statistiques en temps réel
- **Usage quotidien** : Progression avec barre colorée
- **Usage mensuel** : Progression avec barre colorée
- **Statut** : 🟢 Disponible / ⚠️ Limite atteinte / 🔴 Inactive

### Codes couleur des barres de progression :
- 🟢 **Vert** : Usage normal (0-70%)
- 🟠 **Orange** : Attention (70-90%)
- 🔴 **Rouge** : Limite proche/atteinte (90-100%)

## 💾 Enregistrement sur le serveur

### Première utilisation
1. Configurez les limites selon vos besoins
2. Cliquez sur **💾 Enregistrer**
3. L'application enregistrera automatiquement :
   - Les informations du téléphone
   - Toutes les cartes SIM détectées
   - Les limites configurées

### Mises à jour ultérieures
1. Modifiez les limites selon vos besoins
2. Cliquez sur **💾 Enregistrer**
3. Les données seront mises à jour sur le serveur

## 🌐 Vérification via Dashboard Web

### Accès au dashboard
1. Ouvrez votre navigateur
2. Allez sur `http://localhost:3001` (ou votre URL de serveur)
3. Vous verrez vos téléphones et SIM enregistrés

### Informations visibles
- Liste des téléphones connectés
- Détails de chaque carte SIM
- Limites configurées
- Statistiques d'usage
- Historique des messages

## 🔧 API Endpoints

### Téléphones
- `GET /api/phones` - Liste tous les téléphones
- `POST /api/phones/register` - Enregistre un nouveau téléphone
- `GET /api/phones/{id}` - Détails d'un téléphone et ses SIM
- `PUT /api/phones/{id}/heartbeat` - Met à jour les SIM

### Messages
- `GET /api/messages/history` - Historique des SMS
- `POST /api/messages/send` - Envoyer un SMS
- `GET /api/messages/pending/{phone_id}` - Messages en attente

## 🧪 Tests

### Script de test automatique
```bash
# Exécuter tous les tests
./test-sim-management.sh

# Test manuel de l'API
curl -s http://localhost:3001/api/phones | jq .
```

### Test d'enregistrement manuel
```bash
curl -X POST http://localhost:3001/api/phones/register \
  -H "Content-Type: application/json" \
  -d '{
    "model": "Mon Téléphone",
    "android_version": "13",
    "app_version": "1.0.0",
    "sims": [
      {
        "slot_index": 0,
        "phone_number": "+33123456789",
        "carrier_name": "Orange",
        "subscription_id": 1,
        "is_active": true,
        "daily_limit": 500,
        "monthly_limit": 15000
      }
    ]
  }'
```

## 🔍 Dépannage

### Problèmes courants

#### ❌ Aucune SIM détectée
- Vérifiez que les permissions sont accordées
- Redémarrez l'application
- Vérifiez que les cartes SIM sont bien insérées

#### ❌ Erreur d'enregistrement
- Vérifiez que le serveur est démarré
- Vérifiez la connexion réseau
- Consultez les logs du serveur

#### ❌ Données non visibles dans le dashboard
- Actualisez la page web
- Vérifiez que l'enregistrement s'est bien passé
- Consultez les logs du serveur

### Logs utiles

#### Serveur
```bash
# Logs en temps réel
tail -f backend/logs/server.log

# Vérifier les connexions
curl -s http://localhost:3001/health
```

#### Application Android
```bash
# Logs de l'application
adb logcat | grep "SMS Gateway"

# Logs spécifiques SIM
adb logcat | grep "SimUtils"
```

## 📱 Structure des données SIM

### Format d'enregistrement
```json
{
  "model": "Samsung Galaxy S21",
  "android_version": "13",
  "app_version": "1.0.0",
  "sims": [
    {
      "slot_index": 0,
      "phone_number": "+33123456789",
      "carrier_name": "Orange",
      "subscription_id": 1,
      "is_active": true,
      "daily_limit": 1000,
      "monthly_limit": 30000
    }
  ]
}
```

### Réponse du serveur
```json
{
  "success": true,
  "message": "Téléphone enregistré avec succès",
  "data": {
    "phone_id": "uuid-du-telephone",
    "phone": { /* détails du téléphone */ }
  }
}
```

## 🎯 Bonnes Pratiques

### Configuration des limites
- **Quotidien** : Commencez par 500-1000 SMS/jour
- **Mensuel** : 15000-30000 SMS/mois selon votre forfait
- **Surveillance** : Vérifiez régulièrement les statistiques

### Gestion multi-SIM
- Configurez des limites différentes selon l'opérateur
- Désactivez les SIM non utilisées
- Répartissez la charge entre les SIM

### Sécurité
- Surveillez les statistiques d'usage
- Configurez des alertes si nécessaire
- Sauvegardez régulièrement la configuration

## 📞 Support

En cas de problème :
1. Consultez ce guide
2. Vérifiez les logs
3. Exécutez les tests automatiques
4. Redémarrez le serveur et l'application

---

**🎉 Votre système SMS Gateway avec gestion des SIM est maintenant opérationnel !** 
 
 