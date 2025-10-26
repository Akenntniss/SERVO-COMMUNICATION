/**
 * SMS Gateway SDK - JavaScript
 * Version: 1.0.0
 * 
 * SDK simple pour intégrer l'API SMS Gateway dans vos applications web
 */

class SMSGateway {
    constructor(options = {}) {
        this.baseUrl = options.baseUrl || 'http://168.231.85.4:3001/api';
        this.apiKey = options.apiKey || null;
        this.timeout = options.timeout || 30000;
        this.retryAttempts = options.retryAttempts || 3;
        this.retryDelay = options.retryDelay || 1000;
        
        // Event listeners
        this.eventListeners = {};
        
        // Rate limiting
        this.rateLimiter = new RateLimiter(
            options.maxRequestsPerMinute || 60,
            60000
        );
        
        console.log('📱 SMS Gateway SDK initialisé', {
            baseUrl: this.baseUrl,
            hasApiKey: !!this.apiKey
        });
    }

    /**
     * Envoie un SMS
     * @param {string} recipient - Numéro de téléphone au format international
     * @param {string} message - Contenu du message
     * @param {Object} options - Options supplémentaires
     * @returns {Promise<Object>} Résultat de l'envoi
     */
    async sendSMS(recipient, message, options = {}) {
        await this.rateLimiter.acquire();
        
        const data = {
            recipient: this.formatPhoneNumber(recipient),
            message: message, // Pas de limite de caractères
            priority: options.priority || 'normal',
            ...options
        };

        try {
            const result = await this.makeRequest('POST', '/messages/send', data);
            
            this.emit('message.sent', {
                messageId: result.id,
                recipient: result.recipient,
                simUsed: result.sim_used
            });
            
            return result;
        } catch (error) {
            this.emit('message.failed', {
                recipient,
                message,
                error: error.message
            });
            throw error;
        }
    }

    /**
     * Envoie plusieurs SMS en lot
     * @param {Array} recipients - Liste des destinataires
     * @param {string} message - Message à envoyer
     * @param {Object} options - Options
     * @returns {Promise<Array>} Résultats des envois
     */
    async sendBulkSMS(recipients, message, options = {}) {
        const results = [];
        const batchSize = options.batchSize || 5;
        const delay = options.delay || 1000;

        for (let i = 0; i < recipients.length; i += batchSize) {
            const batch = recipients.slice(i, i + batchSize);
            
            const batchPromises = batch.map(async (recipient) => {
                try {
                    const result = await this.sendSMS(recipient, message, options);
                    return { recipient, success: true, data: result };
                } catch (error) {
                    return { recipient, success: false, error: error.message };
                }
            });

            const batchResults = await Promise.allSettled(batchPromises);
            results.push(...batchResults.map(r => r.value));

            // Délai entre les lots
            if (i + batchSize < recipients.length) {
                await this.sleep(delay);
            }
        }

        this.emit('bulk.completed', {
            total: recipients.length,
            successful: results.filter(r => r.success).length,
            failed: results.filter(r => !r.success).length
        });

        return results;
    }

    /**
     * Récupère l'historique des messages
     * @param {Object} filters - Filtres de recherche
     * @returns {Promise<Object>} Historique des messages
     */
    async getHistory(filters = {}) {
        const params = new URLSearchParams({
            page: filters.page || 1,
            limit: filters.limit || 50,
            ...filters
        });

        return this.makeRequest('GET', `/messages/history?${params}`);
    }

    /**
     * Récupère le statut des SIMs
     * @returns {Promise<Array>} Liste des SIMs avec leur statut
     */
    async getSIMsStatus() {
        return this.makeRequest('GET', '/sims');
    }

    /**
     * Récupère le statut du système auto-switch
     * @returns {Promise<Object>} Statut du système
     */
    async getAutoSwitchStatus() {
        return this.makeRequest('GET', '/autoswitch/status');
    }

    /**
     * Configure le système auto-switch
     * @param {Object} config - Configuration
     * @returns {Promise<Object>} Résultat de la configuration
     */
    async configureAutoSwitch(config) {
        return this.makeRequest('PUT', '/autoswitch/config', config);
    }

    /**
     * Force un basculement manuel
     * @returns {Promise<Object>} Résultat du basculement
     */
    async forceSwitch() {
        return this.makeRequest('POST', '/autoswitch/switch');
    }

    /**
     * Vérifie l'état de santé du système
     * @returns {Promise<Object>} État de santé
     */
    async getHealth() {
        return this.makeRequest('GET', '/health');
    }

    /**
     * Met à jour le statut d'un message
     * @param {number} messageId - ID du message
     * @param {string} status - Nouveau statut
     * @param {string} errorMessage - Message d'erreur optionnel
     * @returns {Promise<Object>} Résultat de la mise à jour
     */
    async updateMessageStatus(messageId, status, errorMessage = null) {
        return this.makeRequest('PUT', '/messages/status', {
            message_id: messageId,
            status,
            error_message: errorMessage
        });
    }

    /**
     * Effectue une requête HTTP avec retry automatique
     * @private
     */
    async makeRequest(method, endpoint, data = null) {
        const url = `${this.baseUrl}${endpoint}`;
        
        for (let attempt = 1; attempt <= this.retryAttempts; attempt++) {
            try {
                const options = {
                    method,
                    headers: {
                        'Content-Type': 'application/json',
                        ...(this.apiKey && { 'Authorization': `Bearer ${this.apiKey}` })
                    },
                    ...(data && { body: JSON.stringify(data) })
                };

                const controller = new AbortController();
                const timeoutId = setTimeout(() => controller.abort(), this.timeout);

                const response = await fetch(url, {
                    ...options,
                    signal: controller.signal
                });

                clearTimeout(timeoutId);

                if (!response.ok) {
                    const errorData = await response.json().catch(() => ({}));
                    throw new SMSGatewayError(
                        errorData.message || `HTTP ${response.status}`,
                        response.status,
                        errorData.error_code
                    );
                }

                const result = await response.json();
                
                if (!result.success) {
                    throw new SMSGatewayError(
                        result.message,
                        400,
                        result.error_code
                    );
                }

                return result.data || result;

            } catch (error) {
                if (attempt === this.retryAttempts) {
                    throw error;
                }

                // Backoff exponentiel
                const delay = this.retryDelay * Math.pow(2, attempt - 1);
                await this.sleep(delay);
            }
        }
    }

    /**
     * Formate un numéro de téléphone
     * @private
     */
    formatPhoneNumber(phone) {
        // Supprime tous les caractères non numériques sauf le +
        let cleaned = phone.replace(/[^\d+]/g, '');
        
        // Ajoute le + si manquant et commence par un code pays
        if (!cleaned.startsWith('+') && cleaned.length > 10) {
            cleaned = '+' + cleaned;
        }
        
        return cleaned;
    }

    /**
     * Valide un numéro de téléphone
     * @param {string} phone - Numéro à valider
     * @returns {boolean} True si valide
     */
    isValidPhoneNumber(phone) {
        const formatted = this.formatPhoneNumber(phone);
        // Format international basique: +[1-4 chiffres][6-15 chiffres]
        return /^\+\d{1,4}\d{6,15}$/.test(formatted);
    }

    /**
     * Valide un message SMS
     * @param {string} message - Message à valider
     * @returns {Object} Résultat de validation
     */
    validateMessage(message) {
        const result = {
            valid: true,
            errors: [],
            warnings: []
        };

        if (!message || message.trim().length === 0) {
            result.valid = false;
            result.errors.push('Le message ne peut pas être vide');
        }

        // Limite de 160 caractères supprimée - messages longs autorisés

        // Détection de caractères spéciaux qui peuvent causer des problèmes
        const specialChars = /[^\x00-\x7F]/g;
        if (specialChars.test(message)) {
            result.warnings.push('Le message contient des caractères spéciaux qui peuvent affecter l\'encodage');
        }

        return result;
    }

    /**
     * Ajoute un écouteur d'événement
     * @param {string} event - Nom de l'événement
     * @param {Function} callback - Fonction de rappel
     */
    on(event, callback) {
        if (!this.eventListeners[event]) {
            this.eventListeners[event] = [];
        }
        this.eventListeners[event].push(callback);
    }

    /**
     * Supprime un écouteur d'événement
     * @param {string} event - Nom de l'événement
     * @param {Function} callback - Fonction de rappel
     */
    off(event, callback) {
        if (this.eventListeners[event]) {
            this.eventListeners[event] = this.eventListeners[event].filter(cb => cb !== callback);
        }
    }

    /**
     * Émet un événement
     * @private
     */
    emit(event, data) {
        if (this.eventListeners[event]) {
            this.eventListeners[event].forEach(callback => {
                try {
                    callback(data);
                } catch (error) {
                    console.error(`Erreur dans l'écouteur d'événement ${event}:`, error);
                }
            });
        }
    }

    /**
     * Utilitaire pour attendre
     * @private
     */
    sleep(ms) {
        return new Promise(resolve => setTimeout(resolve, ms));
    }

    /**
     * Obtient des statistiques d'utilisation
     * @returns {Object} Statistiques
     */
    getStats() {
        return {
            rateLimiter: this.rateLimiter.getStats(),
            eventListeners: Object.keys(this.eventListeners).reduce((acc, event) => {
                acc[event] = this.eventListeners[event].length;
                return acc;
            }, {})
        };
    }
}

/**
 * Classe d'erreur personnalisée pour SMS Gateway
 */
class SMSGatewayError extends Error {
    constructor(message, statusCode = 500, errorCode = null) {
        super(message);
        this.name = 'SMSGatewayError';
        this.statusCode = statusCode;
        this.errorCode = errorCode;
    }
}

/**
 * Rate Limiter simple
 */
class RateLimiter {
    constructor(maxRequests = 60, windowMs = 60000) {
        this.maxRequests = maxRequests;
        this.windowMs = windowMs;
        this.requests = [];
    }

    async acquire() {
        const now = Date.now();
        
        // Nettoie les anciennes requêtes
        this.requests = this.requests.filter(time => now - time < this.windowMs);
        
        if (this.requests.length >= this.maxRequests) {
            const oldestRequest = Math.min(...this.requests);
            const waitTime = this.windowMs - (now - oldestRequest);
            await new Promise(resolve => setTimeout(resolve, waitTime));
            return this.acquire();
        }
        
        this.requests.push(now);
    }

    getStats() {
        const now = Date.now();
        const recentRequests = this.requests.filter(time => now - time < this.windowMs);
        
        return {
            currentRequests: recentRequests.length,
            maxRequests: this.maxRequests,
            windowMs: this.windowMs,
            remainingRequests: this.maxRequests - recentRequests.length
        };
    }
}

/**
 * Utilitaires pour l'intégration
 */
const SMSGatewayUtils = {
    /**
     * Crée un wrapper pour WordPress
     */
    createWordPressWrapper() {
        return {
            sendNotification: async (phone, message) => {
                const gateway = new SMSGateway();
                try {
                    return await gateway.sendSMS(phone, message);
                } catch (error) {
                    console.error('SMS WordPress Error:', error);
                    return false;
                }
            }
        };
    },

    /**
     * Crée un wrapper pour les formulaires de contact
     */
    createContactFormWrapper(gateway) {
        return {
            onFormSubmit: async (formData) => {
                if (formData.phone && formData.notifyBySMS) {
                    const message = `Nouveau message de ${formData.name}: ${formData.message}`;
                    try {
                        await gateway.sendSMS(formData.phone, message);
                    } catch (error) {
                        console.error('Erreur envoi SMS formulaire:', error);
                    }
                }
            }
        };
    },

    /**
     * Crée un système de notifications en temps réel
     */
    createRealtimeNotifier(gateway, options = {}) {
        const notifier = {
            subscribers: new Set(),
            
            subscribe: (phone) => {
                notifier.subscribers.add(phone);
            },
            
            unsubscribe: (phone) => {
                notifier.subscribers.delete(phone);
            },
            
            broadcast: async (message) => {
                const results = await gateway.sendBulkSMS(
                    Array.from(notifier.subscribers),
                    message,
                    options
                );
                return results;
            }
        };
        
        return notifier;
    },

    /**
     * Générateur de codes de vérification
     */
    generateVerificationCode(length = 6) {
        return Math.random().toString(10).substr(2, length);
    },

    /**
     * Formateur de messages templates
     */
    formatTemplate(template, variables) {
        return template.replace(/\{\{(\w+)\}\}/g, (match, key) => {
            return variables[key] || match;
        });
    }
};

// Export pour les modules ES6
if (typeof module !== 'undefined' && module.exports) {
    module.exports = { SMSGateway, SMSGatewayError, SMSGatewayUtils };
}

// Export global pour les navigateurs
if (typeof window !== 'undefined') {
    window.SMSGateway = SMSGateway;
    window.SMSGatewayError = SMSGatewayError;
    window.SMSGatewayUtils = SMSGatewayUtils;
} 