# SMS Gateway - Changelog

## Version 1.3 - SIM Selection Fixed (25 Octobre 2025)

### 🎯 Corrections Majeures
- **✅ Sélection de SIM corrigée** : L'application utilise maintenant exactement la SIM sélectionnée via l'interface web
- **✅ Récupération automatique des subscription IDs** : Synchronisation automatique des vrais IDs de souscription Android
- **✅ Support des SIMs avec données partielles** : Fonctionne même si phone_number, carrier_name ou country_code sont NULL
- **✅ Quotas mensuels désactivés** : Plus de limite artificielle sur l'envoi de SMS

### 🔧 Améliorations Techniques
- **Mapping JSON corrigé** : Annotations @SerializedName ajoutées pour la synchronisation serveur
- **Gestion robuste des valeurs NULL** : L'application et le serveur traitent correctement les informations SIM manquantes
- **Logs détaillés** : Meilleur débogage de la sélection de SIM avec emojis
- **Fallback intelligent** : Système de fallback hiérarchique pour la sélection de SIM

### 🚀 Nouvelles Fonctionnalités
- **Multi-SIM intelligent** : Support complet pour téléphones dual-SIM et plus
- **Détection automatique** : Reconnaissance automatique des SIMs insérées avec leurs caractéristiques
- **Interface améliorée** : Meilleure synchronisation entre interface web et application Android

### 🐛 Bugs Corrigés
- Correction du bug où l'application utilisait toujours la SIM par défaut
- Résolution des problèmes de synchronisation avec les SIMs sans numéro
- Correction des erreurs de compilation liées aux types de données
- Fix du problème subscription_id = 0 traité comme NULL

### 📱 Compatibilité
- Android 5.1+ (API 22+) pour les fonctionnalités multi-SIM avancées
- Fallback compatible avec les versions Android plus anciennes
- Support des opérateurs : Free, Lebara, et tous les autres

---

## Version 1.2 - Fixed Scroll (17 Juin 2025)
- Correction du défilement dans l'interface utilisateur

## Version 1.1 - Initial Release (6 Juin 2025)
- Version initiale du SMS Gateway
