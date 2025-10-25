// Configuration
const API_URL = 'http://168.231.85.4:3001/api';
const REFRESH_INTERVAL = 30000; // 30 secondes

// Éléments DOM
const elements = {
    simsList: document.getElementById('simsList'),
    statusFilter: document.getElementById('statusFilter'),
    defaultFilter: document.getElementById('defaultFilter'),
    searchInput: document.getElementById('searchInput'),
    sortBy: document.getElementById('sortBy'),
    refreshBtn: document.getElementById('refreshBtn'),
    addSimForm: document.getElementById('addSimForm'),
    saveSimBtn: document.getElementById('saveSimBtn'),
    configSimForm: document.getElementById('configSimForm'),
    saveConfigBtn: document.getElementById('saveConfigBtn'),
    activeSimsCount: document.getElementById('activeSimsCount'),
    todaySmsCount: document.getElementById('todaySmsCount'),
    averageQuota: document.getElementById('averageQuota'),
    defaultSimInfo: document.getElementById('defaultSimInfo'),
    autoFailoverToggle: document.getElementById('autoFailoverToggle'),
    autoFailoverLabel: document.getElementById('autoFailoverLabel'),
    autoFailoverStatus: document.getElementById('autoFailoverStatus'),
    saveFailoverConfigBtn: document.getElementById('saveFailoverConfigBtn'),
    autoFailoverForm: document.getElementById('autoFailoverForm'),
    failoverHistory: document.getElementById('failoverHistory')
};

// État de l'application
let sims = [];
let filteredSims = [];
let phones = [];
let autoFailoverConfig = {};

// Initialisation
document.addEventListener('DOMContentLoaded', () => {
    console.log('🚀 DOM chargé, initialisation...');
    console.log('📦 Bootstrap disponible:', typeof bootstrap !== 'undefined');
    console.log('🔍 Éléments trouvés:', {
        configSimForm: !!elements.configSimForm,
        configSimModal: !!document.getElementById('configSimModal')
    });
    
    // Test des fonctions globales
    console.log('🔧 Fonctions globales disponibles:', {
        showConfig: typeof window.showConfig,
        toggleDefault: typeof window.toggleDefault,
        toggleStatus: typeof window.toggleStatus,
        deleteSim: typeof window.deleteSim
    });
    
    loadPhones();
    loadSims();
    loadAutoFailoverConfig();
    setupEventListeners();
    setInterval(() => {
        loadSims();
        loadAutoFailoverConfig();
    }, REFRESH_INTERVAL);
});

// Configuration des écouteurs d'événements
function setupEventListeners() {
    elements.statusFilter.addEventListener('change', filterSims);
    elements.defaultFilter.addEventListener('change', filterSims);
    elements.searchInput.addEventListener('input', filterSims);
    elements.sortBy.addEventListener('change', sortSims);
    elements.refreshBtn.addEventListener('click', () => {
        loadPhones();
        loadSims();
        loadAutoFailoverConfig();
    });
    elements.saveSimBtn.addEventListener('click', saveSim);
    elements.saveConfigBtn.addEventListener('click', saveConfig);
    elements.autoFailoverToggle.addEventListener('change', toggleAutoFailover);
    elements.saveFailoverConfigBtn.addEventListener('click', saveAutoFailoverConfig);
    
    // Bouton pour sauvegarder les limites
    const saveLimitsBtn = document.getElementById('saveLimitsBtn');
    if (saveLimitsBtn) {
        saveLimitsBtn.addEventListener('click', saveLimits);
    }
}

// Chargement des téléphones
async function loadPhones() {
    try {
        const response = await fetch(`${API_URL}/phones`);
        const result = await response.json();
        phones = result.success ? result.data : [];
        updatePhoneSelect();
    } catch (error) {
        console.error('Erreur lors du chargement des téléphones:', error);
        showError('Erreur de chargement des téléphones');
        phones = [];
    }
}

// Mise à jour du select des téléphones
function updatePhoneSelect() {
    const select = elements.addSimForm.querySelector('[name="device_id"]');
    select.innerHTML = '<option value="">Sélectionner un téléphone</option>' +
        phones.map(phone => `
            <option value="${phone.id}">${phone.model} (${phone.id})</option>
        `).join('');
}

// Chargement des SIMs
async function loadSims() {
    try {
        const simsResponse = await fetch(`${API_URL}/sims`);
        const simsResult = await simsResponse.json();
        sims = simsResult.success ? simsResult.data : [];
        
        // Calculer les statistiques
        const stats = calculateStats();
        updateStats(stats);
        filterSims();
    } catch (error) {
        console.error('Erreur lors du chargement des SIMs:', error);
        showError('Erreur de chargement des SIMs');
        sims = [];
        filterSims();
    }
}

// Calcul des statistiques
function calculateStats() {
    const activeSims = sims.filter(s => s.is_active);
    const defaultSim = sims.find(s => s.is_default);
    
    return {
        active_sims: activeSims.length,
        today_sms: sims.reduce((sum, s) => sum + (s.messages_sent_month || 0), 0),
        average_quota: sims.length > 0 ? Math.round(sims.reduce((sum, s) => {
            const quota = ((s.messages_sent_month || 0) / (s.monthly_limit || 1)) * 100;
            return sum + quota;
        }, 0) / sims.length) : 0,
        default_sim: defaultSim ? `${defaultSim.carrier_name || 'N/A'} (${defaultSim.phone_number || 'N/A'})` : 'Aucune'
    };
}

// Mise à jour des statistiques
function updateStats(stats) {
    elements.activeSimsCount.textContent = stats.active_sims;
    elements.todaySmsCount.textContent = stats.today_sms;
    elements.averageQuota.textContent = `${stats.average_quota}%`;
    elements.defaultSimInfo.textContent = stats.default_sim;
}

// Chargement de la configuration du basculement automatique
async function loadAutoFailoverConfig() {
    try {
        const response = await fetch(`${API_URL}/system/config`);
        const result = await response.json();
        
        if (result.success) {
            const config = result.data;
            autoFailoverConfig = {
                enabled: config.auto_failover_enabled === 'true',
                threshold: parseInt(config.failover_threshold) || 90,
                checkInterval: parseInt(config.failover_check_interval) || 5,
                notifyOnFailover: config.notify_on_failover === 'true'
            };
            
            updateAutoFailoverUI();
        }
    } catch (error) {
        console.error('Erreur lors du chargement de la configuration:', error);
    }
}

// Mise à jour de l'interface du basculement automatique
function updateAutoFailoverUI() {
    elements.autoFailoverToggle.checked = autoFailoverConfig.enabled;
    elements.autoFailoverLabel.textContent = autoFailoverConfig.enabled ? 'Activé' : 'Désactivé';
    elements.autoFailoverStatus.textContent = autoFailoverConfig.enabled 
        ? `Basculement automatique activé (seuil: ${autoFailoverConfig.threshold}%)`
        : 'Basculement automatique désactivé';
    
    // Mettre à jour le formulaire de configuration
    if (elements.autoFailoverForm) {
        document.getElementById('enableAutoFailover').checked = autoFailoverConfig.enabled;
        document.getElementById('failoverThreshold').value = autoFailoverConfig.threshold;
        document.getElementById('checkInterval').value = autoFailoverConfig.checkInterval;
        document.getElementById('notifyOnFailover').checked = autoFailoverConfig.notifyOnFailover;
    }
}

// Basculement du mode automatique
async function toggleAutoFailover() {
    const enabled = elements.autoFailoverToggle.checked;
    
    try {
        const response = await fetch(`${API_URL}/system/config`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                auto_failover_enabled: enabled.toString()
            })
        });
        
        if (response.ok) {
            autoFailoverConfig.enabled = enabled;
            updateAutoFailoverUI();
            showSuccess(`Basculement automatique ${enabled ? 'activé' : 'désactivé'}`);
        } else {
            throw new Error('Erreur lors de la mise à jour');
        }
    } catch (error) {
        console.error('Erreur:', error);
        showError('Erreur lors de la mise à jour du basculement automatique');
        // Remettre l'état précédent
        elements.autoFailoverToggle.checked = !enabled;
    }
}

// Sauvegarde de la configuration du basculement automatique
async function saveAutoFailoverConfig() {
    const config = {
        auto_failover_enabled: document.getElementById('enableAutoFailover').checked.toString(),
        failover_threshold: document.getElementById('failoverThreshold').value,
        failover_check_interval: document.getElementById('checkInterval').value,
        notify_on_failover: document.getElementById('notifyOnFailover').checked.toString()
    };
    
    try {
        const response = await fetch(`${API_URL}/system/config`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(config)
        });
        
        if (response.ok) {
            showSuccess('Configuration du basculement automatique mise à jour');
            bootstrap.Modal.getInstance(document.getElementById('autoFailoverModal')).hide();
            loadAutoFailoverConfig();
        } else {
            throw new Error('Erreur lors de la mise à jour');
        }
    } catch (error) {
        console.error('Erreur:', error);
        showError('Erreur lors de la sauvegarde de la configuration');
    }
}

// Filtrage des SIMs
function filterSims() {
    const status = elements.statusFilter.value;
    const defaultFilter = elements.defaultFilter.value;
    const search = elements.searchInput.value.toLowerCase();
    
    filteredSims = sims.filter(sim => {
        const matchesStatus = !status || 
            (status === 'active' && sim.is_active) ||
            (status === 'inactive' && !sim.is_active);
            
        const matchesDefault = !defaultFilter ||
            (defaultFilter === 'default' && sim.is_default) ||
            (defaultFilter === 'non-default' && !sim.is_default);
            
        const matchesSearch = !search || 
            (sim.phone_number && sim.phone_number.toLowerCase().includes(search)) ||
            (sim.carrier_name && sim.carrier_name.toLowerCase().includes(search));
            
        return matchesStatus && matchesDefault && matchesSearch;
    });
    
    sortSims();
}

// Tri des SIMs
function sortSims() {
    const sortBy = elements.sortBy.value;
    
    filteredSims.sort((a, b) => {
        switch (sortBy) {
            case 'messages_sent':
                return (b.messages_sent_month || 0) - (a.messages_sent_month || 0);
            case 'phone_number':
                return (a.phone_number || '').localeCompare(b.phone_number || '');
            case 'operator':
                return (a.carrier_name || '').localeCompare(b.carrier_name || '');
            case 'is_default':
                return (b.is_default ? 1 : 0) - (a.is_default ? 1 : 0);
            default:
                return 0;
        }
    });
    
    renderSims();
}

// Affichage des SIMs
function renderSims() {
    console.log('Rendu des SIMs:', filteredSims.map(s => ({ id: s.id, type: typeof s.id })));
    elements.simsList.innerHTML = filteredSims.map(sim => `
        <tr>
            <td>${sim.phone_number || 'N/A'}</td>
            <td>${sim.carrier_name || 'N/A'}</td>
            <td>${sim.phone_model || 'N/A'}</td>
            <td class="text-center">
                <span class="badge ${sim.is_active ? 'bg-success' : 'bg-danger'}">
                    <i class="fas ${sim.is_active ? 'fa-check-circle' : 'fa-times-circle'} me-1"></i>
                    ${sim.is_active ? 'Active' : 'Inactive'}
                </span>
            </td>
            <td class="text-center">
                ${sim.is_default ? 
                    '<span class="badge bg-warning text-dark"><i class="fas fa-star me-1"></i>Oui</span>' : 
                    '<span class="badge bg-secondary">Non</span>'
                }
            </td>
            <td>
                <div class="quota-display">
                    <div class="quota-item">
                        <div class="progress cyber-progress mb-1">
                            <div class="progress-bar" role="progressbar" 
                                 style="width: ${((sim.messages_sent_month || 0) / (sim.monthly_limit || 1)) * 100}%"
                                 aria-valuenow="${sim.messages_sent_month || 0}" 
                                 aria-valuemin="0" 
                                 aria-valuemax="${sim.monthly_limit || 0}">
                            </div>
                        </div>
                        <small class="quota-text">${sim.messages_sent_month || 0}/${sim.monthly_limit || 0} SMS</small>
                    </div>
                    <div class="quota-item mt-2">
                        <div class="progress cyber-progress mb-1">
                            <div class="progress-bar progress-bar-recipients" role="progressbar" 
                                 style="width: ${((sim.recipients_monthly || 0) / (sim.recipients_monthly_limit || 1)) * 100}%"
                                 aria-valuenow="${sim.recipients_monthly || 0}" 
                                 aria-valuemin="0" 
                                 aria-valuemax="${sim.recipients_monthly_limit || 0}">
                            </div>
                        </div>
                        <small class="quota-text">${sim.recipients_monthly || 0}/${sim.recipients_monthly_limit || 0} destinataires</small>
                    </div>
                </div>
            </td>
            <td class="sims-actions">
                <div class="d-flex flex-wrap gap-1">
                    <button class="btn btn-sm ${sim.is_default ? 'btn-warning' : 'btn-outline-warning'}" 
                            onclick="toggleDefault('${sim.id}')" 
                            title="${sim.is_default ? 'Retirer par défaut' : 'Définir par défaut'}">
                        <i class="fas fa-star me-1"></i>Default
                    </button>
                    <button class="btn btn-sm ${sim.is_active ? 'btn-success' : 'btn-outline-success'}" 
                            onclick="toggleStatus('${sim.id}')" 
                            title="${sim.is_active ? 'Désactiver' : 'Activer'}">
                        <i class="fas fa-power-off me-1"></i>${sim.is_active ? 'Désactiver' : 'Activer'}
                    </button>
                    <button class="btn btn-sm btn-outline-info btn-action-limits" 
                            onclick="showLimitsModal('${sim.id}')" 
                            title="Modifier les limites d'envoi de SMS et de destinataires">
                        <i class="fas fa-sliders-h me-1"></i>Limites
                    </button>
                    <button class="btn btn-sm btn-outline-danger" 
                            onclick="deleteSim('${sim.id}')" 
                            title="Supprimer la SIM">
                        <i class="fas fa-trash me-1"></i>Supprimer
                    </button>
                </div>
            </td>
        </tr>
    `).join('');
}

// Basculer le statut par défaut d'une SIM
async function toggleDefault(simId) {
    console.log('🔄 toggleDefault appelé avec ID:', simId, 'type:', typeof simId);
    
    // Vérifier si les SIMs sont chargées
    if (!sims || sims.length === 0) {
        console.warn('⚠️ Aucune SIM chargée pour toggleDefault, rechargement...');
        showError('Données non chargées, veuillez patienter...');
        loadSims().then(() => {
            setTimeout(() => toggleDefault(simId), 500);
        });
        return;
    }
    
    console.log('📋 SIMs disponibles:', sims.map(s => ({ id: s.id, type: typeof s.id, carrier: s.carrier_name, is_default: s.is_default })));
    
    // Convertir l'ID en string et number pour comparaison (même logique que showConfig)
    const sim = sims.find(s => s.id == simId || s.id === parseInt(simId) || s.id === simId.toString());
    
    if (!sim) {
        console.error('❌ SIM non trouvée pour toggleDefault:', simId);
        console.error('📋 IDs disponibles:', sims.map(s => s.id));
        showError(`SIM avec l'ID ${simId} non trouvée. Essayez d'actualiser la page.`);
        return;
    }
    
    console.log('✅ SIM trouvée pour toggleDefault:', sim);
    console.log('🔄 Statut actuel is_default:', sim.is_default);
    
    const newDefaultStatus = !sim.is_default;
    console.log('🎯 Nouveau statut is_default:', newDefaultStatus);
    
    try {
        console.log('📡 Envoi de la requête API...');
        const response = await fetch(`${API_URL}/sims/${simId}/default`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ is_default: newDefaultStatus })
        });
        
        console.log('📡 Réponse API reçue:', response.status, response.statusText);
        
        if (response.ok) {
            const result = await response.json();
            console.log('✅ Réponse API:', result);
            showSuccess(`SIM ${newDefaultStatus ? 'définie comme par défaut' : 'retirée des SIMs par défaut'}`);
            console.log('🔄 Rechargement des SIMs...');
            loadSims();
        } else {
            const errorText = await response.text();
            console.error('❌ Erreur API:', response.status, errorText);
            throw new Error(`Erreur API: ${response.status} - ${errorText}`);
        }
    } catch (error) {
        console.error('❌ Erreur lors de toggleDefault:', error);
        showError('Erreur lors de la mise à jour du statut par défaut: ' + error.message);
    }
}

// Affichage de la configuration
function showConfig(simId) {
    console.log('showConfig appelé avec ID:', simId, 'type:', typeof simId);
    
    // Vérifier si les SIMs sont chargées
    if (!sims || sims.length === 0) {
        console.warn('Aucune SIM chargée, rechargement...');
        showError('Données non chargées, veuillez patienter...');
        loadSims().then(() => {
            // Réessayer après le chargement
            setTimeout(() => showConfig(simId), 500);
        });
        return;
    }
    
    console.log('SIMs disponibles:', sims.map(s => ({ id: s.id, type: typeof s.id, phone: s.phone_number })));
    
    // Convertir l'ID en string et number pour comparaison
    const sim = sims.find(s => s.id == simId || s.id === parseInt(simId) || s.id === simId.toString());
    
    if (!sim) {
        console.error('SIM non trouvée:', simId);
        console.error('IDs disponibles:', sims.map(s => s.id));
        showError(`SIM avec l'ID ${simId} non trouvée. Essayez d'actualiser la page.`);
        return;
    }
    
    console.log('Configuration de la SIM:', sim);
    
    const form = elements.configSimForm;
    if (!form) {
        console.error('Formulaire de configuration non trouvé');
        return;
    }
    
    // Remplir les champs du formulaire
    form.querySelector('[name="sim_id"]').value = sim.id;
    form.querySelector('[name="status"]').value = sim.is_active ? 'active' : 'inactive';
    form.querySelector('[name="monthly_limit"]').value = sim.monthly_limit || 30000;
    form.querySelector('[name="recipient_limit"]').value = sim.recipients_monthly_limit || 1000;
    form.querySelector('[name="is_default"]').checked = sim.is_default || false;
    
    // Afficher le modal
    try {
        const modalElement = document.getElementById('configSimModal');
        if (!modalElement) {
            console.error('Élément modal configSimModal non trouvé');
            return;
        }
        
        const modal = new bootstrap.Modal(modalElement);
        modal.show();
        console.log('Modal affiché avec succès');
    } catch (error) {
        console.error('Erreur lors de l\'affichage du modal:', error);
        showError('Erreur lors de l\'ouverture de la configuration');
    }
}

// Affichage du modal de modification des limites
function showLimitsModal(simId) {
    console.log('showLimitsModal appelé avec ID:', simId, 'type:', typeof simId);
    
    // Vérifier si les SIMs sont chargées
    if (!sims || sims.length === 0) {
        console.warn('Aucune SIM chargée, rechargement...');
        showError('Données non chargées, veuillez patienter...');
        loadSims().then(() => {
            setTimeout(() => showLimitsModal(simId), 500);
        });
        return;
    }
    
    console.log('SIMs disponibles:', sims.map(s => ({ id: s.id, type: typeof s.id, phone: s.phone_number })));
    
    // Convertir l'ID pour comparaison
    const sim = sims.find(s => s.id == simId || s.id === parseInt(simId) || s.id === simId.toString());
    
    if (!sim) {
        console.error('SIM non trouvée:', simId);
        console.error('IDs disponibles:', sims.map(s => s.id));
        showError(`SIM avec l'ID ${simId} non trouvée. Essayez d'actualiser la page.`);
        return;
    }
    
    console.log('Ouverture du modal des limites pour la SIM:', sim);
    
    // Remplir les informations de la SIM
    document.getElementById('limitsSimNumber').textContent = sim.phone_number || 'N/A';
    document.getElementById('limitsSimOperator').textContent = sim.carrier_name || 'N/A';
    document.getElementById('limitsSimId').value = sim.id;
    
    // Remplir les valeurs actuelles
    document.getElementById('limitsMonthlyLimit').value = sim.monthly_limit || 30000;
    document.getElementById('limitsRecipientLimit').value = sim.recipients_monthly_limit || 1000;
    
    // Afficher l'utilisation actuelle
    document.getElementById('currentSmsUsage').textContent = sim.messages_sent_month || 0;
    document.getElementById('currentRecipientUsage').textContent = sim.recipients_monthly || 0;
    
    // Afficher le modal
    try {
        const modalElement = document.getElementById('limitsModal');
        if (!modalElement) {
            console.error('Élément modal limitsModal non trouvé');
            return;
        }
        
        // Forcer l'affichage du modal avec des styles directs
        modalElement.style.display = 'block';
        modalElement.classList.add('show');
        modalElement.style.zIndex = '1060';
        
        // Créer et afficher le backdrop manuellement
        let backdrop = document.querySelector('.modal-backdrop');
        if (!backdrop) {
            backdrop = document.createElement('div');
            backdrop.className = 'modal-backdrop fade show';
            backdrop.style.zIndex = '1055';
            document.body.appendChild(backdrop);
        }
        
        // Ajouter la classe modal-open au body
        document.body.classList.add('modal-open');
        
        // Essayer aussi la méthode Bootstrap
        const modal = new bootstrap.Modal(modalElement, {
            backdrop: true,
            keyboard: true,
            focus: true
        });
        modal.show();
        
        console.log('Modal des limites affiché avec succès');
    } catch (error) {
        console.error('Erreur lors de l\'affichage du modal des limites:', error);
        showError('Erreur lors de l\'ouverture du modal des limites');
    }
}

// Enregistrement des nouvelles limites
async function saveLimits() {
    const form = document.getElementById('limitsForm');
    const formData = new FormData(form);
    
    const simId = formData.get('sim_id');
    const monthlyLimit = parseInt(formData.get('monthly_limit'));
    const recipientLimit = parseInt(formData.get('recipient_limit'));
    
    if (!simId || !monthlyLimit || !recipientLimit) {
        showError('Veuillez remplir tous les champs requis');
        return;
    }
    
    if (monthlyLimit < 1 || recipientLimit < 1) {
        showError('Les limites doivent être supérieures à 0');
        return;
    }
    
    console.log('Enregistrement des limites pour SIM:', simId, {
        monthly_limit: monthlyLimit,
        recipients_monthly_limit: recipientLimit
    });
    
    try {
        const response = await fetch(`${API_URL}/sims/${simId}/limits`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                monthly_limit: monthlyLimit,
                recipients_monthly_limit: recipientLimit
            })
        });
        
        console.log('Réponse API reçue:', response.status, response.statusText);
        
        if (response.ok) {
            const result = await response.json();
            console.log('✅ Limites mises à jour:', result);
            showSuccess('Limites mises à jour avec succès');
            
            // Fermer le modal
            const modalElement = document.getElementById('limitsModal');
            const modal = bootstrap.Modal.getInstance(modalElement);
            if (modal) {
                modal.hide();
            }
            
            // Nettoyage manuel si nécessaire
            modalElement.style.display = 'none';
            modalElement.classList.remove('show');
            document.body.classList.remove('modal-open');
            
            // Supprimer le backdrop manuel s'il existe
            const backdrop = document.querySelector('.modal-backdrop');
            if (backdrop) {
                backdrop.remove();
            }
            
            // Recharger les SIMs pour mettre à jour l'affichage
            loadSims();
        } else {
            const errorText = await response.text();
            console.error('❌ Erreur API:', response.status, errorText);
            throw new Error(`Erreur API: ${response.status} - ${errorText}`);
        }
    } catch (error) {
        console.error('❌ Erreur lors de la sauvegarde des limites:', error);
        showError('Erreur lors de la mise à jour des limites: ' + error.message);
    }
}

// Rendre les fonctions globales pour les boutons onclick
window.showConfig = showConfig;
window.showLimitsModal = showLimitsModal;
window.toggleDefault = toggleDefault;
window.toggleStatus = toggleStatus;
window.deleteSim = deleteSim;

// Vérification immédiate
console.log('🔧 Fonctions assignées à window:', {
    showConfig: typeof window.showConfig,
    toggleDefault: typeof window.toggleDefault,
    toggleStatus: typeof window.toggleStatus,
    deleteSim: typeof window.deleteSim
});

// Fonction de test pour la console
window.testToggleDefault = function(simId) {
    console.log('🧪 Test de toggleDefault avec ID:', simId);
    if (typeof window.toggleDefault === 'function') {
        window.toggleDefault(simId);
    } else {
        console.error('❌ toggleDefault n\'est pas disponible');
    }
};

// Sauvegarde de la configuration
async function saveConfig() {
    const formData = new FormData(elements.configSimForm);
    const simId = formData.get('sim_id');
    const config = {
        status: formData.get('status'),
        monthly_limit: parseInt(formData.get('monthly_limit')),
        recipient_limit: parseInt(formData.get('recipient_limit')),
        is_default: formData.get('is_default') === 'on'
    };
    
    try {
        const response = await fetch(`${API_URL}/sims/${simId}/config`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(config)
        });
        
        if (response.ok) {
            showSuccess('Configuration mise à jour avec succès');
            bootstrap.Modal.getInstance(document.getElementById('configSimModal')).hide();
            loadSims();
        } else {
            throw new Error('Erreur lors de la mise à jour');
        }
    } catch (error) {
        console.error('Erreur lors de la mise à jour:', error);
        showError('Erreur lors de la mise à jour de la configuration');
    }
}

// Basculement du statut
async function toggleStatus(simId) {
    console.log('toggleStatus appelé avec ID:', simId, 'type:', typeof simId);
    
    // Convertir l'ID en string et number pour comparaison (même logique que showConfig)
    const sim = sims.find(s => s.id == simId || s.id === parseInt(simId) || s.id === simId.toString());
    
    if (!sim) {
        console.error('SIM non trouvée pour toggleStatus:', simId);
        console.error('IDs disponibles:', sims.map(s => s.id));
        showError(`SIM avec l'ID ${simId} non trouvée. Essayez d'actualiser la page.`);
        return;
    }
    
    console.log('SIM trouvée pour toggleStatus:', sim);
    
    const newStatus = sim.is_active ? 'inactive' : 'active';
    
    try {
        const response = await fetch(`${API_URL}/sims/${simId}/config`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ status: newStatus })
        });
        
        if (response.ok) {
            showSuccess(`SIM ${newStatus === 'active' ? 'activée' : 'désactivée'} avec succès`);
            loadSims();
        } else {
            throw new Error('Erreur lors du changement de statut');
        }
    } catch (error) {
        console.error('Erreur lors du changement de statut:', error);
        showError('Erreur lors du changement de statut');
    }
}

// Suppression d'une SIM
async function deleteSim(simId) {
    if (!confirm('Êtes-vous sûr de vouloir supprimer cette SIM ?')) return;
    
    try {
        const response = await fetch(`${API_URL}/sims/${simId}`, {
            method: 'DELETE'
        });
        
        if (response.ok) {
            showSuccess('SIM supprimée avec succès');
            loadSims();
        } else {
            throw new Error('Erreur lors de la suppression');
        }
    } catch (error) {
        console.error('Erreur lors de la suppression:', error);
        showError('Erreur lors de la suppression de la SIM');
    }
}

// Sauvegarde d'une nouvelle SIM
async function saveSim() {
    const formData = new FormData(elements.addSimForm);
    const simData = {
        device_id: formData.get('device_id'),
        phone_number: formData.get('phone_number'),
        operator: formData.get('operator'),
        monthly_limit: parseInt(formData.get('monthly_limit')),
        recipient_limit: parseInt(formData.get('recipient_limit')),
        is_default: formData.get('is_default') === 'on'
    };
    
    try {
        const response = await fetch(`${API_URL}/sims`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(simData)
        });
        
        if (response.ok) {
            showSuccess('SIM ajoutée avec succès');
            bootstrap.Modal.getInstance(document.getElementById('addSimModal')).hide();
            elements.addSimForm.reset();
            loadSims();
        } else {
            throw new Error('Erreur lors de l\'ajout');
        }
    } catch (error) {
        console.error('Erreur lors de l\'ajout:', error);
        showError('Erreur lors de l\'ajout de la SIM');
    }
}

// Utilitaires
function showError(message) {
    // Créer une notification d'erreur
    const toast = document.createElement('div');
    toast.className = 'toast align-items-center text-white bg-danger border-0';
    toast.setAttribute('role', 'alert');
    toast.innerHTML = `
        <div class="d-flex">
            <div class="toast-body">${message}</div>
            <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast"></button>
        </div>
    `;
    
    // Ajouter au container de toasts (créer si nécessaire)
    let toastContainer = document.getElementById('toastContainer');
    if (!toastContainer) {
        toastContainer = document.createElement('div');
        toastContainer.id = 'toastContainer';
        toastContainer.className = 'toast-container position-fixed top-0 end-0 p-3';
        document.body.appendChild(toastContainer);
    }
    
    toastContainer.appendChild(toast);
    new bootstrap.Toast(toast).show();
    
    // Supprimer après 5 secondes
    setTimeout(() => {
        if (toast.parentNode) {
            toast.parentNode.removeChild(toast);
        }
    }, 5000);
}

function showSuccess(message) {
    // Créer une notification de succès
    const toast = document.createElement('div');
    toast.className = 'toast align-items-center text-white bg-success border-0';
    toast.setAttribute('role', 'alert');
    toast.innerHTML = `
        <div class="d-flex">
            <div class="toast-body">${message}</div>
            <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast"></button>
        </div>
    `;
    
    // Ajouter au container de toasts (créer si nécessaire)
    let toastContainer = document.getElementById('toastContainer');
    if (!toastContainer) {
        toastContainer = document.createElement('div');
        toastContainer.id = 'toastContainer';
        toastContainer.className = 'toast-container position-fixed top-0 end-0 p-3';
        document.body.appendChild(toastContainer);
    }
    
    toastContainer.appendChild(toast);
    new bootstrap.Toast(toast).show();
    
    // Supprimer après 3 secondes
    setTimeout(() => {
        if (toast.parentNode) {
            toast.parentNode.removeChild(toast);
        }
    }, 3000);
}

// Fonction pour fermer le modal des limites
function closeLimitsModal() {
    const modalElement = document.getElementById('limitsModal');
    if (modalElement) {
        const modal = bootstrap.Modal.getInstance(modalElement);
        if (modal) {
            modal.hide();
        }
        
        // Nettoyage manuel
        modalElement.style.display = 'none';
        modalElement.classList.remove('show');
        document.body.classList.remove('modal-open');
        
        // Supprimer le backdrop manuel s'il existe
        const backdrop = document.querySelector('.modal-backdrop');
        if (backdrop) {
            backdrop.remove();
        }
    }
}

// Gestionnaires d'événements pour le modal des limites
document.addEventListener('DOMContentLoaded', function() {
    const limitsModal = document.getElementById('limitsModal');
    if (limitsModal) {
        // Fermer avec Échap
        document.addEventListener('keydown', function(e) {
            if (e.key === 'Escape' && limitsModal.classList.contains('show')) {
                closeLimitsModal();
            }
        });
        
        // Fermer en cliquant sur le backdrop
        limitsModal.addEventListener('click', function(e) {
            if (e.target === limitsModal) {
                closeLimitsModal();
            }
        });
        
        // Gestionnaire pour le bouton de fermeture
        const closeBtn = limitsModal.querySelector('.btn-close');
        if (closeBtn) {
            closeBtn.addEventListener('click', closeLimitsModal);
        }
        
        // Gestionnaire pour le bouton Annuler
        const cancelBtn = limitsModal.querySelector('[data-bs-dismiss="modal"]');
        if (cancelBtn) {
            cancelBtn.addEventListener('click', closeLimitsModal);
        }
    }
    
    // Gestionnaire pour le bouton d'enregistrement
    const saveLimitsBtn = document.getElementById('saveLimitsBtn');
    if (saveLimitsBtn) {
        saveLimitsBtn.addEventListener('click', saveLimits);
    }
});

// Rendre la fonction globale
window.closeLimitsModal = closeLimitsModal; 
 
 