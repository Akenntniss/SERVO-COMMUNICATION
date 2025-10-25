// Configuration
const API_URL = 'http://168.231.85.4:3001/api';
const REFRESH_INTERVAL = 30000; // 30 secondes

// Éléments DOM
const elements = {
    autoSwitchForm: document.getElementById('autoSwitchForm'),
    autoSwitchEnabled: document.getElementById('autoSwitchEnabled'),
    quotaThreshold: document.getElementById('quotaThreshold'),
    smsNotificationsEnabled: document.getElementById('smsNotificationsEnabled'),
    switchNotificationsEnabled: document.getElementById('switchNotificationsEnabled'),
    notificationPhone: document.getElementById('notificationPhone'),
    checkFrequency: document.getElementById('checkFrequency'),
    systemStatus: document.getElementById('systemStatus'),
    simsStatus: document.getElementById('simsStatus'),
    refreshStatusBtn: document.getElementById('refreshStatusBtn'),
    testNotificationBtn: document.getElementById('testNotificationBtn'),
    testNotificationModal: document.getElementById('testNotificationModal'),
    testNotificationForm: document.getElementById('testNotificationForm'),
    testPhoneNumber: document.getElementById('testPhoneNumber'),
    testMessageType: document.getElementById('testMessageType'),
    manualSwitchBtn: document.getElementById('manualSwitchBtn')
};

// État de l'application
let currentConfig = {};
let currentStatus = {};

// Initialisation
document.addEventListener('DOMContentLoaded', () => {
    loadConfiguration();
    loadStatus();
    setupEventListeners();
    setInterval(loadStatus, REFRESH_INTERVAL);
});

// Configuration des événements
function setupEventListeners() {
    // Formulaire de configuration
    elements.autoSwitchForm.addEventListener('submit', saveConfiguration);
    
    // Bouton d'actualisation du statut
    elements.refreshStatusBtn.addEventListener('click', loadStatus);
    
    // Bouton de test de notification
    elements.testNotificationBtn.addEventListener('click', openTestModal);
    
    // Bouton de basculement manuel
    elements.manualSwitchBtn.addEventListener('click', performManualSwitch);
    
    // Formulaire de test de notification
    elements.testNotificationForm.addEventListener('submit', sendTestNotification);
    
    // Modal
    setupModalEvents();
}

// Charger la configuration
async function loadConfiguration() {
    try {
        const response = await fetch(`${API_URL}/autoswitch/config`);
        const result = await response.json();
        
        if (result.success) {
            currentConfig = result.data;
            updateConfigurationForm();
        } else {
            showError('Erreur lors du chargement de la configuration');
        }
    } catch (error) {
        console.error('Erreur:', error);
        showError('Erreur de connexion lors du chargement de la configuration');
    }
}

// Mettre à jour le formulaire avec la configuration
function updateConfigurationForm() {
    elements.autoSwitchEnabled.checked = currentConfig.auto_switch_enabled || false;
    elements.quotaThreshold.value = currentConfig.quota_alert_threshold || 80;
    elements.smsNotificationsEnabled.checked = currentConfig.sms_notifications_enabled || false;
    elements.switchNotificationsEnabled.checked = currentConfig.switch_notifications_enabled || false;
    elements.notificationPhone.value = currentConfig.notification_phone_number || '';
    elements.checkFrequency.value = currentConfig.quota_check_frequency || 180;
}

// Sauvegarder la configuration
async function saveConfiguration(event) {
    event.preventDefault();
    
    const configData = {
        auto_switch_enabled: elements.autoSwitchEnabled.checked,
        quota_alert_threshold: parseInt(elements.quotaThreshold.value),
        sms_notifications_enabled: elements.smsNotificationsEnabled.checked,
        switch_notifications_enabled: elements.switchNotificationsEnabled.checked,
        notification_phone_number: elements.notificationPhone.value.trim() || null,
        quota_check_frequency: parseInt(elements.checkFrequency.value)
    };
    
    try {
        const response = await fetch(`${API_URL}/autoswitch/config`, {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(configData)
        });
        
        const result = await response.json();
        
        if (result.success) {
            currentConfig = result.data;
            showSuccess('Configuration sauvegardée avec succès');
            loadStatus(); // Actualiser le statut
        } else {
            showError(result.message || 'Erreur lors de la sauvegarde');
        }
    } catch (error) {
        console.error('Erreur:', error);
        showError('Erreur de connexion lors de la sauvegarde');
    }
}

// Charger le statut du système
async function loadStatus() {
    try {
        const response = await fetch(`${API_URL}/autoswitch/status`);
        const result = await response.json();
        
        if (result.success) {
            currentStatus = result.data;
            updateStatusDisplay();
            updateSimsDisplay();
        } else {
            showError('Erreur lors du chargement du statut');
        }
    } catch (error) {
        console.error('Erreur:', error);
        elements.systemStatus.innerHTML = `
            <div class="alert alert-danger">
                <i class="fas fa-exclamation-triangle"></i>
                Erreur de connexion au serveur
            </div>
        `;
    }
}

// Mettre à jour l'affichage du statut
function updateStatusDisplay() {
    const { enabled, status, message, default_sim, available_sims } = currentStatus;
    
    let statusClass = 'info';
    let statusIcon = 'info-circle';
    
    switch (status) {
        case 'normal':
            statusClass = 'success';
            statusIcon = 'check-circle';
            break;
        case 'ready_to_switch':
            statusClass = 'warning';
            statusIcon = 'exclamation-triangle';
            break;
        case 'no_alternative':
            statusClass = 'danger';
            statusIcon = 'times-circle';
            break;
    }
    
    elements.systemStatus.innerHTML = `
        <div class="status-grid">
            <div class="status-item">
                <div class="status-label">État du système</div>
                <div class="status-value">
                    <span class="status-indicator status-${enabled ? 'active' : 'inactive'}"></span>
                    ${enabled ? 'Activé' : 'Désactivé'}
                </div>
            </div>
            <div class="status-item">
                <div class="status-label">Statut</div>
                <div class="status-value alert alert-${statusClass}">
                    <i class="fas fa-${statusIcon}"></i>
                    ${message}
                </div>
            </div>
            ${default_sim ? `
                <div class="status-item">
                    <div class="status-label">SIM par défaut</div>
                    <div class="status-value">
                        <strong>${default_sim.carrier_name}</strong> ${default_sim.phone_number}
                        <br>
                        <small>
                            SMS: ${default_sim.messages_sent}/${default_sim.monthly_limit} 
                            (${default_sim.sms_usage_percentage}%)
                        </small>
                        <div class="progress-bar">
                            <div class="progress-fill" style="width: ${default_sim.sms_usage_percentage}%"></div>
                        </div>
                        <small>
                            Destinataires: ${default_sim.recipients_sent}/${default_sim.recipients_limit} 
                            (${default_sim.recipients_usage_percentage}%)
                        </small>
                        <div class="progress-bar">
                            <div class="progress-fill" style="width: ${default_sim.recipients_usage_percentage}%"></div>
                        </div>
                        <small><strong>Quota max: ${default_sim.max_usage_percentage}%</strong></small>
                    </div>
                </div>
            ` : ''}
            <div class="status-item">
                <div class="status-label">SIMs alternatives</div>
                <div class="status-value">
                    ${available_sims.length} SIM(s) disponible(s)
                </div>
            </div>
        </div>
    `;
}

// Mettre à jour l'affichage des SIMs
function updateSimsDisplay() {
    const { default_sim, available_sims } = currentStatus;
    
    let simsHtml = '';
    
    // SIM par défaut
    if (default_sim) {
        simsHtml += createSimRow(default_sim, true);
    }
    
    // SIMs alternatives
    available_sims.forEach(sim => {
        simsHtml += createSimRow(sim, false);
    });
    
    if (!default_sim && available_sims.length === 0) {
        simsHtml = `
            <tr>
                <td colspan="7" class="text-center">
                    <div class="alert alert-warning">
                        <i class="fas fa-exclamation-triangle"></i>
                        Aucune SIM détectée
                    </div>
                </td>
            </tr>
        `;
    }
    
    elements.simsStatus.innerHTML = simsHtml;
}

// Créer une ligne de tableau pour une SIM
function createSimRow(sim, isDefault) {
    const maxUsageClass = sim.max_usage_percentage >= 90 ? 'danger' : 
                         sim.max_usage_percentage >= 70 ? 'warning' : 'success';
    const smsUsageClass = sim.sms_usage_percentage >= 90 ? 'danger' : 
                         sim.sms_usage_percentage >= 70 ? 'warning' : 'success';
    const recipientsUsageClass = sim.recipients_usage_percentage >= 90 ? 'danger' : 
                                sim.recipients_usage_percentage >= 70 ? 'warning' : 'success';
    
    return `
        <tr class="${isDefault ? 'table-warning' : ''}">
            <td class="text-center">
                <i class="fas fa-sim-card me-2"></i>
                ${isDefault ? '<span class="badge bg-warning text-dark ms-1"><i class="fas fa-star me-1"></i>Défaut</span>' : '<span class="badge bg-secondary">Alternative</span>'}
            </td>
            <td><strong>${sim.phone_number || 'N/A'}</strong></td>
            <td>${sim.carrier_name || 'Inconnu'}</td>
            <td class="text-center">
                <span class="badge bg-success">
                    <i class="fas fa-check-circle me-1"></i>Active
                </span>
            </td>
            <td>
                <div class="quota-display">
                    <div class="quota-item">
                        <div class="progress cyber-progress mb-1">
                            <div class="progress-bar progress-${smsUsageClass}" 
                                 style="width: ${sim.sms_usage_percentage}%">
                            </div>
                        </div>
                        <small class="quota-text">${sim.messages_sent}/${sim.monthly_limit} (${sim.sms_usage_percentage}%)</small>
                    </div>
                </div>
            </td>
            <td>
                <div class="quota-display">
                    <div class="quota-item">
                        <div class="progress cyber-progress mb-1">
                            <div class="progress-bar progress-${recipientsUsageClass}" 
                                 style="width: ${sim.recipients_usage_percentage}%">
                            </div>
                        </div>
                        <small class="quota-text">${sim.recipients_sent}/${sim.recipients_limit} (${sim.recipients_usage_percentage}%)</small>
                    </div>
                </div>
            </td>
            <td class="text-center">
                <span class="badge bg-${maxUsageClass}">
                    <i class="fas fa-chart-line me-1"></i>
                    ${sim.max_usage_percentage}%
                </span>
            </td>
        </tr>
    `;
}

// Ouvrir le modal de test
function openTestModal() {
    // Pré-remplir avec le numéro de notification si configuré
    if (currentConfig.notification_phone_number) {
        elements.testPhoneNumber.value = currentConfig.notification_phone_number;
    }
    
    elements.testNotificationModal.style.display = 'block';
}

// Effectuer un basculement manuel
async function performManualSwitch() {
    if (!confirm('Êtes-vous sûr de vouloir effectuer un basculement manuel de la SIM par défaut ?')) {
        return;
    }
    
    try {
        elements.manualSwitchBtn.disabled = true;
        elements.manualSwitchBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Basculement...';
        
        const response = await fetch(`${API_URL}/autoswitch/switch`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            }
        });
        
        const result = await response.json();
        
        if (result.success) {
            if (result.switched) {
                showSuccess(`Basculement effectué avec succès: ${result.from_sim.carrier_name} → ${result.to_sim.carrier_name}`);
                loadStatus(); // Actualiser le statut
            } else {
                showSuccess(result.message);
            }
        } else {
            showError(result.message || 'Erreur lors du basculement');
        }
    } catch (error) {
        console.error('Erreur:', error);
        showError('Erreur de connexion lors du basculement');
    } finally {
        elements.manualSwitchBtn.disabled = false;
        elements.manualSwitchBtn.innerHTML = '<i class="fas fa-exchange-alt"></i> Basculement Manuel';
    }
}

// Envoyer un SMS de test
async function sendTestNotification(event) {
    event.preventDefault();
    
    const phoneNumber = elements.testPhoneNumber.value.trim();
    const messageType = elements.testMessageType.value;
    
    if (!phoneNumber) {
        showError('Veuillez saisir un numéro de téléphone');
        return;
    }
    
    try {
        const response = await fetch(`${API_URL}/autoswitch/test-notification`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                phone_number: phoneNumber,
                message_type: messageType
            })
        });
        
        const result = await response.json();
        
        if (result.success) {
            showSuccess('SMS de test envoyé avec succès');
            closeModal();
        } else {
            showError(result.message || 'Erreur lors de l\'envoi du SMS de test');
        }
    } catch (error) {
        console.error('Erreur:', error);
        showError('Erreur de connexion lors de l\'envoi du SMS de test');
    }
}

// Configuration des événements du modal
function setupModalEvents() {
    // Fermer le modal
    const closeButtons = document.querySelectorAll('.modal-close, .modal-cancel');
    closeButtons.forEach(button => {
        button.addEventListener('click', closeModal);
    });
    
    // Fermer en cliquant à l'extérieur
    elements.testNotificationModal.addEventListener('click', (event) => {
        if (event.target === elements.testNotificationModal) {
            closeModal();
        }
    });
}

// Fermer le modal
function closeModal() {
    elements.testNotificationModal.style.display = 'none';
    elements.testNotificationForm.reset();
}

// Afficher un message de succès
function showSuccess(message) {
    showNotification(message, 'success');
}

// Afficher un message d'erreur
function showError(message) {
    showNotification(message, 'error');
}

// Afficher une notification
function showNotification(message, type) {
    // Supprimer les notifications existantes
    const existingNotifications = document.querySelectorAll('.notification');
    existingNotifications.forEach(notification => notification.remove());
    
    // Créer la nouvelle notification
    const notification = document.createElement('div');
    notification.className = `notification notification-${type}`;
    notification.innerHTML = `
        <div class="notification-content">
            <i class="fas fa-${type === 'success' ? 'check-circle' : 'exclamation-circle'}"></i>
            <span>${message}</span>
        </div>
        <button class="notification-close">&times;</button>
    `;
    
    // Ajouter au DOM
    document.body.appendChild(notification);
    
    // Événement de fermeture
    notification.querySelector('.notification-close').addEventListener('click', () => {
        notification.remove();
    });
    
    // Auto-suppression après 5 secondes
    setTimeout(() => {
        if (notification.parentNode) {
            notification.remove();
        }
    }, 5000);
    
    // Animation d'apparition
    setTimeout(() => {
        notification.classList.add('notification-show');
    }, 100);
} 