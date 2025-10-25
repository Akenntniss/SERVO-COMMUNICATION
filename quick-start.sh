#!/bin/bash

echo "🚀 SMS Gateway - Démarrage Rapide"
echo "================================="

# Couleurs
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

# Vérifier si le serveur est déjà en cours d'exécution
if curl -s http://localhost:3001/health > /dev/null 2>&1; then
    echo -e "${GREEN}✅ Le serveur est déjà en cours d'exécution${NC}"
else
    echo -e "${BLUE}🔄 Démarrage du serveur...${NC}"
    cd backend
    node simple-server.js &
    SERVER_PID=$!
    cd ..
    
    # Attendre que le serveur démarre
    echo -n "⏳ Attente du démarrage du serveur"
    for i in {1..10}; do
        if curl -s http://localhost:3001/health > /dev/null 2>&1; then
            echo -e "\n${GREEN}✅ Serveur démarré avec succès !${NC}"
            break
        fi
        echo -n "."
        sleep 1
    done
    
    if ! curl -s http://localhost:3001/health > /dev/null 2>&1; then
        echo -e "\n${RED}❌ Impossible de démarrer le serveur${NC}"
        exit 1
    fi
fi

echo ""
echo -e "${YELLOW}📱 Instructions pour l'application Android :${NC}"
echo "1. Installez l'APK sur votre téléphone Android"
echo "2. Accordez toutes les permissions demandées"
echo "3. Lancez l'application SMS Gateway"
echo "4. Cliquez sur le bouton '🔧 SIM' pour gérer vos cartes SIM"
echo "5. Configurez les limites selon vos besoins"
echo "6. Cliquez sur 'Enregistrer' pour sauvegarder"

echo ""
echo -e "${YELLOW}🌐 Accès au Dashboard Web :${NC}"
echo "• URL : http://localhost:3001"
echo "• Le dashboard se met à jour automatiquement"
echo "• Vous y verrez vos téléphones et cartes SIM"

echo ""
echo -e "${YELLOW}🧪 Tests disponibles :${NC}"
echo "• Test complet : ./test-sim-management.sh"
echo "• Test système : ./test-system.sh"

echo ""
echo -e "${YELLOW}📚 Documentation :${NC}"
echo "• Guide complet : GUIDE_SIM_MANAGEMENT.md"
echo "• Résumé technique : RESUME_IMPLEMENTATION.md"
echo "• README principal : README.md"

echo ""
echo -e "${GREEN}🎉 Votre système SMS Gateway est prêt !${NC}"
echo ""
echo -e "${BLUE}💡 Conseils :${NC}"
echo "• Commencez par des limites conservatrices (500 SMS/jour)"
echo "• Surveillez les statistiques dans le dashboard"
echo "• Testez d'abord avec quelques SMS"
echo "• Consultez les logs en cas de problème"

echo ""
echo -e "${YELLOW}🔧 Commandes utiles :${NC}"
echo "• Arrêter le serveur : pkill -f 'node.*simple-server'"
echo "• Voir les logs : tail -f backend/logs/server.log"
echo "• Tester l'API : curl http://localhost:3001/api/phones"

echo ""
echo "=================================" 
 
 