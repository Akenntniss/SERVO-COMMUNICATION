# Changelog - SMS Gateway App

## Version 1.1 (Juin 2025)

### 🆕 Nouvelles fonctionnalités
- **Configuration serveur mise à jour** : L'application pointe maintenant vers le serveur de production (168.231.85.4:3001)
- **Interface web améliorée** : Nouveaux boutons d'action pour la gestion des SIMs
- **Modal de gestion des limites** : Interface dédiée pour modifier les limites d'envoi SMS et destinataires
- **Gestion utilisateurs** : API complète pour la gestion des utilisateurs avec authentification

### 🔧 Améliorations techniques
- **API utilisateurs** : Endpoints CRUD complets avec gestion des mots de passe
- **Correction des erreurs JavaScript** : Résolution des problèmes d'interaction avec les modaux
- **Optimisation du cache** : Amélioration du chargement des ressources frontend
- **Configuration serveur** : Mise à jour des URLs par défaut pour pointer vers le serveur de production

### 🎨 Interface utilisateur
- **Boutons d'action SIMs** : 
  - Default (définir/retirer SIM par défaut)
  - Désactiver/Activer (basculer le statut)
  - Limites (modifier les quotas)
  - Supprimer (supprimer la SIM)
- **Modal des limites** : Interface intuitive pour configurer les limites mensuelles
- **Page de téléchargement** : Nouvelle page de présentation pour l'APK

### 🐛 Corrections de bugs
- **Modal non cliquable** : Résolution des problèmes de z-index et d'interaction
- **Erreurs API 404** : Correction des endpoints manquants
- **Cache JavaScript** : Résolution des problèmes de mise à jour du code

### 📱 Application Android
- **Serveur par défaut** : Configuration automatique vers 168.231.85.4:3001
- **Version mise à jour** : Passage en version 1.1 (versionCode 2)

### 🌐 Déploiement
- **APK disponible** : Téléchargement direct via http://168.231.85.4/download/smsgateway.apk
- **Page de téléchargement** : Interface moderne avec informations détaillées
- **Serveur de production** : Déploiement complet sur VPS

---

## Version 1.0 (Mai 2025)

### 🎉 Version initiale
- **Application Android** : Gestion des SIMs et envoi de SMS
- **Interface web** : Dashboard de gestion et configuration
- **API REST** : Endpoints pour SIMs, téléphones et messages
- **Base de données** : Structure complète avec MySQL
- **Authentification** : Système de gestion des utilisateurs

### 📋 Fonctionnalités de base
- Gestion multi-SIM
- Envoi de SMS via API
- Statistiques et quotas
- Configuration serveur
- Interface de monitoring

---

## Installation et mise à jour

### Pour mettre à jour vers la version 1.1 :
1. Téléchargez la nouvelle APK : http://168.231.85.4/download/smsgateway.apk
2. Désinstallez l'ancienne version (optionnel)
3. Installez la nouvelle APK
4. L'application se connectera automatiquement au nouveau serveur

### Configuration requise :
- Android 6.0+ (API 23)
- Permissions SMS et Téléphone
- Connexion Internet
- 10 MB d'espace libre 