# 🔧 Correction des Compteurs de Destinataires

## 📋 Description du Problème

Le système de quotas SMS fonctionnait correctement côté backend :
- ✅ Le compteur de SMS (`messages_sent_month`) était bien mis à jour
- ✅ Le compteur de destinataires (`recipients_monthly`) était bien mis à jour dans la base de données
- ❌ **Mais l'interface frontend utilisait le mauvais nom de colonne**

### 🐛 Problème Identifié

Dans `frontend/js/sims.js`, l'interface utilisait :
```javascript
sim.recipients_sent_month  // ❌ Nom incorrect
```

Au lieu de :
```javascript
sim.recipients_monthly     // ✅ Nom correct dans la base de données
```

## 🔧 Corrections Apportées

### 1. Interface Frontend (`frontend/js/sims.js`)

**Ligne 332-338** - Affichage des quotas de destinataires :
```diff
- style="width: ${((sim.recipients_sent_month || 0) / (sim.recipients_monthly_limit || 1)) * 100}%"
+ style="width: ${((sim.recipients_monthly || 0) / (sim.recipients_monthly_limit || 1)) * 100}%"

- aria-valuenow="${sim.recipients_sent_month || 0}"
+ aria-valuenow="${sim.recipients_monthly || 0}"

- <small class="quota-text">${sim.recipients_sent_month || 0}/${sim.recipients_monthly_limit || 0} destinataires</small>
+ <small class="quota-text">${sim.recipients_monthly || 0}/${sim.recipients_monthly_limit || 0} destinataires</small>
```

**Ligne 530** - Modal de configuration des limites :
```diff
- document.getElementById('currentRecipientUsage').textContent = sim.recipients_sent_month || 0;
+ document.getElementById('currentRecipientUsage').textContent = sim.recipients_monthly || 0;
```

### 2. Script de Recalcul

**Nouveau fichier** : `backend/scripts/recalculate-recipient-counters.js`
- Recalcule tous les compteurs de destinataires basés sur l'historique réel
- Corrige les éventuelles incohérences

**Nouveau fichier** : `recalculate-recipients.sh`
- Script shell pour exécuter facilement le recalcul

## 🚀 Comment Utiliser la Correction

### 1. Actualisation Automatique
Les nouveaux SMS envoyés mettront automatiquement à jour les deux compteurs :
- **Compteur SMS** : `messages_sent_month` ✅
- **Compteur Destinataires** : `recipients_monthly` ✅

### 2. Correction des Données Historiques
Pour corriger les compteurs existants, exécutez :

```bash
# Méthode 1 : Script shell
./recalculate-recipients.sh

# Méthode 2 : Direct Node.js
cd backend && node scripts/recalculate-recipient-counters.js
```

### 3. Vérification
1. Ouvrez l'interface web des SIMs
2. Les quotas de destinataires devraient maintenant s'afficher correctement
3. Envoyez un SMS de test - les deux compteurs devraient s'incrémenter

## 📊 Fonctionnement du Système

### Lors de l'Envoi d'un SMS

1. **Insertion dans `sms_history`**
   ```sql
   INSERT INTO sms_history (phone_id, sim_id, recipient, message, status, created_at)
   VALUES (?, ?, ?, ?, 'pending', NOW())
   ```

2. **Mise à jour du compteur SMS**
   ```sql
   UPDATE sims SET messages_sent_month = messages_sent_month + 1 WHERE id = ?
   ```

3. **Mise à jour du compteur de destinataires** (via `updateRecipientCounter`)
   ```sql
   -- Si c'est un nouveau destinataire ce mois-ci
   UPDATE sims SET recipients_monthly = recipients_monthly + 1 WHERE id = ?
   ```

### Logique de Comptage des Destinataires

Le système compte uniquement les **destinataires uniques** par mois :
- Premier SMS vers +33123456789 → Compteur +1
- Deuxième SMS vers +33123456789 → Compteur inchangé
- Premier SMS vers +33987654321 → Compteur +1

## 🔍 Vérification du Bon Fonctionnement

### Via l'Interface Web
1. Accédez à `/sims.html`
2. Vérifiez que les barres de progression des destinataires s'affichent
3. Les pourcentages doivent correspondre aux données réelles

### Via la Base de Données
```sql
SELECT 
    carrier_name,
    phone_number,
    messages_sent_month as SMS_envoyes,
    monthly_limit as limite_SMS,
    recipients_monthly as destinataires_uniques,
    recipients_monthly_limit as limite_destinataires,
    ROUND((recipients_monthly / recipients_monthly_limit) * 100, 2) as pct_destinataires
FROM sims 
ORDER BY carrier_name;
```

## 🎯 Résultat

Après cette correction :
- ✅ L'interface affiche correctement les deux compteurs
- ✅ Les quotas SMS et destinataires sont mis à jour simultanément
- ✅ Le système de basculement automatique fonctionne avec les bons quotas
- ✅ Les API retournent les bonnes données

## 📝 Notes Techniques

- **Colonnes utilisées** : `recipients_monthly` (pas `recipients_sent_month`)
- **Logique** : Comptage des destinataires uniques par mois et par SIM
- **Trigger** : Un trigger MySQL peut aussi être utilisé pour automatiser le comptage
- **Performance** : Le système vérifie l'unicité avant d'incrémenter le compteur 