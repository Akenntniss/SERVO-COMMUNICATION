# 📱 SMS Gateway Android - Système de Configuration

## 🎯 Vue d'ensemble

Le système de configuration Android de SMS Gateway guide l'utilisateur à travers un processus d'installation en 4 étapes pour configurer l'application avant sa première utilisation.

## 🏗️ Architecture

### **SetupActivity** - Activité principale de configuration
- **Navigation par étapes** avec ViewPager2
- **Indicateur de progression** avec DotsIndicator
- **Gestion d'état** avec SetupViewModel
- **Validation** à chaque étape

### **Fragments de configuration**

#### 1. **ServerConfigFragment** - Configuration serveur
- Saisie URL du serveur SMS Gateway
- Saisie clé API sécurisée
- Validation des entrées en temps réel
- Test de connexion automatique

#### 2. **PermissionsFragment** - Gestion des permissions
- Liste des permissions requises/optionnelles
- Statut visuel (accordée/refusée)
- Badges colorés (REQUIS/OPTIONNEL)
- Demande automatique des permissions

#### 3. **SimCardsFragment** - Détection des cartes SIM
- Détection automatique des SIM actives
- Informations détaillées (opérateur, numéro, slot)
- Support multi-SIM
- Gestion des erreurs de permissions

#### 4. **TestConnectionFragment** - Test final
- Résumé de la configuration
- Test de connexion au serveur
- Enregistrement du téléphone
- Validation finale

## 🎨 Interface utilisateur

### **Thème cyberpunk**
- Couleurs sombres (#0F0F23, #1A1A2E)
- Accents néon (#00D4FF, #9D00FF, #00FF88)
- Material Design 3
- Animations fluides

### **Composants visuels**
- **Cartes Material** avec élévation
- **Icônes vectorielles** cohérentes
- **Badges colorés** pour les statuts
- **Indicateurs visuels** (✓, ⚠)

## 🔧 Fonctionnalités techniques

### **Gestion des permissions**
```kotlin
// Permissions requises
- SEND_SMS (envoi SMS)
- READ_PHONE_STATE (état téléphone)
- INTERNET (connexion serveur)
- READ_PHONE_NUMBERS (numéros SIM)
- POST_NOTIFICATIONS (notifications)
```

### **Détection multi-SIM**
```kotlin
// Support Android 5.1+
- SubscriptionManager pour les SIM actives
- Informations détaillées par SIM
- Gestion des erreurs de permissions
- Actualisation manuelle
```

### **Stockage sécurisé**
```kotlin
// PreferencesManager avec EncryptedSharedPreferences
- URL serveur chiffrée
- Clé API sécurisée
- ID téléphone unique
- État de configuration
```

## 📱 Flux utilisateur

### **1. Lancement de l'application**
```
MainActivity → Vérification configuration → SetupActivity (si non configuré)
```

### **2. Processus de configuration**
```
Étape 1: Serveur → Étape 2: Permissions → Étape 3: SIM → Étape 4: Test → MainActivity
```

### **3. Navigation**
- **Suivant** : Validation + passage à l'étape suivante
- **Précédent** : Retour à l'étape précédente
- **Terminer** : Finalisation + redirection MainActivity

## 🔒 Sécurité

### **Chiffrement des données**
- **EncryptedSharedPreferences** pour les données sensibles
- **Clé API** stockée de manière sécurisée
- **ID téléphone** généré aléatoirement

### **Validation des entrées**
- **URL serveur** : Format et accessibilité
- **Clé API** : Présence et format
- **Permissions** : Vérification en temps réel

## 🎯 Points clés

### **Expérience utilisateur**
- ✅ **Interface intuitive** avec guidage étape par étape
- ✅ **Feedback visuel** immédiat sur les actions
- ✅ **Messages d'erreur** clairs et informatifs
- ✅ **Thème cohérent** avec le frontend web

### **Robustesse technique**
- ✅ **Gestion d'erreurs** complète
- ✅ **Validation** à chaque étape
- ✅ **Compatibilité** Android 6.0+
- ✅ **Architecture MVVM** propre

### **Fonctionnalités avancées**
- ✅ **Multi-SIM** natif
- ✅ **Permissions dynamiques** selon Android
- ✅ **Test de connexion** automatique
- ✅ **Enregistrement** du téléphone

## 🚀 Utilisation

### **Première installation**
1. L'utilisateur lance l'application
2. SetupActivity se lance automatiquement
3. Configuration guidée en 4 étapes
4. Test de connexion final
5. Redirection vers MainActivity

### **Reconfiguration**
- Accessible depuis MainActivity → Bouton Configuration
- Possibilité de modifier les paramètres
- Re-test de connexion disponible

## 📁 Structure des fichiers

```
android/app/src/main/
├── java/com/smsgateway/app/
│   ├── ui/setup/
│   │   ├── SetupActivity.kt
│   │   ├── SetupPagerAdapter.kt
│   │   ├── ServerConfigFragment.kt
│   │   ├── PermissionsFragment.kt
│   │   ├── PermissionsAdapter.kt
│   │   ├── SimCardsFragment.kt
│   │   ├── SimCardsAdapter.kt
│   │   └── TestConnectionFragment.kt
│   ├── viewmodel/
│   │   └── SetupViewModel.kt
│   └── data/model/
│       └── PhoneRegistration.kt
├── res/
│   ├── layout/
│   │   ├── activity_setup.xml
│   │   ├── fragment_server_config.xml
│   │   ├── fragment_permissions.xml
│   │   ├── fragment_sim_cards.xml
│   │   ├── fragment_test_connection.xml
│   │   ├── item_permission.xml
│   │   └── item_sim_card.xml
│   ├── drawable/
│   │   ├── ic_*.xml (icônes vectorielles)
│   │   └── badge_background.xml
│   ├── values/
│   │   ├── colors.xml
│   │   ├── strings.xml
│   │   └── themes.xml
│   └── ...
└── ...
```

## 🔄 Intégration avec le backend

### **Endpoints utilisés**
- `GET /api/health` - Test de connexion
- `POST /api/phones/register` - Enregistrement téléphone

### **Données envoyées**
```json
{
  "tel_id": "uuid-unique",
  "model": "Samsung Galaxy S21",
  "android_version": "13",
  "app_version": "1.0",
  "status": "active"
}
```

Le système de configuration Android est maintenant complet et prêt pour une utilisation en production ! 🎉 

## 🎯 Vue d'ensemble

Le système de configuration Android de SMS Gateway guide l'utilisateur à travers un processus d'installation en 4 étapes pour configurer l'application avant sa première utilisation.

## 🏗️ Architecture

### **SetupActivity** - Activité principale de configuration
- **Navigation par étapes** avec ViewPager2
- **Indicateur de progression** avec DotsIndicator
- **Gestion d'état** avec SetupViewModel
- **Validation** à chaque étape

### **Fragments de configuration**

#### 1. **ServerConfigFragment** - Configuration serveur
- Saisie URL du serveur SMS Gateway
- Saisie clé API sécurisée
- Validation des entrées en temps réel
- Test de connexion automatique

#### 2. **PermissionsFragment** - Gestion des permissions
- Liste des permissions requises/optionnelles
- Statut visuel (accordée/refusée)
- Badges colorés (REQUIS/OPTIONNEL)
- Demande automatique des permissions

#### 3. **SimCardsFragment** - Détection des cartes SIM
- Détection automatique des SIM actives
- Informations détaillées (opérateur, numéro, slot)
- Support multi-SIM
- Gestion des erreurs de permissions

#### 4. **TestConnectionFragment** - Test final
- Résumé de la configuration
- Test de connexion au serveur
- Enregistrement du téléphone
- Validation finale

## 🎨 Interface utilisateur

### **Thème cyberpunk**
- Couleurs sombres (#0F0F23, #1A1A2E)
- Accents néon (#00D4FF, #9D00FF, #00FF88)
- Material Design 3
- Animations fluides

### **Composants visuels**
- **Cartes Material** avec élévation
- **Icônes vectorielles** cohérentes
- **Badges colorés** pour les statuts
- **Indicateurs visuels** (✓, ⚠)

## 🔧 Fonctionnalités techniques

### **Gestion des permissions**
```kotlin
// Permissions requises
- SEND_SMS (envoi SMS)
- READ_PHONE_STATE (état téléphone)
- INTERNET (connexion serveur)
- READ_PHONE_NUMBERS (numéros SIM)
- POST_NOTIFICATIONS (notifications)
```

### **Détection multi-SIM**
```kotlin
// Support Android 5.1+
- SubscriptionManager pour les SIM actives
- Informations détaillées par SIM
- Gestion des erreurs de permissions
- Actualisation manuelle
```

### **Stockage sécurisé**
```kotlin
// PreferencesManager avec EncryptedSharedPreferences
- URL serveur chiffrée
- Clé API sécurisée
- ID téléphone unique
- État de configuration
```

## 📱 Flux utilisateur

### **1. Lancement de l'application**
```
MainActivity → Vérification configuration → SetupActivity (si non configuré)
```

### **2. Processus de configuration**
```
Étape 1: Serveur → Étape 2: Permissions → Étape 3: SIM → Étape 4: Test → MainActivity
```

### **3. Navigation**
- **Suivant** : Validation + passage à l'étape suivante
- **Précédent** : Retour à l'étape précédente
- **Terminer** : Finalisation + redirection MainActivity

## 🔒 Sécurité

### **Chiffrement des données**
- **EncryptedSharedPreferences** pour les données sensibles
- **Clé API** stockée de manière sécurisée
- **ID téléphone** généré aléatoirement

### **Validation des entrées**
- **URL serveur** : Format et accessibilité
- **Clé API** : Présence et format
- **Permissions** : Vérification en temps réel

## 🎯 Points clés

### **Expérience utilisateur**
- ✅ **Interface intuitive** avec guidage étape par étape
- ✅ **Feedback visuel** immédiat sur les actions
- ✅ **Messages d'erreur** clairs et informatifs
- ✅ **Thème cohérent** avec le frontend web

### **Robustesse technique**
- ✅ **Gestion d'erreurs** complète
- ✅ **Validation** à chaque étape
- ✅ **Compatibilité** Android 6.0+
- ✅ **Architecture MVVM** propre

### **Fonctionnalités avancées**
- ✅ **Multi-SIM** natif
- ✅ **Permissions dynamiques** selon Android
- ✅ **Test de connexion** automatique
- ✅ **Enregistrement** du téléphone

## 🚀 Utilisation

### **Première installation**
1. L'utilisateur lance l'application
2. SetupActivity se lance automatiquement
3. Configuration guidée en 4 étapes
4. Test de connexion final
5. Redirection vers MainActivity

### **Reconfiguration**
- Accessible depuis MainActivity → Bouton Configuration
- Possibilité de modifier les paramètres
- Re-test de connexion disponible

## 📁 Structure des fichiers

```
android/app/src/main/
├── java/com/smsgateway/app/
│   ├── ui/setup/
│   │   ├── SetupActivity.kt
│   │   ├── SetupPagerAdapter.kt
│   │   ├── ServerConfigFragment.kt
│   │   ├── PermissionsFragment.kt
│   │   ├── PermissionsAdapter.kt
│   │   ├── SimCardsFragment.kt
│   │   ├── SimCardsAdapter.kt
│   │   └── TestConnectionFragment.kt
│   ├── viewmodel/
│   │   └── SetupViewModel.kt
│   └── data/model/
│       └── PhoneRegistration.kt
├── res/
│   ├── layout/
│   │   ├── activity_setup.xml
│   │   ├── fragment_server_config.xml
│   │   ├── fragment_permissions.xml
│   │   ├── fragment_sim_cards.xml
│   │   ├── fragment_test_connection.xml
│   │   ├── item_permission.xml
│   │   └── item_sim_card.xml
│   ├── drawable/
│   │   ├── ic_*.xml (icônes vectorielles)
│   │   └── badge_background.xml
│   ├── values/
│   │   ├── colors.xml
│   │   ├── strings.xml
│   │   └── themes.xml
│   └── ...
└── ...
```

## 🔄 Intégration avec le backend

### **Endpoints utilisés**
- `GET /api/health` - Test de connexion
- `POST /api/phones/register` - Enregistrement téléphone

### **Données envoyées**
```json
{
  "tel_id": "uuid-unique",
  "model": "Samsung Galaxy S21",
  "android_version": "13",
  "app_version": "1.0",
  "status": "active"
}
```

Le système de configuration Android est maintenant complet et prêt pour une utilisation en production ! 🎉 
 
 