#!/bin/bash

echo "🔧 Script de recalcul des compteurs de destinataires"
echo "================================================="

# Vérifier si Node.js est installé
if ! command -v node &> /dev/null; then
    echo "❌ Node.js n'est pas installé"
    exit 1
fi

# Vérifier si le fichier de script existe
if [ ! -f "backend/scripts/recalculate-recipient-counters.js" ]; then
    echo "❌ Script de recalcul non trouvé"
    exit 1
fi

echo "🚀 Démarrage du recalcul des compteurs de destinataires..."
echo ""

# Exécuter le script Node.js
cd backend && node scripts/recalculate-recipient-counters.js

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Recalcul terminé avec succès !"
    echo ""
    echo "📝 Actions effectuées :"
    echo "   • Comptage des destinataires uniques par SIM pour le mois en cours"
    echo "   • Mise à jour des compteurs recipients_monthly dans la base de données"
    echo "   • Synchronisation avec l'historique réel des SMS envoyés"
    echo ""
    echo "🎯 Résultat : Les quotas de destinataires sont maintenant à jour"
    echo "              et s'afficheront correctement dans l'interface web"
else
    echo ""
    echo "❌ Le recalcul a échoué"
    exit 1
fi 