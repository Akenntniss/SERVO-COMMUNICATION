#!/bin/bash

echo "🧪 Test de la gestion des SIM - SMS Gateway"
echo "=========================================="

# Couleurs pour l'affichage
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# URL de base
BASE_URL="http://localhost:3001"

# Fonction pour tester une URL
test_endpoint() {
    local url=$1
    local description=$2
    local method=${3:-GET}
    local data=$4
    
    echo -n "🔍 Test: $description... "
    
    if [ "$method" = "POST" ]; then
        response=$(curl -s -w "%{http_code}" -X POST "$url" -H "Content-Type: application/json" -d "$data")
    else
        response=$(curl -s -w "%{http_code}" "$url")
    fi
    
    http_code="${response: -3}"
    body="${response%???}"
    
    if [ "$http_code" -eq 200 ] || [ "$http_code" -eq 201 ]; then
        echo -e "${GREEN}✅ OK${NC}"
        return 0
    else
        echo -e "${RED}❌ ÉCHEC (Code: $http_code)${NC}"
        echo "   Réponse: $body"
        return 1
    fi
}

# Tests
echo -e "${BLUE}📡 Test de connectivité${NC}"
test_endpoint "$BASE_URL/health" "Santé du serveur"

echo -e "\n${BLUE}📱 Test API Téléphones${NC}"
test_endpoint "$BASE_URL/api/phones" "Liste des téléphones"

echo -e "\n${BLUE}📋 Test enregistrement téléphone avec SIM${NC}"
phone_data='{
    "model": "Test Phone SIM",
    "android_version": "13",
    "app_version": "1.0.0",
    "sims": [
        {
            "slot_index": 0,
            "phone_number": "+33987654321",
            "carrier_name": "Orange",
            "subscription_id": 2,
            "is_active": true,
            "daily_limit": 500,
            "monthly_limit": 15000
        },
        {
            "slot_index": 1,
            "phone_number": "+33123456789",
            "carrier_name": "SFR",
            "subscription_id": 3,
            "is_active": true,
            "daily_limit": 1500,
            "monthly_limit": 45000
        }
    ]
}'

test_endpoint "$BASE_URL/api/phones/register" "Enregistrement téléphone dual-SIM" "POST" "$phone_data"

echo -e "\n${BLUE}📊 Vérification des données${NC}"
test_endpoint "$BASE_URL/api/phones" "Liste mise à jour des téléphones"

# Récupérer l'ID du dernier téléphone enregistré
echo -e "\n${BLUE}🔍 Récupération détails téléphone${NC}"
phone_id=$(curl -s "$BASE_URL/api/phones" | jq -r '.data[-1].id // empty')

if [ -n "$phone_id" ]; then
    echo "📱 ID du téléphone: $phone_id"
    test_endpoint "$BASE_URL/api/phones/$phone_id" "Détails du téléphone et SIM"
else
    echo -e "${RED}❌ Impossible de récupérer l'ID du téléphone${NC}"
fi

echo -e "\n${BLUE}📤 Test API Messages${NC}"
test_endpoint "$BASE_URL/api/messages/history" "Historique des messages"

echo -e "\n${GREEN}🎉 Tests terminés !${NC}"
echo "=========================================="
echo "💡 Pour tester l'application Android:"
echo "   1. Ouvrez l'application SMS Gateway"
echo "   2. Cliquez sur '🔧 SIM' pour gérer les cartes SIM"
echo "   3. Configurez les limites et cliquez sur 'Enregistrer'"
echo "   4. Vérifiez que les données apparaissent dans le dashboard web" 
 
 