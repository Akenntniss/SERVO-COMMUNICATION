# 📟 Gestion des Limites SIM - SMS Gateway

## 🎯 Fonctionnalité Implémentée

Cette fonctionnalité permet de configurer et gérer les limites d'utilisation pour chaque carte SIM connectée au système SMS Gateway.

## 🚀 Fonctionnalités

### 📱 Interface Android
- **Bouton "Configurer SIM"** dans l'activité principale
- **Écran de gestion des SIM** avec interface cyberpunk moderne
- **Chargement automatique** des SIM depuis le serveur
- **Configuration individuelle** pour chaque SIM
- **Sauvegarde en temps réel** via API

### 🔧 Configuration des Limites
- **Limite de destinataires par jour** : Contrôle du nombre de destinataires uniques
- **Limite SMS par jour** : Contrôle du nombre de messages quotidiens
- **Limite SMS par mois** : Contrôle du nombre de messages mensuels

### 📊 Informations Affichées
- Numéro de téléphone de la SIM
- Opérateur (carrier)
- Pays d'origine
- Modèle du téléphone
- Statut (active/inactive)
- Statistiques d'utilisation en temps réel

## 🛠️ Architecture Technique

### Backend (Node.js)
```
backend/
├── routes/sims.js          # Routes API pour la gestion des SIM
├── scripts/
│   └── add-recipient-limit.sql  # Script de migration base de données
└── simple-server.js        # Serveur principal avec routes SIM
```

### Android (Kotlin)
```
android/app/src/main/java/com/smsgateway/app/
├── ui/
│   └── SimManagementActivity.kt     # Interface de gestion des SIM
├── data/
│   ├── api/ApiService.kt            # Interface API avec méthodes SIM
│   └── model/SimCard.kt             # Modèles de données SIM
└── AndroidManifest.xml              # Configuration activité
```

## 📡 API Endpoints

### GET /api/sims
Récupère toutes les SIM avec leurs informations et limites.

**Réponse :**
```json
{
  "success": true,
  "data": [
    {
      "id": 4,
      "phone_id": "1283e97f-b54b-4793-98bd-76c3bc1f7e00",
      "slot_index": 1,
      "phone_number": null,
      "carrier_name": "LycaMobile",
      "country_code": "fr",
      "daily_limit": 2000,
      "monthly_limit": 40000,
      "recipient_limit": 100,
      "messages_sent_today": 0,
      "messages_sent_month": 0,
      "recipients_today": 0,
      "is_active": true,
      "phone_model": "SM-A326B",
      "phone_status": "active"
    }
  ]
}
```

### PUT /api/sims/{id}/limits
Met à jour les limites d'une SIM spécifique.

**Requête :**
```json
{
  "daily_limit": 2000,
  "monthly_limit": 40000,
  "recipient_limit": 100
}
```

**Réponse :**
```json
{
  "success": true,
  "message": "Limites mises à jour avec succès",
  "data": { /* SIM mise à jour */ }
}
```

## 🗄️ Base de Données

### Table `sims` - Nouvelles Colonnes
```sql
ALTER TABLE sims 
ADD COLUMN recipient_limit INT DEFAULT 50 COMMENT 'Limite de destinataires uniques par jour';

ALTER TABLE sims 
ADD COLUMN recipients_today INT DEFAULT 0 COMMENT 'Nombre de destinataires uniques contactés aujourd\'hui';
```

### Structure Complète
- `id` : Identifiant unique de la SIM
- `phone_id` : ID du téléphone associé
- `slot_index` : Index du slot SIM (0 ou 1)
- `phone_number` : Numéro de téléphone
- `carrier_name` : Nom de l'opérateur
- `country_code` : Code pays
- `daily_limit` : Limite SMS par jour
- `monthly_limit` : Limite SMS par mois
- `recipient_limit` : **NOUVEAU** - Limite destinataires par jour
- `messages_sent_today` : Messages envoyés aujourd'hui
- `messages_sent_month` : Messages envoyés ce mois
- `recipients_today` : **NOUVEAU** - Destinataires contactés aujourd'hui
- `is_active` : Statut actif/inactif

## 🎨 Interface Utilisateur

### Design Cyberpunk
- **Couleurs** : Fond noir (#0a0a0a), texte vert néon (#00ff41)
- **Cartes SIM** : Fond gris foncé (#1a1a1a) avec bordures
- **Boutons** : Style moderne avec icônes
- **Champs de saisie** : Fond gris (#333333) avec texte blanc

### Navigation
1. **Écran principal** → Bouton "Configurer SIM"
2. **Écran SIM** → Liste des SIM avec configuration
3. **Sauvegarde** → Confirmation et retour

## 🔄 Flux de Données

1. **Chargement** : L'app charge les SIM depuis `/api/sims`
2. **Affichage** : Création dynamique des cartes de configuration
3. **Modification** : L'utilisateur modifie les limites
4. **Sauvegarde** : Envoi via `/api/sims/{id}/limits`
5. **Confirmation** : Message de succès/erreur

## 🧪 Tests

### Test API Backend
```bash
# Tester la récupération des SIM
curl -s "http://localhost:3001/api/sims" | jq .

# Tester la mise à jour des limites
curl -X PUT -H "Content-Type: application/json" \
  -d '{"daily_limit": 2000, "monthly_limit": 40000, "recipient_limit": 100}' \
  "http://localhost:3001/api/sims/4/limits" | jq .
```

### Test Android
1. Compiler : `./gradlew assembleDebug`
2. Installer l'APK sur un appareil
3. Tester la navigation vers "Configurer SIM"
4. Vérifier le chargement des données
5. Tester la sauvegarde des configurations

## 📋 État du Projet

### ✅ Fonctionnalités Complétées
- [x] Migration base de données (colonnes recipient_limit, recipients_today)
- [x] API backend complète (GET /api/sims, PUT /api/sims/{id}/limits)
- [x] Interface Android moderne avec design cyberpunk
- [x] Intégration API temps réel
- [x] Gestion d'erreurs et validation
- [x] Compilation sans erreurs

### 🎯 Prêt pour Production
- Backend opérationnel sur port 3001
- Base de données MySQL configurée
- Application Android compilée
- Tests API validés
- Documentation complète

## 🚀 Déploiement

### Serveur Backend
```bash
cd backend
node simple-server.js
# Serveur démarré sur http://localhost:3001
```

### Application Android
```bash
cd android
./gradlew assembleDebug
# APK généré dans app/build/outputs/apk/debug/
```

## 📞 Support

Pour toute question ou problème :
- Vérifier les logs du serveur backend
- Consulter les logs Android via `adb logcat`
- Tester les endpoints API avec curl/Postman
- Vérifier la connectivité réseau entre l'app et le serveur 