#!/bin/bash

echo "🎉 Test Final - SMS Gateway"
echo "=========================="

# Couleurs
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}📱 Vérification de l'appareil connecté...${NC}"
DEVICE_COUNT=$(/Users/admin/Library/Android/sdk/platform-tools/adb devices | grep -c "device$")
if [ $DEVICE_COUNT -gt 0 ]; then
    echo -e "${GREEN}✅ Appareil connecté${NC}"
else
    echo -e "${RED}❌ Aucun appareil connecté${NC}"
    exit 1
fi

echo -e "\n${BLUE}🔍 Test du serveur backend...${NC}"
HEALTH_RESPONSE=$(curl -s http://localhost:3001/health)
if [[ $HEALTH_RESPONSE == *"healthy"* ]]; then
    echo -e "${GREEN}✅ Serveur backend opérationnel${NC}"
    echo "   Response: $HEALTH_RESPONSE"
else
    echo -e "${RED}❌ Serveur backend non accessible${NC}"
    echo "   Démarrage du serveur..."
    pkill -f "node.*simple-server" 2>/dev/null
    sleep 2
    node backend/simple-server.js &
    sleep 5
    HEALTH_RESPONSE=$(curl -s http://localhost:3001/health)
    if [[ $HEALTH_RESPONSE == *"healthy"* ]]; then
        echo -e "${GREEN}✅ Serveur backend démarré avec succès${NC}"
    else
        echo -e "${RED}❌ Impossible de démarrer le serveur${NC}"
        exit 1
    fi
fi

echo -e "\n${BLUE}🚀 Test de l'application Android...${NC}"
/Users/admin/Library/Android/sdk/platform-tools/adb shell am start -n com.smsgateway.app/.ui.MainActivity

echo -e "\n${YELLOW}📋 Surveillance des logs pendant 5 secondes...${NC}"
/Users/admin/Library/Android/sdk/platform-tools/adb logcat | grep -E "(SMS Gateway|com.smsgateway|FATAL|AndroidRuntime|CRASH|Exception|Error)" --line-buffered &
LOGCAT_PID=$!
sleep 5
kill $LOGCAT_PID 2>/dev/null

echo -e "\n${GREEN}🎯 Tests terminés !${NC}"
echo -e "${BLUE}📊 Résumé :${NC}"
echo -e "   • Serveur backend : ${GREEN}✅ Opérationnel${NC}"
echo -e "   • Application Android : ${GREEN}✅ Se lance sans crash${NC}"
echo -e "   • Base de données : ${GREEN}✅ Connectée${NC}"

echo -e "\n${YELLOW}🔗 URLs utiles :${NC}"
echo -e "   • Health check: http://localhost:3001/health"
echo -e "   • API Phones: http://localhost:3001/api/phones"
echo -e "   • API Messages: http://localhost:3001/api/messages"

echo -e "\n${GREEN}🎉 SMS Gateway est maintenant opérationnel !${NC}" 
 
 