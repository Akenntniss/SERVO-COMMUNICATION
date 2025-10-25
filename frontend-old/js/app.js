// Configuration
const API_URL = 'http://192.168.1.155:3001/api';
const REFRESH_INTERVAL = 30000; // 30 secondes

// Éléments DOM
const elements = {
    todaySms: document.getElementById('todaySms'),
    onlinePhones: document.getElementById('onlinePhones'),
    activeSims: document.getElementById('activeSims'),
    pendingMessages: document.getElementById('pendingMessages'),
    recentActivity: document.getElementById('recentActivity')
};

// Graphiques
let smsChart, simChart;

// Initialisation
document.addEventListener('DOMContentLoaded', () => {
    initializeCharts();
    loadDashboardData();
    setInterval(loadDashboardData, REFRESH_INTERVAL);
});

// Initialisation des graphiques
function initializeCharts() {
    // Graphique d'évolution des envois
    const smsCtx = document.getElementById('smsChart');
    if (smsCtx) {
        smsChart = new Chart(smsCtx.getContext('2d'), {
            type: 'line',
            data: {
                labels: [],
                datasets: [{
                    label: 'SMS Envoyés',
                    data: [],
                    borderColor: '#00D4FF',
                    backgroundColor: 'rgba(0, 212, 255, 0.1)',
                    borderWidth: 2,
                    tension: 0.4,
                    fill: true
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        labels: {
                            color: '#FFFFFF'
                        }
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        grid: {
                            color: 'rgba(255, 255, 255, 0.1)'
                        },
                        ticks: {
                            color: '#FFFFFF'
                        }
                    },
                    x: {
                        grid: {
                            color: 'rgba(255, 255, 255, 0.1)'
                        },
                        ticks: {
                            color: '#FFFFFF'
                        }
                    }
                }
            }
        });
    }

    // Graphique de répartition par SIM
    const simCtx = document.getElementById('simChart');
    if (simCtx) {
        simChart = new Chart(simCtx.getContext('2d'), {
            type: 'doughnut',
            data: {
                labels: [],
                datasets: [{
                    data: [],
                    backgroundColor: [
                        '#00D4FF',
                        '#9D00FF',
                        '#00FF88',
                        '#FF6600'
                    ]
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'bottom',
                        labels: {
                            color: '#FFFFFF'
                        }
                    }
                }
            }
        });
    }
}

// Chargement des données du dashboard
async function loadDashboardData() {
    try {
        // Charger les métriques
        const [phonesResponse, simsResponse, messagesResponse] = await Promise.all([
            fetch(`${API_URL}/phones`),
            fetch(`${API_URL}/sims`),
            fetch(`${API_URL}/messages/history?limit=10`)
        ]);

        const phonesResult = await phonesResponse.json();
        const simsResult = await simsResponse.json();
        const messagesResult = await messagesResponse.json();

        const phones = phonesResult.success ? phonesResult.data : [];
        const sims = simsResult.success ? simsResult.data : [];
        const messages = messagesResult.success ? messagesResult.data : [];

        // Mettre à jour les métriques
        updateMetrics(phones, sims, messages);
        
        // Mettre à jour l'activité récente
        updateRecentActivity(messages);
        
        // Mettre à jour les graphiques
        updateCharts(phones, sims, messages);
    } catch (error) {
        console.error('Erreur lors du chargement des données:', error);
        showError('Erreur de chargement des données');
    }
}

// Mise à jour des métriques
function updateMetrics(phones, sims, messages) {
    // SMS aujourd'hui
    const todaySms = messages.filter(m => 
        new Date(m.created_at).toDateString() === new Date().toDateString()
    ).length;
    if (elements.todaySms) elements.todaySms.textContent = todaySms;

    // Téléphones en ligne
    const onlinePhones = phones.filter(p => p.status === 'active').length;
    if (elements.onlinePhones) elements.onlinePhones.textContent = onlinePhones;

    // SIMs actives
    const activeSims = sims.filter(s => s.is_active).length;
    if (elements.activeSims) elements.activeSims.textContent = activeSims;

    // Messages en attente
    const pendingMessages = messages.filter(m => m.status === 'pending').length;
    if (elements.pendingMessages) elements.pendingMessages.textContent = pendingMessages;
}

// Mise à jour de l'activité récente
function updateRecentActivity(messages) {
    if (elements.recentActivity) {
        elements.recentActivity.innerHTML = messages.map(msg => `
            <tr>
                <td>${new Date(msg.created_at).toLocaleString()}</td>
                <td>${msg.recipient}</td>
                <td>${msg.message}</td>
                <td>${msg.phone_number || 'N/A'}</td>
                <td>
                    <span class="status-indicator status-${msg.status}"></span>
                    ${msg.status}
                </td>
            </tr>
        `).join('');
    }
}

// Mise à jour des graphiques
function updateCharts(phones, sims, messages) {
    if (smsChart) {
        // Données pour le graphique d'évolution
        const last7Days = Array.from({length: 7}, (_, i) => {
            const date = new Date();
            date.setDate(date.getDate() - i);
            return date.toISOString().split('T')[0];
        }).reverse();

        const smsData = last7Days.map(date => 
            messages.filter(m => m.created_at && m.created_at.startsWith(date)).length
        );

        smsChart.data.labels = last7Days.map(date => 
            new Date(date).toLocaleDateString('fr-FR', { weekday: 'short' })
        );
        smsChart.data.datasets[0].data = smsData;
        smsChart.update();
    }

    if (simChart) {
        // Données pour le graphique de répartition
        const simData = sims.map(sim => ({
            label: sim.phone_number || 'N/A',
            value: messages.filter(m => m.sim_id === sim.id).length
        }));

        simChart.data.labels = simData.map(d => d.label);
        simChart.data.datasets[0].data = simData.map(d => d.value);
        simChart.update();
    }
}

// Affichage des erreurs
function showError(message) {
    // Implémenter un système de notification d'erreur
    console.error(message);
} 
 
 