#!/bin/bash

echo "🔧 Correction des duplications Kotlin..."

# Fonction pour corriger un fichier Kotlin
fix_kotlin_file() {
    local file=$1
    echo "🔍 Vérification de $file..."
    
    # Vérifier s'il y a des duplications (imports en milieu de fichier)
    if grep -n "^import " "$file" | tail -n +2 | head -n 1 | grep -q .; then
        echo "⚠️  Duplication détectée dans $file"
        
        # Trouver la première ligne d'import dupliquée
        first_dup_line=$(grep -n "^import " "$file" | tail -n +2 | head -n 1 | cut -d: -f1)
        
        if [ -n "$first_dup_line" ]; then
            # Garder seulement les lignes avant la première duplication
            head -n $((first_dup_line - 1)) "$file" > "${file}.tmp"
            mv "${file}.tmp" "$file"
            echo "✅ $file corrigé"
        fi
    else
        echo "✅ $file OK"
    fi
}

# Parcourir tous les fichiers Kotlin
find app/src/main/java -name "*.kt" | while read file; do
    fix_kotlin_file "$file"
done

echo "🎉 Correction terminée!" 
 
 