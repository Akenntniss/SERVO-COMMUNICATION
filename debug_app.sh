#!/bin/bash

echo "🔍 Diagnostic SMS Gateway - Surveillance des erreurs"
echo "=================================================="

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

echo -e "\n${YELLOW}⚠️  Maintenant, lancez l'application SMS Gateway sur votre téléphone${NC}"
echo -e "${YELLOW}📱 Appuyez sur Entrée une fois l'application lancée...${NC}"
read -p ""

echo -e "\n${BLUE}📋 Capture des logs d'erreur...${NC}"
echo -e "${GREEN}Logs en temps réel (Ctrl+C pour arrêter):${NC}\n"

# Capturer les logs avec filtres pour les erreurs
/Users/admin/Library/Android/sdk/platform-tools/adb logcat | grep -E "(SMS Gateway|com.smsgateway|AndroidRuntime|FATAL|ERROR|CRASH|Exception|SimUtils|MainActivity)" --color=always 
 
 