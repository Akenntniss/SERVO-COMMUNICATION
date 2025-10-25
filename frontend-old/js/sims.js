// Configuration
const API_URL = 'http://192.168.1.155:3001/api';
const REFRESH_INTERVAL = 30000; // 30 secondes

// Éléments DOM
const elements = {
    simsList: document.getElementById('simsList'),
    statusFilter: document.getElementById('statusFilter'),
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
    defaultSimsCount: document.getElementById('defaultSimsCount')
};

// État de l'application
let sims = [];
let filteredSims = [];
let phones = [];

// Initialisation
document.addEventListener('DOMContentLoaded', () => {
    loadPhones();
    loadSims();
    setupEventListeners();
    setInterval(loadSims, REFRESH_INTERVAL);
});

// Configuration des écouteurs d'événements
function setupEventListeners() {
    elements.statusFilter.addEventListener('change', filterSims);
    elements.searchInput.addEventListener('input', filterSims);
    elements.sortBy.addEventListener('change', sortSims);
    elements.refreshBtn.addEventListener('click', () => {
        loadPhones();
        loadSims();
    });
    elements.saveSimBtn.addEventListener('click', saveSim);
    elements.saveConfigBtn.addEventListener('click', saveConfig);
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
        
        // Calculer les statistiques localement car l'API stats n'existe pas encore
        const stats = {
            active_sims: sims.filter(s => s.is_active).length,
            today_sms: sims.reduce((sum, s) => sum + (s.messages_sent_month || 0), 0),
            average_quota: sims.length > 0 ? Math.round(sims.reduce((sum, s) => sum + ((s.messages_sent_month || 0) / (s.monthly_limit || 1) * 100), 0) / sims.length) : 0,
            default_sims: sims.filter(s => s.is_default).length
        };
        
        updateStats(stats);
        filterSims();
    } catch (error) {
        console.error('Erreur lors du chargement des SIMs:', error);
        showError('Erreur de chargement des SIMs');
        sims = [];
        filterSims();
    }
}

// Mise à jour des statistiques
function updateStats(stats) {
    elements.activeSimsCount.textContent = stats.active_sims;
    elements.todaySmsCount.textContent = stats.today_sms;
    elements.averageQuota.textContent = `${stats.average_quota}%`;
    elements.defaultSimsCount.textContent = stats.default_sims;
}

// Filtrage des SIMs
function filterSims() {
    const status = elements.statusFilter.value;
    const search = elements.searchInput.value.toLowerCase();
    
    filteredSims = sims.filter(sim => {
        const matchesStatus = !status || 
            (status === 'active' && sim.is_active) ||
            (status === 'inactive' && !sim.is_active);
        const matchesSearch = !search || 
            (sim.phone_number && sim.phone_number.toLowerCase().includes(search)) ||
            (sim.carrier_name && sim.carrier_name.toLowerCase().includes(search));
        return matchesStatus && matchesSearch;
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
            default:
                return 0;
        }
    });
    
    renderSims();
}

// Affichage des SIMs
function renderSims() {
    elements.simsList.innerHTML = filteredSims.map(sim => `
        <tr>
            <td>${sim.phone_number || 'N/A'}</td>
            <td>${sim.carrier_name || 'N/A'}</td>
            <td>${sim.phone_model || 'N/A'}</td>
            <td>
                <div class="phone-status">
                    <span class="status-indicator status-${sim.is_active ? 'active' : 'inactive'}"></span>
                    ${sim.is_active ? 'Active' : 'Inactive'}
                </div>
            </td>
            <td>${sim.messages_sent_month || 0}</td>
            <td>
                <div class="progress cyber-progress">
                    <div class="progress-bar" role="progressbar" 
                         style="width: ${((sim.messages_sent_month || 0) / (sim.monthly_limit || 1)) * 100}%"
                         aria-valuenow="${sim.messages_sent_month || 0}" 
                         aria-valuemin="0" 
                         aria-valuemax="${sim.monthly_limit || 0}">
                        ${sim.messages_sent_month || 0}/${sim.monthly_limit || 0}
                    </div>
                </div>
            </td>
            <td>
                <div class="phone-actions">
                    <button class="btn btn-cyber btn-sm" onclick="showConfig('${sim.id}')">
                        <i class="fas fa-cog"></i>
                    </button>
                    <button class="btn btn-cyber btn-sm" onclick="toggleStatus('${sim.id}')">
                        <i class="fas fa-power-off"></i>
                    </button>
                    <button class="btn btn-cyber btn-sm" onclick="deleteSim('${sim.id}')">
                        <i class="fas fa-trash"></i>
                    </button>
                </div>
            </td>
        </tr>
    `).join('');
}

// Récupération du modèle de téléphone
function getPhoneModel(deviceId) {
    const phone = phones.find(p => p.tel_id === deviceId);
    return phone ? phone.model : 'N/A';
}

// Affichage de la configuration
function showConfig(simId) {
    const sim = sims.find(s => s.sim_id === simId);
    if (!sim) return;
    
    const form = elements.configSimForm;
    form.sim_id.value = sim.sim_id;
    form.status.value = sim.status;
    form.daily_limit.value = sim.daily_limit;
    form.recipient_limit.value = sim.recipient_limit;
    form.is_default.checked = sim.is_default;
    
    new bootstrap.Modal(document.getElementById('configSimModal')).show();
}

// Sauvegarde de la configuration
async function saveConfig() {
    const formData = new FormData(elements.configSimForm);
    const simId = formData.get('sim_id');
    const config = {
        status: formData.get('status'),
        daily_limit: parseInt(formData.get('daily_limit')),
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
    const sim = sims.find(s => s.sim_id === simId);
    if (!sim) return;
    
    const newStatus = sim.status === 'active' ? 'inactive' : 'active';
    
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
        daily_limit: parseInt(formData.get('daily_limit')),
        recipient_limit: parseInt(formData.get('recipient_limit'))
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
    // Implémenter un système de notification d'erreur
    console.error(message);
}

function showSuccess(message) {
    // Implémenter un système de notification de succès
    console.log(message);
} 
 
 