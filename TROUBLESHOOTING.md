# 🔧 Guide de Dépannage - SMS Gateway

## 🚨 Application qui Crash au Démarrage

### 📋 **Étapes de Diagnostic**

#### 1. **Vérifier le Serveur Backend**
```bash
# Démarrer le serveur
node backend/simple-server.js

# Vérifier qu'il fonctionne
curl http://localhost:3001/health
```

#### 2. **Capturer les Logs Android**
```bash
# Exécuter le script de diagnostic
./debug_app.sh

# Ou manuellement :
/Users/admin/Library/Android/sdk/platform-tools/adb logcat -c
/Users/admin/Library/Android/sdk/platform-tools/adb logcat | grep -E "(SMS Gateway|com.smsgateway|AndroidRuntime|FATAL|ERROR)"
```

#### 3. **Vérifier les Permissions**
L'application nécessite ces permissions :
- ✅ `SEND_SMS` - Envoyer des SMS
- ✅ `RECEIVE_SMS` - Recevoir des SMS  
- ✅ `READ_SMS` - Lire les SMS
- ✅ `READ_PHONE_STATE` - Lire l'état du téléphone

### 🔍 **Problèmes Courants et Solutions**

#### **Problème 1: Crash au démarrage**
**Symptômes:** L'application se ferme immédiatement après ouverture

**Solutions:**
1. **Vérifier les permissions:**
   - Ouvrez Paramètres > Applications > SMS Gateway > Permissions
   - Accordez toutes les permissions demandées

2. **Vérifier la connectivité réseau:**
   - L'application essaie de se connecter à `http://192.168.1.54:3001`
   - Assurez-vous que votre téléphone est sur le même réseau WiFi

3. **Redémarrer l'application:**
   ```bash
   # Forcer l'arrêt de l'application
   /Users/admin/Library/Android/sdk/platform-tools/adb shell am force-stop com.smsgateway.app
   
   # Relancer l'application
   /Users/admin/Library/Android/sdk/platform-tools/adb shell am start -n com.smsgateway.app/.ui.MainActivity
   ```

#### **Problème 2: Erreur de connexion réseau**
**Symptômes:** "Erreur d'enregistrement: Failed to connect"

**Solutions:**
1. **Vérifier l'adresse IP du serveur:**
   ```bash
   # Trouver votre adresse IP
   ifconfig | grep "inet " | grep -v 127.0.0.1
   ```

2. **Modifier l'URL dans l'application:**
   - Éditez `android/app/src/main/java/com/smsgateway/app/data/api/ApiClient.kt`
   - Changez `BASE_URL` avec votre adresse IP
   - Recompilez et réinstallez

#### **Problème 3: Aucune SIM détectée**
**Symptômes:** "⚠️ Aucune SIM détectée"

**Solutions:**
1. **Vérifier les permissions téléphone:**
   - Paramètres > Applications > SMS Gateway > Permissions
   - Activer "Téléphone"

2. **Redémarrer la détection:**
   - Appuyez sur "Actualiser" dans l'application

### 🛠️ **Commandes de Dépannage**

#### **Réinstaller l'Application**
```bash
cd android
./gradlew clean assembleDebug
/Users/admin/Library/Android/sdk/platform-tools/adb install -r app/build/outputs/apk/debug/app-debug.apk
```

#### **Voir les Logs en Temps Réel**
```bash
/Users/admin/Library/Android/sdk/platform-tools/adb logcat | grep "com.smsgateway"
```

#### **Tester la Connectivité**
```bash
# Depuis votre téléphone, testez l'accès au serveur
# Ouvrez un navigateur et allez à: http://192.168.1.54:3001
```

#### **Redémarrer Complètement**
```bash
# 1. Arrêter le serveur
pkill -f "node.*simple-server"

# 2. Désinstaller l'application
/Users/admin/Library/Android/sdk/platform-tools/adb uninstall com.smsgateway.app

# 3. Redémarrer le serveur
node backend/simple-server.js &

# 4. Réinstaller l'application
cd android
./gradlew clean assembleDebug
/Users/admin/Library/Android/sdk/platform-tools/adb install app/build/outputs/apk/debug/app-debug.apk
```

### 📱 **Configuration Réseau**

#### **Pour Émulateur Android:**
```kotlin
private const val BASE_URL = "http://10.0.2.2:3001/"
```

#### **Pour Appareil Physique:**
```kotlin
private const val BASE_URL = "http://[VOTRE_IP]:3001/"
```

### 🔍 **Logs Importants à Surveiller**

- `SimUtils: 🔍 Début de la détection des cartes SIM...`
- `MainActivity: ✅ Téléphone enregistré avec succès`
- `AndroidRuntime: FATAL EXCEPTION` (erreurs critiques)
- `com.smsgateway: NetworkSecurityPolicy` (problèmes réseau)

### 📞 **Si le Problème Persiste**

1. **Capturer les logs complets:**
   ```bash
   /Users/admin/Library/Android/sdk/platform-tools/adb logcat > crash_logs.txt
   ```

2. **Vérifier la version Android:**
   - L'application nécessite Android 6.0+ (API 23+)

3. **Tester sur un autre appareil:**
   - Si possible, testez sur un autre téléphone Android

---

**💡 Conseil:** Gardez le terminal ouvert avec les logs pendant que vous testez l'application pour voir les erreurs en temps réel. 
 
 