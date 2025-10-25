#!/bin/bash

echo "🧪 Test du système SMS Gateway"
echo "=============================="

# Couleurs pour l'affichage
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Fonction pour afficher les résultats
print_result() {
    if [ $1 -eq 0 ]; then
        echo -e "${GREEN}✅ $2${NC}"
    else
        echo -e "${RED}❌ $2${NC}"
    fi
}

# Test 1: Vérifier si le serveur répond
echo -e "${YELLOW}🔍 Test 1: Vérification du serveur...${NC}"
curl -s http://localhost:3001/health > /dev/null
print_result $? "Serveur accessible sur http://localhost:3001"

# Test 2: Vérifier l'API de santé
echo -e "${YELLOW}🔍 Test 2: API de santé...${NC}"
HEALTH_RESPONSE=$(curl -s http://localhost:3001/health)
if echo "$HEALTH_RESPONSE" | grep -q "success.*true"; then
    print_result 0 "API de santé fonctionnelle"
else
    print_result 1 "API de santé défaillante"
fi

# Test 3: Vérifier la base de données
echo -e "${YELLOW}🔍 Test 3: Connexion base de données...${NC}"
if echo "$HEALTH_RESPONSE" | grep -q "database.*connected"; then
    print_result 0 "Base de données connectée"
else
    print_result 1 "Problème de connexion base de données"
fi

# Test 4: Vérifier l'API des téléphones
echo -e "${YELLOW}🔍 Test 4: API téléphones...${NC}"
curl -s http://localhost:3001/api/phones > /dev/null
print_result $? "API téléphones accessible"

# Test 5: Vérifier l'API des messages
echo -e "${YELLOW}🔍 Test 5: API messages...${NC}"
curl -s http://localhost:3001/api/messages/history > /dev/null
print_result $? "API messages accessible"

# Test 6: Vérifier le dashboard web
echo -e "${YELLOW}🔍 Test 6: Dashboard web...${NC}"
curl -s http://localhost:3001/ | grep -q "SMS GATEWAY" > /dev/null
print_result $? "Dashboard web accessible"

# Test 7: Vérifier les fichiers Android
echo -e "${YELLOW}🔍 Test 7: Fichiers Android...${NC}"
if [ -f "android/app/build.gradle" ] && [ -f "android/app/src/main/java/com/smsgateway/app/ui/MainActivity.kt" ]; then
    print_result 0 "Projet Android présent"
else
    print_result 1 "Fichiers Android manquants"
fi

# Test 8: Vérifier la configuration
echo -e "${YELLOW}🔍 Test 8: Configuration...${NC}"
if [ -f "backend/config/database.js" ] && [ -f "package.json" ]; then
    print_result 0 "Fichiers de configuration présents"
else
    print_result 1 "Fichiers de configuration manquants"
fi

echo ""
echo "=============================="
echo -e "${GREEN}🎉 Tests terminés !${NC}"
echo ""
echo "📊 Résumé des URLs:"
echo "   🌐 Dashboard: http://localhost:3001"
echo "   🏥 Health:    http://localhost:3001/health"
echo "   📱 Phones:    http://localhost:3001/api/phones"
echo "   📤 Messages:  http://localhost:3001/api/messages"
echo ""
echo "📱 Pour tester l'application Android:"
echo "   1. Ouvrir Android Studio"
echo "   2. Importer le projet depuis ./android/"
echo "   3. Compiler et installer sur un appareil"
echo "" 
 
 