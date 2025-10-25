// Configuration
const API_URL = 'http://192.168.1.155:3001/api';
const REFRESH_INTERVAL = 30000; // 30 secondes

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
    elements.phonesList.innerHTML = filteredPhones.map(phone => `
        <tr>
            <td>${phone.id}</td>
            <td>${phone.model}</td>
            <td>
                <div class="phone-status">
                    <span class="status-indicator status-${phone.status}"></span>
                    ${phone.status === 'active' ? 'En ligne' : 'Hors ligne'}
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
    `).join('');
}

// Affichage des détails d'un téléphone
async function showPhoneDetails(telId) {
    try {
        const response = await fetch(`${API_URL}/phones/${telId}`);
        const phone = await response.json();
        
        elements.phoneDetails.innerHTML = `
            <div class="row">
                <div class="col-md-6">
                    <h6 class="neon-text">Informations Générales</h6>
                    <p><strong>ID:</strong> ${phone.tel_id}</p>
                    <p><strong>Modèle:</strong> ${phone.model}</p>
                    <p><strong>Statut:</strong> ${phone.status}</p>
                    <p><strong>Dernière Activité:</strong> ${formatDate(phone.last_seen)}</p>
                </div>
                <div class="col-md-6">
                    <h6 class="neon-text">SIMs Installées</h6>
                    ${phone.sims?.map(sim => `
                        <div class="cyber-card mb-2">
                            <p><strong>Numéro:</strong> ${sim.phone_number}</p>
                            <p><strong>Opérateur:</strong> ${sim.operator || 'N/A'}</p>
                            <p><strong>Statut:</strong> ${sim.status}</p>
                        </div>
                    `).join('') || '<p>Aucune SIM installée</p>'}
                </div>
            </div>
        `;
        
        new bootstrap.Modal(document.getElementById('phoneDetailsModal')).show();
    } catch (error) {
        console.error('Erreur lors du chargement des détails:', error);
        showError('Erreur de chargement des détails');
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
    return new Date(dateString).toLocaleString('fr-FR', {
        dateStyle: 'short',
        timeStyle: 'medium'
    });
}

function showError(message) {
    // Implémenter un système de notification d'erreur
    console.error(message);
}

function showSuccess(message) {
    // Implémenter un système de notification de succès
    console.log(message);
} 
 
 