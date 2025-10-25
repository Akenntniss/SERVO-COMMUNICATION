#!/bin/bash

echo "🚀 Démarrage du SMS Gateway..."
echo "================================"

# Vérifier si Node.js est installé
if ! command -v node &> /dev/null; then
    echo "❌ Node.js n'est pas installé"
    exit 1
fi

# Vérifier si les dépendances sont installées
if [ ! -d "node_modules" ]; then
    echo "📦 Installation des dépendances..."
    npm install
fi

# Arrêter les processus existants
echo "🛑 Arrêt des processus existants..."
pkill -f "node.*simple-server" 2>/dev/null || true

# Attendre un peu
sleep 2

# Démarrer le serveur
echo "🔥 Démarrage du serveur SMS Gateway..."
echo "📡 Serveur disponible sur: http://localhost:3001"
echo "🌐 Dashboard web: http://localhost:3001"
echo "🏥 Health check: http://localhost:3001/health"
echo ""
echo "Appuyez sur Ctrl+C pour arrêter le serveur"
echo "================================"

node backend/simple-server.js 
 
 