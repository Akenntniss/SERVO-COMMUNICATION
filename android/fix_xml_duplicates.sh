#!/bin/bash

echo "🔧 Correction des duplications XML..."

# Répertoire des drawables
DRAWABLE_DIR="app/src/main/res/drawable"

# Fonction pour corriger un fichier XML
fix_xml_file() {
    local file=$1
    echo "🔍 Vérification de $file..."
    
    # Compter le nombre de balises <vector
    vector_count=$(grep -c "<vector" "$file")
    
    if [ "$vector_count" -gt 1 ]; then
        echo "⚠️  Duplication détectée dans $file (${vector_count} balises vector)"
        
        # Créer un fichier temporaire avec seulement la première occurrence
        awk '
        /<vector/ { 
            if (vector_found) next
            vector_found = 1
        }
        /<\/vector>/ {
            if (vector_found && !vector_closed) {
                vector_closed = 1
                print
                next
            }
            if (vector_closed) next
        }
        { if (!vector_closed || !vector_found) print }
        ' "$file" > "${file}.tmp"
        
        # Remplacer le fichier original
        mv "${file}.tmp" "$file"
        echo "✅ $file corrigé"
    else
        echo "✅ $file OK"
    fi
}

# Parcourir tous les fichiers XML dans le répertoire drawable
for file in "$DRAWABLE_DIR"/*.xml; do
    if [ -f "$file" ]; then
        fix_xml_file "$file"
    fi
done

echo "🎉 Correction terminée!" 
 
 