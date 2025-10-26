// Configuration
const API_URL = window.APP_CONFIG?.API_URL || 'http://168.231.85.4:3001/api';
const REFRESH_INTERVAL = 30000; // 30 secondes
const ITEMS_PER_PAGE = 10;

// Éléments DOM
const elements = {
    messagesList: document.getElementById('messagesList'),
    statusFilter: document.getElementById('statusFilter'),
    simFilter: document.getElementById('simFilter'),
    searchInput: document.getElementById('searchInput'),
    dateFilter: document.getElementById('dateFilter'),
    refreshBtn: document.getElementById('refreshBtn'),
    sendMessageForm: document.getElementById('sendMessageForm'),
    sendMessageBtn: document.getElementById('sendMessageBtn'),
    sendBulkForm: document.getElementById('sendBulkForm'),
    sendBulkBtn: document.getElementById('sendBulkBtn'),
    charCount: document.getElementById('charCount'),
    bulkCharCount: document.getElementById('bulkCharCount'),
    todayMessagesCount: document.getElementById('todayMessagesCount'),
    successRate: document.getElementById('successRate'),
    pendingCount: document.getElementById('pendingCount'),
    failedCount: document.getElementById('failedCount'),
    startIndex: document.getElementById('startIndex'),
    endIndex: document.getElementById('endIndex'),
    totalCount: document.getElementById('totalCount'),
    pagination: document.getElementById('pagination')
};

// État de l'application
let messages = [];
let filteredMessages = [];
let sims = [];
let currentPage = 1;

// Initialisation
document.addEventListener('DOMContentLoaded', () => {
    loadSims();
    loadMessages();
    setupEventListeners();
    setInterval(loadMessages, REFRESH_INTERVAL);
});

// Configuration des écouteurs d'événements
function setupEventListeners() {
    if (elements.statusFilter) elements.statusFilter.addEventListener('change', filterMessages);
    if (elements.simFilter) elements.simFilter.addEventListener('change', filterMessages);
    if (elements.searchInput) elements.searchInput.addEventListener('input', filterMessages);
    if (elements.dateFilter) elements.dateFilter.addEventListener('change', filterMessages);
    if (elements.refreshBtn) elements.refreshBtn.addEventListener('click', () => {
        loadSims();
        loadMessages();
    });
    if (elements.sendMessageBtn) elements.sendMessageBtn.addEventListener('click', sendMessage);
    if (elements.sendBulkBtn) elements.sendBulkBtn.addEventListener('click', sendBulk);
    
    // Compteurs de caractères
    if (elements.sendMessageForm) {
        const messageInput = elements.sendMessageForm.querySelector('[name="message"]');
        if (messageInput) messageInput.addEventListener('input', updateCharCount);
    }
    if (elements.sendBulkForm) {
        const bulkMessageInput = elements.sendBulkForm.querySelector('[name="message"]');
        if (bulkMessageInput) bulkMessageInput.addEventListener('input', updateBulkCharCount);
    }
}

// Chargement des SIMs
async function loadSims() {
    try {
        const response = await fetch(`${API_URL}/sims`);
        const result = await response.json();
        sims = result.success ? result.data : [];
        updateSimSelects();
    } catch (error) {
        console.error('Erreur lors du chargement des SIMs:', error);
        showError('Erreur de chargement des SIMs');
        sims = [];
    }
}

// Mise à jour des selects de SIMs
function updateSimSelects() {
    const options = '<option value="">SIM par défaut</option>' +
        sims.map(sim => `
            <option value="${sim.id}">${sim.phone_number || 'N/A'} (${sim.carrier_name || 'N/A'})</option>
        `).join('');
    
    if (elements.sendMessageForm) {
        const simSelect = elements.sendMessageForm.querySelector('[name="sim_id"]');
        if (simSelect) simSelect.innerHTML = options;
    }
    if (elements.sendBulkForm) {
        const bulkSimSelect = elements.sendBulkForm.querySelector('[name="sim_id"]');
        if (bulkSimSelect) bulkSimSelect.innerHTML = options;
    }
    if (elements.simFilter) {
        elements.simFilter.innerHTML = '<option value="">Toutes les SIMs</option>' + options;
    }
}

// Chargement des messages
async function loadMessages() {
    try {
        const messagesResponse = await fetch(`${API_URL}/messages/history`);
        const messagesResult = await messagesResponse.json();
        messages = messagesResult.success ? messagesResult.data : [];
        
        // Calculer les statistiques localement
        const stats = calculateStats(messages);
        updateStats(stats);
        filterMessages();
    } catch (error) {
        console.error('Erreur lors du chargement des messages:', error);
        showError('Erreur de chargement des messages');
        messages = [];
        filterMessages();
    }
}

// Calcul des statistiques
function calculateStats(messages) {
    const today = new Date().toDateString();
    const todayMessages = messages.filter(m => 
        new Date(m.created_at).toDateString() === today
    );
    
    const successfulMessages = messages.filter(m => m.status === 'sent');
    const successRate = messages.length > 0 ? 
        Math.round((successfulMessages.length / messages.length) * 100) : 100;
    
    return {
        today_count: todayMessages.length,
        success_rate: successRate,
        pending_count: messages.filter(m => m.status === 'pending').length,
        failed_count: messages.filter(m => m.status === 'failed').length
    };
}

// Mise à jour des statistiques
function updateStats(stats) {
    if (elements.todayMessagesCount) elements.todayMessagesCount.textContent = stats.today_count;
    if (elements.successRate) elements.successRate.textContent = `${stats.success_rate}%`;
    if (elements.pendingCount) elements.pendingCount.textContent = stats.pending_count;
    if (elements.failedCount) elements.failedCount.textContent = stats.failed_count;
}

// Filtrage des messages
function filterMessages() {
    const status = elements.statusFilter ? elements.statusFilter.value : '';
    const simId = elements.simFilter ? elements.simFilter.value : '';
    const search = elements.searchInput ? elements.searchInput.value.toLowerCase() : '';
    const date = elements.dateFilter ? elements.dateFilter.value : '';
    
    filteredMessages = messages.filter(message => {
        const matchesStatus = !status || message.status === status;
        const matchesSim = !simId || message.sim_id === parseInt(simId);
        const matchesSearch = !search || 
            (message.recipient && message.recipient.toLowerCase().includes(search)) ||
            (message.message && message.message.toLowerCase().includes(search));
        const matchesDate = !date || (message.created_at && message.created_at.startsWith(date));
        return matchesStatus && matchesSim && matchesSearch && matchesDate;
    });
    
    currentPage = 1;
    renderMessages();
}

// Affichage des messages
function renderMessages() {
    if (!elements.messagesList) return;
    
    const start = (currentPage - 1) * ITEMS_PER_PAGE;
    const end = start + ITEMS_PER_PAGE;
    const pageMessages = filteredMessages.slice(start, end);
    
    elements.messagesList.innerHTML = pageMessages.map(message => `
        <tr>
            <td>${formatDate(message.created_at)}</td>
            <td>${message.recipient || 'N/A'}</td>
            <td>${truncateMessage(message.message || '')}</td>
            <td>${getSimInfo(message.sim_id)}</td>
            <td>
                <div class="phone-status">
                    <span class="status-indicator status-${message.status}"></span>
                    ${formatStatus(message.status)}
                </div>
            </td>
            <td>
                <div class="phone-actions">
                    <button class="btn btn-cyber btn-sm" onclick="viewMessage('${message.id}')">
                        <i class="fas fa-eye"></i>
                    </button>
                    ${message.status === 'pending' ? `
                        <button class="btn btn-cyber btn-sm" onclick="retryMessage('${message.id}')">
                            <i class="fas fa-redo"></i>
                        </button>
                    ` : ''}
                    <button class="btn btn-cyber btn-sm" onclick="deleteMessage('${message.id}')">
                        <i class="fas fa-trash"></i>
                    </button>
                </div>
            </td>
        </tr>
    `).join('');
    
    updatePagination();
}

// Mise à jour de la pagination
function updatePagination() {
    if (!elements.pagination) return;
    
    const totalPages = Math.ceil(filteredMessages.length / ITEMS_PER_PAGE);
    const start = (currentPage - 1) * ITEMS_PER_PAGE + 1;
    const end = Math.min(start + ITEMS_PER_PAGE - 1, filteredMessages.length);
    
    if (elements.startIndex) elements.startIndex.textContent = start;
    if (elements.endIndex) elements.endIndex.textContent = end;
    if (elements.totalCount) elements.totalCount.textContent = filteredMessages.length;
    
    let paginationHtml = '';
    
    // Bouton précédent
    paginationHtml += `
        <li class="page-item ${currentPage === 1 ? 'disabled' : ''}">
            <a class="page-link" href="#" onclick="changePage(${currentPage - 1})">Précédent</a>
        </li>
    `;
    
    // Pages
    for (let i = 1; i <= totalPages; i++) {
        if (
            i === 1 || 
            i === totalPages || 
            (i >= currentPage - 2 && i <= currentPage + 2)
        ) {
            paginationHtml += `
                <li class="page-item ${i === currentPage ? 'active' : ''}">
                    <a class="page-link" href="#" onclick="changePage(${i})">${i}</a>
                </li>
            `;
        } else if (i === currentPage - 3 || i === currentPage + 3) {
            paginationHtml += '<li class="page-item disabled"><span class="page-link">...</span></li>';
        }
    }
    
    // Bouton suivant
    paginationHtml += `
        <li class="page-item ${currentPage === totalPages ? 'disabled' : ''}">
            <a class="page-link" href="#" onclick="changePage(${currentPage + 1})">Suivant</a>
        </li>
    `;
    
    elements.pagination.innerHTML = paginationHtml;
}

// Changement de page
function changePage(page) {
    const totalPages = Math.ceil(filteredMessages.length / ITEMS_PER_PAGE);
    if (page >= 1 && page <= totalPages) {
        currentPage = page;
        renderMessages();
    }
}

// Envoi d'un message
async function sendMessage() {
    if (!elements.sendMessageForm) return;
    
    const formData = new FormData(elements.sendMessageForm);
    const messageData = {
        recipient: formData.get('recipient'),
        message: formData.get('message'),
        sim_id: formData.get('sim_id') || null
    };
    
    try {
        const response = await fetch(`${API_URL}/messages/send`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(messageData)
        });
        
        if (response.ok) {
            showSuccess('Message envoyé avec succès');
            elements.sendMessageForm.reset();
            updateCharCount();
            loadMessages();
        } else {
            throw new Error('Erreur lors de l\'envoi');
        }
    } catch (error) {
        console.error('Erreur lors de l\'envoi:', error);
        showError('Erreur lors de l\'envoi du message');
    }
}

// Envoi en masse
async function sendBulk() {
    if (!elements.sendBulkForm) return;
    
    const formData = new FormData(elements.sendBulkForm);
    const recipients = formData.get('recipients').split('\n').filter(r => r.trim());
    const message = formData.get('message');
    const simId = formData.get('sim_id') || null;
    
    try {
        const response = await fetch(`${API_URL}/messages/send-bulk`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                recipients: recipients,
                message: message,
                sim_id: simId
            })
        });
        
        if (response.ok) {
            showSuccess(`${recipients.length} messages envoyés avec succès`);
            elements.sendBulkForm.reset();
            updateBulkCharCount();
            loadMessages();
        } else {
            throw new Error('Erreur lors de l\'envoi en masse');
        }
    } catch (error) {
        console.error('Erreur lors de l\'envoi en masse:', error);
        showError('Erreur lors de l\'envoi en masse');
    }
}

// Réessayer un message
async function retryMessage(messageId) {
    try {
        const response = await fetch(`${API_URL}/messages/${messageId}/retry`, {
            method: 'POST'
        });
        
        if (response.ok) {
            showSuccess('Message remis en file d\'attente');
            loadMessages();
        } else {
            throw new Error('Erreur lors de la remise en file');
        }
    } catch (error) {
        console.error('Erreur lors de la remise en file:', error);
        showError('Erreur lors de la remise en file d\'attente');
    }
}

// Suppression d'un message
async function deleteMessage(messageId) {
    if (!confirm('Êtes-vous sûr de vouloir supprimer ce message ?')) return;
    
    try {
        const response = await fetch(`${API_URL}/messages/${messageId}`, {
            method: 'DELETE'
        });
        
        if (response.ok) {
            showSuccess('Message supprimé avec succès');
            loadMessages();
        } else {
            throw new Error('Erreur lors de la suppression');
        }
    } catch (error) {
        console.error('Erreur lors de la suppression:', error);
        showError('Erreur lors de la suppression du message');
    }
}

// Voir les détails d'un message
function viewMessage(messageId) {
    const message = messages.find(m => m.id == messageId);
    if (!message) {
        showError('Message non trouvé');
        return;
    }

    // Remplir le modal avec les détails du message
    document.getElementById('modalMessageId').textContent = message.id || '-';
    document.getElementById('modalRecipient').textContent = message.recipient || '-';
    document.getElementById('modalMessage').textContent = message.message || '-';
    
    // Statut avec indicateur
    const statusIndicator = document.getElementById('modalStatusIndicator');
    const statusText = document.getElementById('modalStatus');
    statusIndicator.className = `status-indicator status-${message.status}`;
    statusText.textContent = formatStatus(message.status);
    
    // Informations SIM
    document.getElementById('modalSimInfo').textContent = getSimInfo(message.sim_id);
    
    // Dates
    document.getElementById('modalCreatedAt').textContent = message.created_at ? 
        new Date(message.created_at).toLocaleString('fr-FR') : '-';
    document.getElementById('modalSentAt').textContent = message.sent_at ? 
        new Date(message.sent_at).toLocaleString('fr-FR') : '-';
    document.getElementById('modalDeliveredAt').textContent = message.delivered_at ? 
        new Date(message.delivered_at).toLocaleString('fr-FR') : '-';
    
    // Nombre de tentatives
    document.getElementById('modalRetryCount').textContent = message.retry_count || '0';
    
    // Raison de l'échec (si applicable)
    const failureContainer = document.getElementById('modalFailureReasonContainer');
    const failureReason = document.getElementById('modalFailureReason');
    if (message.status === 'failed' && message.failure_reason) {
        failureReason.textContent = message.failure_reason;
        failureContainer.style.display = 'block';
    } else {
        failureContainer.style.display = 'none';
    }
    
    // Bouton retry (si le message est en échec ou en attente)
    const retryBtn = document.getElementById('modalRetryBtn');
    if (message.status === 'pending' || message.status === 'failed') {
        retryBtn.style.display = 'inline-block';
        retryBtn.onclick = () => {
            retryMessage(message.id);
            // Fermer le modal après retry
            const modal = bootstrap.Modal.getInstance(document.getElementById('messageDetailsModal'));
            if (modal) modal.hide();
        };
    } else {
        retryBtn.style.display = 'none';
    }
    
    // Afficher le modal avec options pour corriger le backdrop
    const modalElement = document.getElementById('messageDetailsModal');
    const modal = new bootstrap.Modal(modalElement, {
        backdrop: true,
        keyboard: true,
        focus: true
    });
    
    // S'assurer que le modal est bien au premier plan
    modalElement.style.zIndex = '1100';
    
    modal.show();
}

// Mise à jour du compteur de caractères
function updateCharCount() {
    if (elements.sendMessageForm && elements.charCount) {
        const messageInput = elements.sendMessageForm.querySelector('[name="message"]');
        if (messageInput) {
            elements.charCount.textContent = messageInput.value.length;
        }
    }
}

// Mise à jour du compteur de caractères en masse
function updateBulkCharCount() {
    if (elements.sendBulkForm && elements.bulkCharCount) {
        const bulkMessageInput = elements.sendBulkForm.querySelector('[name="message"]');
        if (bulkMessageInput) {
            elements.bulkCharCount.textContent = bulkMessageInput.value.length;
        }
    }
}

// Formatage de date
function formatDate(dateString) {
    if (!dateString) return 'N/A';
    
    const date = new Date(dateString);
    const now = new Date();
    const diffMs = now - date;
    const diffMins = Math.floor(diffMs / 60000);
    const diffHours = Math.floor(diffMs / 3600000);
    const diffDays = Math.floor(diffMs / 86400000);

    if (diffMins < 1) return 'À l\'instant';
    if (diffMins < 60) return `Il y a ${diffMins} min`;
    if (diffHours < 24) return `Il y a ${diffHours}h`;
    if (diffDays < 7) return `Il y a ${diffDays} jour(s)`;
    
    return date.toLocaleDateString('fr-FR', {
        day: '2-digit',
        month: '2-digit',
        year: 'numeric',
        hour: '2-digit',
        minute: '2-digit'
    });
}

// Formatage du statut
function formatStatus(status) {
    const statusMap = {
        'sent': 'Envoyé',
        'pending': 'En attente',
        'failed': 'Échec',
        'delivered': 'Livré'
    };
    return statusMap[status] || status;
}

// Troncature du message
function truncateMessage(message) {
    return message.length > 50 ? message.substring(0, 50) + '...' : message;
}

// Récupération des infos SIM
function getSimInfo(simId) {
    const sim = sims.find(s => s.id == simId);
    if (!sim) return 'N/A';
    
    const phoneNumber = sim.phone_number || 'N/A';
    const carrierName = sim.carrier_name || 'N/A';
    return `${phoneNumber} (${carrierName})`;
}

// Affichage des erreurs
function showError(message) {
    // Implémenter un système de notification d'erreur
    console.error(message);
}

// Affichage des succès
function showSuccess(message) {
    // Implémenter un système de notification de succès
    console.log(message);
} 
 
 