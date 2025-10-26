# CORRECTION SYSTÈME DE RETRY

## Problème identifié
Quand un SMS échouait, le système désactivait bien la SIM défaillante, mais ne définissait pas immédiatement une nouvelle SIM par défaut. Résultat : le système de retry ne pouvait pas créer un nouveau SMS car aucune SIM n'était marquée comme "par défaut".

## Solution implémentée

### 1. Nouvelle fonction `setNewDefaultSimAfterFailure`
- **Appelée immédiatement** après la désactivation d'une SIM défaillante
- **Cherche SEULEMENT parmi les SIMs déjà actives** (ne pas activer de nouvelles SIMs)
- **Peu importe le téléphone** : Prend la première SIM active disponible, sans favoriser le même téléphone

### 2. Logique corrigée dans `handleFailedMessage`
```javascript
// 1. Désactiver la SIM défaillante
await pool.execute('UPDATE sims SET is_active = 0, is_default = 0 WHERE id = ?', [message.sim_id]);

// 2. IMMÉDIATEMENT définir une nouvelle SIM par défaut
await this.setNewDefaultSimAfterFailure(message.phone_id, message.sim_id);

// 3. Le retry peut maintenant fonctionner avec la nouvelle SIM par défaut
```

### 3. Simplification de `retryWithDifferentSim`
- **Plus besoin** de chercher une SIM alternative
- **Utilise directement** la SIM par défaut qui vient d'être définie
- **Crée immédiatement** le nouveau message avec cette SIM

## Comportement attendu

1. **SMS échoue** → SIM désactivée
2. **Immédiatement** → Nouvelle SIM par défaut définie (parmi les actives)
3. **Automatiquement** → Nouveau SMS créé avec la nouvelle SIM par défaut
4. **Résultat** → Retry fonctionne sans interruption

## Contraintes respectées
✅ **Seulement SIMs déjà actives** - Pas d'activation de nouvelles SIMs  
✅ **Peu importe le téléphone** - Prend la première SIM active disponible  
✅ **Une seule SIM par défaut** - Retire le statut des autres avant d'assigner  
✅ **Logique simplifiée** - Pas de priorité complexe, juste la première SIM active  

## Test de validation
1. Envoyer un SMS qui échoue
2. **Résultat attendu** : 
   - SIM défaillante désactivée ❌
   - Nouvelle SIM par défaut définie ✅
   - Nouveau SMS créé automatiquement 📝

Date : 26 octobre 2025








