# 🕐 Guide d'implémentation - Délai de 30 secondes entre messages

## 📋 Résumé de l'implémentation

Un système de délai de **30 secondes minimum** entre chaque message envoyé avec succès (statut `sent`) a été implémenté pour éviter les blocages d'opérateurs.

## 🔧 Composants ajoutés

### 1. **Service de gestion des délais**
- **Fichier**: `backend/services/message-delay-service.js`
- **Fonction**: Gère les délais entre messages par SIM
- **Délai**: 30 secondes minimum entre chaque envoi réussi

### 2. **Table de base de données**
- **Script**: `backend/scripts/add-delay-tracking.sql`
- **Table**: `sim_last_activity`
- **Fonction**: Stocke le timestamp du dernier envoi par SIM

### 3. **Modifications des routes**
- **Route modifiée**: `PUT /api/messages/:id/status`
- **Ajout**: Enregistrement du délai quand statut = `sent`
- **Route modifiée**: `GET /api/messages/pending/:phone_id`
- **Ajout**: Filtrage des messages selon les délais
- **Nouvelle route**: `GET /api/messages/delay-stats`

## 🚀 Instructions de déploiement

### Étape 1: Créer la table de base de données
```bash
mysql -u smsadmin -p sms_gateway < backend/scripts/add-delay-tracking.sql
```

### Étape 2: Redémarrer le serveur backend
```bash
cd backend
npm restart
# ou
pm2 restart sms-gateway
```

### Étape 3: Vérifier le fonctionnement
```bash
# Test 1: Vérifier les statistiques de délai
curl -X GET "http://localhost:3001/api/messages/delay-stats"

# Test 2: Envoyer un message de test
curl -X POST "http://localhost:3001/api/messages/send" \
  -H "Content-Type: application/json" \
  -d '{
    "recipient": "+33612345678",
    "message": "Test délai 1"
  }'

# Test 3: Essayer d'envoyer un second message immédiatement
curl -X POST "http://localhost:3001/api/messages/send" \
  -H "Content-Type: application/json" \
  -d '{
    "recipient": "+33612345679", 
    "message": "Test délai 2"
  }'
```

## 📊 Comment ça fonctionne

### Flux normal (sans délai actif)
1. **Message créé** → Statut `pending`
2. **Android récupère** → Via `/api/messages/pending/:phone_id`
3. **Android envoie** → Met à jour statut à `sent`
4. **Délai enregistré** → Timestamp sauvé pour cette SIM

### Flux avec délai actif (< 30 secondes)
1. **Message créé** → Statut `pending`
2. **Android récupère** → Filtrage appliqué
3. **Messages bloqués** → Si délai non respecté
4. **Attente** → Jusqu'à expiration du délai

### Logs à surveiller
```bash
tail -f logs/backend.log | grep -E "(Délai|filtrage|🕐|⏳)"
```

Exemples de logs attendus:
```
✅ Délai enregistré - SIM 1, Message 123, Timestamp: 2024-01-01T10:00:00.000Z
🕐 Vérification délai SIM 1: Délai respecté (35s écoulées)
⏳ Message 124 en attente - Délai en cours (15s restantes)
📊 Filtrage délais: 5 messages → 2 autorisés
```

## 🔍 Monitoring et statistiques

### Route de statistiques
```bash
GET /api/messages/delay-stats
```

**Réponse exemple**:
```json
{
  "success": true,
  "data": {
    "delay_seconds": 30,
    "total_sims": 3,
    "ready_sims": 2,
    "waiting_sims": 1,
    "sims": [
      {
        "sim_id": 1,
        "carrier_name": "Orange",
        "phone_number": "+33123456789",
        "last_sent_at": "2024-01-01T10:00:00.000Z",
        "seconds_since_last_send": 45,
        "status": "ready",
        "wait_seconds_remaining": 0
      },
      {
        "sim_id": 2,
        "carrier_name": "SFR",
        "phone_number": "+33987654321",
        "last_sent_at": "2024-01-01T10:00:45.000Z",
        "seconds_since_last_send": 15,
        "status": "waiting",
        "wait_seconds_remaining": 15
      }
    ]
  }
}
```

## ⚠️ Points importants

### Comportement en cas d'erreur
- **Service indisponible** → Autorisation par défaut (pas de blocage)
- **Erreur de délai** → Log d'erreur mais pas d'échec du message
- **Première SIM** → Pas de délai (aucun envoi précédent)

### Performance
- **Cache en mémoire** → Timestamps stockés en RAM
- **Persistance BDD** → Sauvegarde en base pour redémarrage
- **Nettoyage automatique** → Suppression enregistrements > 24h

### Flexibilité
- **Délai configurable** → Modifiable dans `message-delay-service.js`
- **Par SIM** → Délai indépendant pour chaque carte SIM
- **Non bloquant** → En cas d'erreur, ne bloque pas le système

## 🔧 Configuration avancée

### Modifier le délai
Dans `backend/services/message-delay-service.js` :
```javascript
// Changer de 30 à 60 secondes par exemple
this.MINIMUM_DELAY_MS = 60 * 1000;
```

### Désactiver temporairement
Pour désactiver sans supprimer le code :
```javascript
async canSendMessage(simId) {
    // Retourner toujours autorisé
    return {
        canSend: true,
        waitTimeMs: 0,
        nextAvailableAt: new Date(),
        reason: 'Délai désactivé'
    };
}
```

## 📈 Résultat attendu

Avec cette implémentation :
- ✅ **Maximum 1 SMS toutes les 30 secondes** par SIM
- ✅ **Comportement plus humain** moins suspect pour opérateurs
- ✅ **Réduction des blocages** de cartes SIM
- ✅ **Monitoring intégré** pour surveillance
- ✅ **Non-intrusif** ne casse pas l'existant

Le système respecte maintenant un délai minimum de 30 secondes entre chaque message envoyé avec succès, réduisant considérablement les risques de détection comme spam par les opérateurs.
