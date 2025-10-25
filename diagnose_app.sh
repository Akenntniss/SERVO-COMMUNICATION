#!/bin/bash

echo "🔍 Diagnostic de l'application SMS Gateway"
echo "=========================================="

# Couleurs
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}📱 Vérification de l'appareil connecté...${NC}"
/Users/admin/Library/Android/sdk/platform-tools/adb devices

echo -e "\n${BLUE}🔄 Nettoyage des logs...${NC}"
/Users/admin/Library/Android/sdk/platform-tools/adb logcat -c

echo -e "\n${BLUE}🚀 Lancement de l'application...${NC}"
/Users/admin/Library/Android/sdk/platform-tools/adb shell am start -n com.smsgateway.app/.ui.MainActivity

echo -e "\n${YELLOW}📋 Capture des logs pendant 10 secondes (Ctrl+C pour arrêter)...${NC}\n"

# Capturer les logs avec filtres spécifiques pour les crashes
/Users/admin/Library/Android/sdk/platform-tools/adb logcat | grep -E "(SMS Gateway|com.smsgateway|FATAL|AndroidRuntime|CRASH|Exception|Error|SimUtils|MainActivity)" --line-buffered &

# PID du processus logcat
LOGCAT_PID=$!

# Attendre 10 secondes puis tuer le processus
sleep 10
kill $LOGCAT_PID 2>/dev/null

echo -e "\n${GREEN}✅ Diagnostic terminé${NC}"
echo -e "${YELLOW}💡 Si l'application crash, les erreurs apparaîtront ci-dessus${NC}" 
 
 