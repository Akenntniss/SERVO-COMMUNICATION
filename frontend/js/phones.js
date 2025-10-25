// Configuration (utilise la configuration globale)
const API_URL = 'http://168.231.85.4:3001/api';
const REFRESH_INTERVAL = window.APP_CONFIG?.REFRESH_INTERVAL || 30000;

// Éléments DOM
const elements = {
    phonesList: document.getElementById('phonesList'),
    statusFilter: document.getElementById('statusFilter'),
    searchInput: document.getElementById('searchInput'),
    sortBy: document.getElementById('sortBy'),
    refreshBtn: document.getElementById('refreshBtn'),
    addPhoneForm: document.getElementById('addPhoneForm'),
    savePhoneBtn: document.getElementById('savePhoneBtn'),
    phoneDetails: document.getElementById('phoneDetails')
};

// État de l'application
let phones = [];
let filteredPhones = [];

// Initialisation
document.addEventListener('DOMContentLoaded', () => {
    loadPhones();
    setupEventListeners();
    setInterval(loadPhones, REFRESH_INTERVAL);
});

// Configuration des écouteurs d'événements
function setupEventListeners() {
    elements.statusFilter.addEventListener('change', filterPhones);
    elements.searchInput.addEventListener('input', filterPhones);
    elements.sortBy.addEventListener('change', sortPhones);
    elements.refreshBtn.addEventListener('click', loadPhones);
    elements.savePhoneBtn.addEventListener('click', savePhone);
}

// Chargement des téléphones
async function loadPhones() {
    try {
        const response = await fetch(`${API_URL}/phones`);
        const result = await response.json();
        phones = result.success ? result.data : [];
        filterPhones();
    } catch (error) {
        console.error('Erreur lors du chargement des téléphones:', error);
        showError('Erreur de chargement des téléphones');
        phones = [];
        filterPhones();
    }
}

// Filtrage des téléphones
function filterPhones() {
    const status = elements.statusFilter.value;
    const search = elements.searchInput.value.toLowerCase();
    
    filteredPhones = phones.filter(phone => {
        const matchesStatus = !status || 
            (status === 'online' && phone.status === 'active') ||
            (status === 'offline' && phone.status !== 'active');
        const matchesSearch = !search || 
            phone.id.toLowerCase().includes(search) ||
            phone.model.toLowerCase().includes(search);
        return matchesStatus && matchesSearch;
    });
    
    sortPhones();
}

// Tri des téléphones
function sortPhones() {
    const sortBy = elements.sortBy.value;
    
    filteredPhones.sort((a, b) => {
        switch (sortBy) {
            case 'last_seen':
                return new Date(b.last_heartbeat) - new Date(a.last_heartbeat);
            case 'model':
                return a.model.localeCompare(b.model);
            case 'sim_count':
                return (b.sim_count || 0) - (a.sim_count || 0);
            default:
                return 0;
        }
    });
    
    renderPhones();
}

// Affichage des téléphones
function renderPhones() {
    elements.phonesList.innerHTML = filteredPhones.map(phone => {
        const isOnline = phone.status === 'active';
        const statusText = isOnline ? 'En ligne' : 'Hors ligne';
        const statusClass = isOnline ? 'status-online' : 'status-offline';
        
        // Afficher le temps hors ligne si applicable
        let statusDetails = '';
        if (!isOnline && phone.minutes_offline) {
            if (phone.minutes_offline < 60) {
                statusDetails = ` (${phone.minutes_offline} min)`;
            } else if (phone.minutes_offline < 1440) {
                statusDetails = ` (${Math.floor(phone.minutes_offline / 60)}h)`;
            } else {
                statusDetails = ` (${Math.floor(phone.minutes_offline / 1440)}j)`;
            }
        }
        
        return `
            <tr class="${!isOnline ? 'table-warning' : ''}">
                <td>${phone.id}</td>
                <td>${phone.model}</td>
                <td>
                    <div class="phone-status">
                        <span class="status-indicator ${statusClass}"></span>
                        ${statusText}${statusDetails}
                    </div>
                </td>
                <td>${formatDate(phone.last_heartbeat)}</td>
                <td>
                    <span class="sim-badge">${phone.sim_count || 0} SIMs</span>
                </td>
                <td>
                    <div class="phone-actions">
                        <button class="btn btn-cyber btn-sm" onclick="showPhoneDetails('${phone.id}')">
                            <i class="fas fa-info-circle"></i>
                        </button>
                        <button class="btn btn-cyber btn-sm" onclick="restartService('${phone.id}')">
                            <i class="fas fa-sync"></i>
                        </button>
                        <button class="btn btn-cyber btn-sm" onclick="deletePhone('${phone.id}')">
                            <i class="fas fa-trash"></i>
                        </button>
                    </div>
                </td>
            </tr>
        `;
    }).join('');
}

// Affichage des détails d'un téléphone
async function showPhoneDetails(telId) {
    try {
        const response = await fetch(`${API_URL}/phones/${telId}`);
        const result = await response.json();
        
        if (!result.success) {
            throw new Error(result.message || 'Erreur lors de la récupération des détails');
        }
        
        const { phone, sims } = result.data;
        
        // Calculer le statut en temps réel
        const minutesSinceHeartbeat = phone.last_heartbeat ? 
            Math.floor((new Date() - new Date(phone.last_heartbeat)) / (1000 * 60)) : null;
        const isOnline = minutesSinceHeartbeat !== null && minutesSinceHeartbeat < 5;
        const statusText = isOnline ? 'En ligne' : 'Hors ligne';
        
        // Afficher le temps hors ligne si applicable
        let statusDetails = '';
        if (!isOnline && minutesSinceHeartbeat) {
            if (minutesSinceHeartbeat < 60) {
                statusDetails = ` (${minutesSinceHeartbeat} min)`;
            } else if (minutesSinceHeartbeat < 1440) {
                statusDetails = ` (${Math.floor(minutesSinceHeartbeat / 60)}h)`;
            } else {
                statusDetails = ` (${Math.floor(minutesSinceHeartbeat / 1440)}j)`;
            }
        }
        
        elements.phoneDetails.innerHTML = `
            <div class="row">
                <div class="col-md-6">
                    <h6 class="neon-text">Informations Générales</h6>
                    <div class="cyber-card">
                        <p><strong>ID:</strong> ${phone.id || 'undefined'}</p>
                        <p><strong>Modèle:</strong> ${phone.model || 'undefined'}</p>
                        <p><strong>Version Android:</strong> ${phone.android_version || 'N/A'}</p>
                        <p><strong>Version App:</strong> ${phone.app_version || 'N/A'}</p>
                        <p><strong>Statut:</strong> <span class="status-indicator ${isOnline ? 'status-online' : 'status-offline'}"></span> ${statusText}${statusDetails}</p>
                        <p><strong>Dernière Activité:</strong> ${phone.last_heartbeat ? formatDate(phone.last_heartbeat) : 'Invalid Date'}</p>
                        <p><strong>Créé le:</strong> ${phone.created_at ? formatDate(phone.created_at) : 'N/A'}</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <h6 class="neon-text">SIMs Installées (${sims ? sims.length : 0})</h6>
                    ${sims && sims.length > 0 ? sims.map((sim, index) => `
                        <div class="cyber-card">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <strong>SIM ${index + 1} - Slot ${sim.slot_index !== null ? sim.slot_index : 'N/A'}</strong>
                                <span class="status-indicator ${sim.is_active ? 'status-online' : 'status-offline'}"></span>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <p><strong>Numéro:</strong><br>${sim.phone_number || 'N/A'}</p>
                                    <p><strong>Opérateur:</strong><br>${sim.carrier_name || 'N/A'}</p>
                                    <p><strong>Pays:</strong> ${sim.country_code || 'N/A'}</p>
                                </div>
                                <div class="col-6">
                                    <p><strong>Messages:</strong> ${sim.messages_sent_month || 0}/${sim.monthly_limit || 'N/A'}</p>
                                    <p><strong>Destinataires:</strong> ${sim.recipients_monthly || 0}/${sim.recipients_monthly_limit || 'N/A'}</p>
                                    <p><strong>Statut:</strong> ${sim.is_active ? 'Active' : 'Inactive'}</p>
                                </div>
                            </div>
                        </div>
                    `).join('') : '<div class="cyber-card"><p class="text-center text-muted">Aucune SIM installée</p></div>'}
                </div>
            </div>
        `;
        
        new bootstrap.Modal(document.getElementById('phoneDetailsModal')).show();
    } catch (error) {
        console.error('Erreur lors du chargement des détails:', error);
        showError('Erreur de chargement des détails: ' + error.message);
    }
}

// Redémarrage du service
async function restartService(telId) {
    if (!confirm('Voulez-vous redémarrer le service sur ce téléphone ?')) return;
    
    try {
        const response = await fetch(`${API_URL}/phones/${telId}/restart`, {
            method: 'POST'
        });
        
        if (response.ok) {
            showSuccess('Service redémarré avec succès');
            loadPhones();
        } else {
            throw new Error('Erreur lors du redémarrage');
        }
    } catch (error) {
        console.error('Erreur lors du redémarrage:', error);
        showError('Erreur lors du redémarrage du service');
    }
}

// Suppression d'un téléphone
async function deletePhone(telId) {
    if (!confirm('Êtes-vous sûr de vouloir supprimer ce téléphone ?')) return;
    
    try {
        const response = await fetch(`${API_URL}/phones/${telId}`, {
            method: 'DELETE'
        });
        
        if (response.ok) {
            showSuccess('Téléphone supprimé avec succès');
            loadPhones();
        } else {
            throw new Error('Erreur lors de la suppression');
        }
    } catch (error) {
        console.error('Erreur lors de la suppression:', error);
        showError('Erreur lors de la suppression du téléphone');
    }
}

// Sauvegarde d'un nouveau téléphone
async function savePhone() {
    const formData = new FormData(elements.addPhoneForm);
    const phoneData = {
        tel_id: formData.get('tel_id'),
        model: formData.get('model')
    };
    
    try {
        const response = await fetch(`${API_URL}/phones/register`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(phoneData)
        });
        
        if (response.ok) {
            showSuccess('Téléphone ajouté avec succès');
            bootstrap.Modal.getInstance(document.getElementById('addPhoneModal')).hide();
            elements.addPhoneForm.reset();
            loadPhones();
        } else {
            throw new Error('Erreur lors de l\'ajout');
        }
    } catch (error) {
        console.error('Erreur lors de l\'ajout:', error);
        showError('Erreur lors de l\'ajout du téléphone');
    }
}

// Utilitaires
function formatDate(dateString) {
    if (!dateString) return 'N/A';
    try {
        return new Date(dateString).toLocaleString('fr-FR', {
            dateStyle: 'short',
            timeStyle: 'medium'
        });
    } catch (error) {
        return 'Date invalide';
    }
}

function showError(message) {
    // Créer une notification d'erreur
    const alertDiv = document.createElement('div');
    alertDiv.className = 'alert alert-danger alert-dismissible fade show position-fixed';
    alertDiv.style.cssText = 'top: 20px; right: 20px; z-index: 9999; max-width: 400px;';
    alertDiv.innerHTML = `
        <i class="fas fa-exclamation-triangle"></i> ${message}
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    `;
    
    document.body.appendChild(alertDiv);
    
    // Supprimer automatiquement après 5 secondes
    setTimeout(() => {
        if (alertDiv.parentNode) {
            alertDiv.remove();
        }
    }, 5000);
    
    console.error(message);
}

function showSuccess(message) {
    // Créer une notification de succès
    const alertDiv = document.createElement('div');
    alertDiv.className = 'alert alert-success alert-dismissible fade show position-fixed';
    alertDiv.style.cssText = 'top: 20px; right: 20px; z-index: 9999; max-width: 400px;';
    alertDiv.innerHTML = `
        <i class="fas fa-check-circle"></i> ${message}
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    `;
    
    document.body.appendChild(alertDiv);
    
    // Supprimer automatiquement après 3 secondes
    setTimeout(() => {
        if (alertDiv.parentNode) {
            alertDiv.remove();
        }
    }, 3000);
    
    console.log(message);
} 
 
 