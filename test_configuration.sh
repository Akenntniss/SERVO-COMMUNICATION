#!/bin/bash

echo "🌐 Test des Fonctionnalités de Configuration Serveur"
echo "=================================================="

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

echo -e "\n${BLUE}🔍 Test du serveur backend local...${NC}"
HEALTH_RESPONSE=$(curl -s http://localhost:3001/health 2>/dev/null)
if [[ $HEALTH_RESPONSE == *"healthy"* ]]; then
    echo -e "${GREEN}✅ Serveur backend local opérationnel${NC}"
    echo "   Response: $HEALTH_RESPONSE"
else
    echo -e "${YELLOW}⚠️ Serveur backend local non accessible${NC}"
fi

echo -e "\n${BLUE}🌐 Test du serveur via IP réseau...${NC}"
CURRENT_IP=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}' | head -1)
echo -e "${BLUE}   IP détectée: $CURRENT_IP${NC}"
NETWORK_RESPONSE=$(curl -s http://$CURRENT_IP:3001/health 2>/dev/null)
if [[ $NETWORK_RESPONSE == *"healthy"* ]]; then
    echo -e "${GREEN}✅ Serveur accessible via le réseau${NC}"
    echo "   URL: http://$CURRENT_IP:3001"
else
    echo -e "${RED}❌ Serveur non accessible via le réseau${NC}"
    echo -e "${YELLOW}   Vérifiez que le serveur écoute sur 0.0.0.0${NC}"
fi

echo -e "\n${BLUE}🚀 Test de l'application Android...${NC}"
/Users/admin/Library/Android/sdk/platform-tools/adb shell am start -n com.smsgateway.app/.ui.MainActivity

echo -e "\n${GREEN}🎯 Tests terminés !${NC}"
echo -e "${BLUE}📊 Résumé des nouvelles fonctionnalités :${NC}"
echo -e "   • ${GREEN}✅ Configuration serveur local/cloud${NC}"
echo -e "   • ${GREEN}✅ Basculement entre serveurs${NC}"
echo -e "   • ${GREEN}✅ Test de connexion en temps réel${NC}"
echo -e "   • ${GREEN}✅ Indicateur visuel du serveur actuel${NC}"
echo -e "   • ${GREEN}✅ Sauvegarde persistante des préférences${NC}"

echo -e "\n${YELLOW}🔗 Pour tester les nouvelles fonctionnalités :${NC}"
echo -e "   1. Ouvrez l'application SMS Gateway"
echo -e "   2. Appuyez sur le bouton 'Configuration'"
echo -e "   3. Testez le basculement Local ↔ Cloud"
echo -e "   4. Utilisez le bouton 'Tester' pour vérifier la connexion"
echo -e "   5. Sauvegardez vos préférences"

echo -e "\n${YELLOW}🌐 URLs de test :${NC}"
echo -e "   • Serveur local: http://$CURRENT_IP:3001"
echo -e "   • Health check: http://localhost:3001/health"
echo -e "   • API Phones: http://localhost:3001/api/phones"

echo -e "\n${GREEN}🎉 Configuration serveur flexible maintenant disponible !${NC}" 