#!/bin/bash

echo "🔍 Test de l'application SMS Gateway"
echo "===================================="

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

echo -e "\n${YELLOW}📋 Surveillance des logs (Ctrl+C pour arrêter):${NC}\n"

# Capturer les logs avec filtres
/Users/admin/Library/Android/sdk/platform-tools/adb logcat | grep -E "(SMS Gateway|com.smsgateway|SimUtils|MainActivity|SimManagementActivity|FATAL|ERROR|AndroidRuntime)" --color=always 
 
 