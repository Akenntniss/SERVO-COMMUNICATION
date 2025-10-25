// Configuration
const API_URL = 'http://192.168.1.155:3001/api';
const REFRESH_INTERVAL = 5000; // 5 secondes pour le monitoring

// État de l'application
let config = {};
let users = [];
let sims = [];
let monitoringInterval = null;

// Initialisation
document.addEventListener('DOMContentLoaded', () => {
    loadConfig();
    loadSims();
    loadUsers();
    setupEventListeners();
    startMonitoring();
});

// Configuration des écouteurs d'événements
function setupEventListeners() {
    // Formulaires
    document.getElementById('generalForm').addEventListener('submit', saveGeneralConfig);
    document.getElementById('notificationsForm').addEventListener('submit', saveNotificationsConfig);
    document.getElementById('changePasswordForm').addEventListener('submit', changePassword);
    document.getElementById('addUserForm').addEventListener('submit', addUser);
    
    // Boutons
    document.getElementById('generateApiKey').addEventListener('click', generateApiKey);
    document.getElementById('cleanLogsBtn').addEventListener('click', cleanLogs);
    document.getElementById('cleanMessagesBtn').addEventListener('click', cleanMessages);
    document.getElementById('backupBtn').addEventListener('click', createBackup);
    document.getElementById('restartApiBtn').addEventListener('click', restartApi);
    document.getElementById('clearCacheBtn').addEventListener('click', clearCache);
    document.getElementById('saveUserBtn').addEventListener('click', saveUser);
    
    // Changement d'onglet
    document.querySelectorAll('button[data-bs-toggle="tab"]').forEach(tab => {
        tab.addEventListener('shown.bs.tab', (e) => {
            if (e.target.id === 'monitoring-tab') {
                startMonitoring();
            } else {
                stopMonitoring();
            }
        });
    });
    
    // Filtre de logs
    document.getElementById('logLevel').addEventListener('change', loadSystemLogs);
}

// Chargement de la configuration
async function loadConfig() {
    try {
        const response = await fetch(`${API_URL}/system/config`);
        config = await response.json();
        populateConfigForms();
    } catch (error) {
        console.error('Erreur lors du chargement de la configuration:', error);
        showError('Erreur de chargement de la configuration');
    }
}

// Chargement des SIMs
async function loadSims() {
    try {
        const response = await fetch(`${API_URL}/sims`);
        const result = await response.json();
        sims = result.success ? result.data : [];
        updateDefaultSimSelect();
    } catch (error) {
        console.error('Erreur lors du chargement des SIMs:', error);
    }
}

// Mise à jour du select de SIM par défaut
function updateDefaultSimSelect() {
    const select = document.querySelector('[name="default_sim_id"]');
    if (select) {
        select.innerHTML = '<option value="">Aucune</option>' +
            sims.map(sim => `
                <option value="${sim.id}" ${config.default_sim_id == sim.id ? 'selected' : ''}>
                    ${sim.phone_number || 'N/A'} (${sim.carrier_name || 'N/A'})
                </option>
            `).join('');
    }
}

// Remplissage des formulaires avec la configuration actuelle
function populateConfigForms() {
    // Général
    const generalForm = document.getElementById('generalForm');
    if (generalForm) {
        if (generalForm.auto_switch_enabled) generalForm.auto_switch_enabled.value = config.auto_switch_enabled || 'true';
        if (generalForm.api_rate_limit) generalForm.api_rate_limit.value = config.api_rate_limit || 100;
        if (generalForm.heartbeat_interval) generalForm.heartbeat_interval.value = config.heartbeat_interval || 30;
        if (generalForm.global_daily_limit) generalForm.global_daily_limit.value = config.global_daily_limit || 1000;
        if (generalForm.connection_timeout) generalForm.connection_timeout.value = config.connection_timeout || 60;
    }
    
    // Notifications
    const notifForm = document.getElementById('notificationsForm');
    if (notifForm) {
        if (notifForm.notifications_enabled) notifForm.notifications_enabled.checked = config.notifications_enabled === 'true';
        if (notifForm.alert_email) notifForm.alert_email.value = config.alert_email || '';
        if (notifForm.quota_alert_threshold) notifForm.quota_alert_threshold.value = config.quota_alert_threshold || 80;
        if (notifForm.webhook_url) notifForm.webhook_url.value = config.webhook_url || '';
        if (notifForm.disconnection_alert_delay) notifForm.disconnection_alert_delay.value = config.disconnection_alert_delay || 5;
        if (notifForm.daily_report_enabled) notifForm.daily_report_enabled.checked = config.daily_report_enabled === 'true';
    }
    
    // Maintenance
    const autoBackupEnabled = document.getElementById('autoBackupEnabled');
    if (autoBackupEnabled) autoBackupEnabled.checked = config.auto_backup_enabled === 'true';
}

// Sauvegarde de la configuration générale
async function saveGeneralConfig(e) {
    e.preventDefault();
    const formData = new FormData(e.target);
    const configData = {
        default_sim_id: formData.get('default_sim_id'),
        auto_switch_enabled: formData.get('auto_switch_enabled'),
        api_rate_limit: formData.get('api_rate_limit'),
        heartbeat_interval: formData.get('heartbeat_interval'),
        global_daily_limit: formData.get('global_daily_limit'),
        connection_timeout: formData.get('connection_timeout')
    };
    
    try {
        const response = await fetch(`${API_URL}/system/config`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(configData)
        });
        
        if (response.ok) {
            showSuccess('Configuration générale mise à jour');
            loadConfig();
        } else {
            throw new Error('Erreur lors de la mise à jour');
        }
    } catch (error) {
        console.error('Erreur lors de la sauvegarde:', error);
        showError('Erreur lors de la sauvegarde de la configuration');
    }
}

// Sauvegarde de la configuration des notifications
async function saveNotificationsConfig(e) {
    e.preventDefault();
    const formData = new FormData(e.target);
    const configData = {
        notifications_enabled: formData.get('notifications_enabled') === 'on' ? 'true' : 'false',
        alert_email: formData.get('alert_email'),
        quota_alert_threshold: formData.get('quota_alert_threshold'),
        webhook_url: formData.get('webhook_url'),
        disconnection_alert_delay: formData.get('disconnection_alert_delay'),
        daily_report_enabled: formData.get('daily_report_enabled') === 'on' ? 'true' : 'false'
    };
    
    try {
        const response = await fetch(`${API_URL}/system/config`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(configData)
        });
        
        if (response.ok) {
            showSuccess('Configuration des notifications mise à jour');
            loadConfig();
        } else {
            throw new Error('Erreur lors de la mise à jour');
        }
    } catch (error) {
        console.error('Erreur lors de la sauvegarde:', error);
        showError('Erreur lors de la sauvegarde de la configuration');
    }
}

// Gestion des utilisateurs
async function loadUsers() {
    try {
        const response = await fetch(`${API_URL}/users`);
        users = await response.json();
        renderUsersList();
    } catch (error) {
        console.error('Erreur lors du chargement des utilisateurs:', error);
    }
}

// Affichage de la liste des utilisateurs
function renderUsersList() {
    const usersList = document.getElementById('usersList');
    if (usersList) {
        usersList.innerHTML = users.map(user => `
            <tr>
                <td>${user.username}</td>
                <td><span class="badge bg-${user.role === 'admin' ? 'danger' : 'primary'}">${user.role}</span></td>
                <td>
                    <button class="btn btn-cyber btn-sm" onclick="deleteUser('${user.id}')">
                        <i class="fas fa-trash"></i>
                    </button>
                </td>
            </tr>
        `).join('');
    }
}

// Ajout d'un utilisateur
async function addUser(e) {
    e.preventDefault();
    const formData = new FormData(e.target);
    const userData = {
        username: formData.get('username'),
        password: formData.get('password'),
        role: formData.get('role')
    };
    
    try {
        const response = await fetch(`${API_URL}/users`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(userData)
        });
        
        if (response.ok) {
            showSuccess('Utilisateur ajouté avec succès');
            e.target.reset();
            loadUsers();
        } else {
            throw new Error('Erreur lors de l\'ajout');
        }
    } catch (error) {
        console.error('Erreur lors de l\'ajout:', error);
        showError('Erreur lors de l\'ajout de l\'utilisateur');
    }
}

// Sauvegarde d'un utilisateur
async function saveUser() {
    const formData = new FormData(document.getElementById('addUserForm'));
    const userData = {
        username: formData.get('username'),
        password: formData.get('password'),
        role: formData.get('role')
    };
    
    try {
        const response = await fetch(`${API_URL}/users`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(userData)
        });
        
        if (response.ok) {
            showSuccess('Utilisateur ajouté avec succès');
            const modal = bootstrap.Modal.getInstance(document.getElementById('addUserModal'));
            if (modal) modal.hide();
            document.getElementById('addUserForm').reset();
            loadUsers();
        } else {
            throw new Error('Erreur lors de l\'ajout');
        }
    } catch (error) {
        console.error('Erreur lors de l\'ajout:', error);
        showError('Erreur lors de l\'ajout de l\'utilisateur');
    }
}

// Suppression d'un utilisateur
async function deleteUser(userId) {
    if (!confirm('Êtes-vous sûr de vouloir supprimer cet utilisateur ?')) return;
    
    try {
        const response = await fetch(`${API_URL}/users/${userId}`, {
            method: 'DELETE'
        });
        
        if (response.ok) {
            showSuccess('Utilisateur supprimé avec succès');
            loadUsers();
        } else {
            throw new Error('Erreur lors de la suppression');
        }
    } catch (error) {
        console.error('Erreur lors de la suppression:', error);
        showError('Erreur lors de la suppression de l\'utilisateur');
    }
}

// Changement de mot de passe
async function changePassword(e) {
    e.preventDefault();
    const formData = new FormData(e.target);
    const currentPassword = formData.get('currentPassword');
    const newPassword = formData.get('newPassword');
    const confirmPassword = formData.get('confirmPassword');
    
    if (newPassword !== confirmPassword) {
        showError('Les mots de passe ne correspondent pas');
        return;
    }
    
    try {
        const response = await fetch(`${API_URL}/auth/change-password`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                current_password: currentPassword,
                new_password: newPassword
            })
        });
        
        if (response.ok) {
            showSuccess('Mot de passe modifié avec succès');
            e.target.reset();
        } else {
            throw new Error('Erreur lors du changement de mot de passe');
        }
    } catch (error) {
        console.error('Erreur lors du changement de mot de passe:', error);
        showError('Erreur lors du changement de mot de passe');
    }
}

// Génération d'une clé API
async function generateApiKey() {
    try {
        const response = await fetch(`${API_URL}/auth/generate-api-key`, {
            method: 'POST'
        });
        
        if (response.ok) {
            const data = await response.json();
            showApiKey(data.api_key);
        } else {
            throw new Error('Erreur lors de la génération');
        }
    } catch (error) {
        console.error('Erreur lors de la génération:', error);
        showError('Erreur lors de la génération de la clé API');
    }
}

// Affichage de la clé API
function showApiKey(apiKey) {
    const modal = new bootstrap.Modal(document.getElementById('apiKeyModal'));
    document.getElementById('generatedApiKey').textContent = apiKey;
    modal.show();
}

// Nettoyage des logs
async function cleanLogs() {
    const days = document.getElementById('logRetentionDays').value;
    if (!confirm(`Êtes-vous sûr de vouloir supprimer les logs de plus de ${days} jours ?`)) return;
    
    try {
        const response = await fetch(`${API_URL}/maintenance/clean-logs`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ days: parseInt(days) })
        });
        
        if (response.ok) {
            const data = await response.json();
            showSuccess(`${data.deleted_count} logs supprimés`);
        } else {
            throw new Error('Erreur lors du nettoyage');
        }
    } catch (error) {
        console.error('Erreur lors du nettoyage:', error);
        showError('Erreur lors du nettoyage des logs');
    }
}

// Nettoyage des messages
async function cleanMessages() {
    const days = document.getElementById('messageRetentionDays').value;
    if (!confirm(`Êtes-vous sûr de vouloir supprimer les messages de plus de ${days} jours ?`)) return;
    
    try {
        const response = await fetch(`${API_URL}/maintenance/clean-messages`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ days: parseInt(days) })
        });
        
        if (response.ok) {
            const data = await response.json();
            showSuccess(`${data.deleted_count} messages supprimés`);
        } else {
            throw new Error('Erreur lors du nettoyage');
        }
    } catch (error) {
        console.error('Erreur lors du nettoyage:', error);
        showError('Erreur lors du nettoyage des messages');
    }
}

// Création de sauvegarde
async function createBackup() {
    try {
        const response = await fetch(`${API_URL}/maintenance/backup`, {
            method: 'POST'
        });
        
        if (response.ok) {
            const blob = await response.blob();
            const url = window.URL.createObjectURL(blob);
            const a = document.createElement('a');
            a.href = url;
            a.download = `backup_${new Date().toISOString()}.sql`;
            a.click();
            showSuccess('Sauvegarde créée avec succès');
        } else {
            throw new Error('Erreur lors de la sauvegarde');
        }
    } catch (error) {
        console.error('Erreur lors de la sauvegarde:', error);
        showError('Erreur lors de la création de la sauvegarde');
    }
}

// Redémarrage de l'API
async function restartApi() {
    if (!confirm('Êtes-vous sûr de vouloir redémarrer l\'API ?')) return;
    
    try {
        const response = await fetch(`${API_URL}/maintenance/restart`, {
            method: 'POST'
        });
        
        if (response.ok) {
            showSuccess('API en cours de redémarrage...');
        } else {
            throw new Error('Erreur lors du redémarrage');
        }
    } catch (error) {
        console.error('Erreur lors du redémarrage:', error);
        showError('Erreur lors du redémarrage de l\'API');
    }
}

// Vidage du cache
async function clearCache() {
    try {
        const response = await fetch(`${API_URL}/maintenance/clear-cache`, {
            method: 'POST'
        });
        
        if (response.ok) {
            showSuccess('Cache vidé avec succès');
        } else {
            throw new Error('Erreur lors du vidage');
        }
    } catch (error) {
        console.error('Erreur lors du vidage:', error);
        showError('Erreur lors du vidage du cache');
    }
}

// Monitoring
function startMonitoring() {
    loadServicesStatus();
    loadResourceUsage();
    loadSystemLogs();
    
    monitoringInterval = setInterval(() => {
        loadServicesStatus();
        loadResourceUsage();
    }, REFRESH_INTERVAL);
}

function stopMonitoring() {
    if (monitoringInterval) {
        clearInterval(monitoringInterval);
        monitoringInterval = null;
    }
}

// Chargement de l'état des services
async function loadServicesStatus() {
    try {
        const response = await fetch(`${API_URL}/monitoring/services`);
        const services = await response.json();
        
        const servicesStatus = document.getElementById('servicesStatus');
        if (servicesStatus) {
            servicesStatus.innerHTML = services.map(service => `
                <div class="d-flex justify-content-between align-items-center mb-2">
                    <span>${service.name}</span>
                    <span class="badge bg-${service.status === 'running' ? 'success' : 'danger'}">
                        ${service.status === 'running' ? 'En cours' : 'Arrêté'}
                    </span>
                </div>
            `).join('');
        }
    } catch (error) {
        console.error('Erreur lors du chargement des services:', error);
    }
}

// Chargement de l'utilisation des ressources
async function loadResourceUsage() {
    try {
        const response = await fetch(`${API_URL}/monitoring/resources`);
        const resources = await response.json();
        
        updateProgressBar('cpuUsage', resources.cpu);
        updateProgressBar('memoryUsage', resources.memory);
        updateProgressBar('diskUsage', resources.disk);
    } catch (error) {
        console.error('Erreur lors du chargement des ressources:', error);
    }
}

// Mise à jour d'une barre de progression
function updateProgressBar(id, value) {
    const progressBar = document.getElementById(id);
    if (progressBar) {
        progressBar.style.width = `${value}%`;
        progressBar.textContent = `${value}%`;
        
        // Changement de couleur selon le niveau
        progressBar.className = 'progress-bar';
        if (value > 80) {
            progressBar.classList.add('bg-danger');
        } else if (value > 60) {
            progressBar.classList.add('bg-warning');
        } else {
            progressBar.classList.add('bg-success');
        }
    }
}

// Chargement des logs système
async function loadSystemLogs() {
    const levelElement = document.getElementById('logLevel');
    const level = levelElement ? levelElement.value : 'info';
    
    try {
        const response = await fetch(`${API_URL}/monitoring/logs?level=${level}`);
        const logs = await response.json();
        
        const systemLogs = document.getElementById('systemLogs');
        if (systemLogs) {
            systemLogs.innerHTML = logs.map(log => `
                <div class="log-entry log-${log.level}">
                    <span class="log-time">${formatDate(log.timestamp)}</span>
                    <span class="log-level">[${log.level.toUpperCase()}]</span>
                    <span class="log-message">${log.message}</span>
                </div>
            `).join('');
        }
    } catch (error) {
        console.error('Erreur lors du chargement des logs:', error);
    }
}

// Utilitaires
function formatDate(dateString) {
    const date = new Date(dateString);
    return date.toLocaleString('fr-FR');
}

function showError(message) {
    // Implémenter un système de notification d'erreur
    console.error(message);
}

function showSuccess(message) {
    // Implémenter un système de notification de succès
    console.log(message);
} 
 
 

