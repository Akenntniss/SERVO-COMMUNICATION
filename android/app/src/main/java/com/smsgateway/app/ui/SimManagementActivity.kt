package com.smsgateway.app.ui

import android.os.Bundle
import android.util.Log
import android.view.Gravity
import android.view.View
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.smsgateway.app.R
import com.smsgateway.app.data.api.ApiClient
import com.smsgateway.app.data.model.SimCard
import com.smsgateway.app.data.model.SimLimitsUpdate
import com.smsgateway.app.utils.PreferencesManager
import kotlinx.coroutines.launch

class SimManagementActivity : AppCompatActivity() {
    
    private val TAG = "SimManagementActivity"
    private lateinit var preferencesManager: PreferencesManager
    private lateinit var apiClient: ApiClient
    private lateinit var scrollView: ScrollView
    private lateinit var mainLayout: LinearLayout
    private var serverSims: List<SimCard> = emptyList()
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        preferencesManager = PreferencesManager(this)
        apiClient = ApiClient
        
        // Initialiser l'URL du serveur
        val serverUrl = preferencesManager.getCurrentServerUrl()
        if (serverUrl != null) {
            apiClient.updateBaseUrl(serverUrl)
        }
        
        setupUI()
        loadSimCards()
    }
    
    private fun setupUI() {
        // Configuration de l'écran principal
        scrollView = ScrollView(this).apply {
            setBackgroundColor(0xFF0a0a0a.toInt())
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.MATCH_PARENT
            )
        }
        
        mainLayout = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(32, 32, 32, 32)
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            )
        }
        
        // Titre
        val titleText = TextView(this).apply {
            text = "📟 GESTION DES SIM"
            textSize = 24f
            setTextColor(0xFF00ff41.toInt())
            gravity = Gravity.CENTER
            setPadding(0, 0, 0, 32)
            setTypeface(null, android.graphics.Typeface.BOLD)
        }
        mainLayout.addView(titleText)
        
        // Bouton retour
        val backButton = Button(this).apply {
            text = "🔙 Retour"
            textSize = 16f
            setTextColor(0xFFffffff.toInt())
            setBackgroundColor(0xFF333333.toInt())
            setPadding(24, 16, 24, 16)
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            ).apply {
                gravity = Gravity.CENTER
                setMargins(0, 0, 0, 32)
            }
            setOnClickListener { finish() }
        }
        mainLayout.addView(backButton)
        
        scrollView.addView(mainLayout)
        setContentView(scrollView)
    }
    
    private fun loadSimCards() {
        Log.d(TAG, "🔍 Chargement des cartes SIM...")
        
        // Afficher un indicateur de chargement
        val loadingText = TextView(this).apply {
            text = "⏳ Chargement des SIM depuis le serveur..."
            textSize = 16f
            setTextColor(0xFF888888.toInt())
            gravity = Gravity.CENTER
            setPadding(0, 32, 0, 32)
        }
        mainLayout.addView(loadingText)
        
        // Charger les SIM depuis le serveur
        lifecycleScope.launch {
            try {
                val apiService = apiClient.getApiService()
                if (apiService == null) {
                    runOnUiThread {
                        mainLayout.removeView(loadingText)
                        showError("❌ Service API non disponible")
                    }
                    return@launch
                }
                
                val response = apiService.getAllSims()
                
                runOnUiThread {
                    mainLayout.removeView(loadingText)
                    
                    if (response.isSuccessful && response.body()?.success == true) {
                        serverSims = response.body()?.data ?: emptyList()
                        Log.d(TAG, "📱 ${serverSims.size} SIM(s) chargée(s) depuis le serveur")
                        
                        if (serverSims.isEmpty()) {
                            showError("❌ Aucune carte SIM trouvée sur le serveur")
                            return@runOnUiThread
                        }
                        
                        // Afficher chaque SIM avec ses options de configuration
                        serverSims.forEachIndexed { index, sim ->
                            createSimConfigCard(sim, index)
                        }
                        
                        // Bouton de sauvegarde global
                        val saveAllButton = Button(this@SimManagementActivity).apply {
                            text = "💾 SAUVEGARDER TOUTES LES CONFIGURATIONS"
                            textSize = 18f
                            setTextColor(0xFF000000.toInt())
                            setBackgroundColor(0xFF00ff41.toInt())
                            setPadding(32, 24, 32, 24)
                            layoutParams = LinearLayout.LayoutParams(
                                LinearLayout.LayoutParams.MATCH_PARENT,
                                LinearLayout.LayoutParams.WRAP_CONTENT
                            ).apply {
                                setMargins(0, 32, 0, 16)
                            }
                            setTypeface(null, android.graphics.Typeface.BOLD)
                            setOnClickListener { saveAllConfigurations() }
                        }
                        mainLayout.addView(saveAllButton)
                        
                    } else {
                        val errorMsg = response.body()?.message ?: "Erreur lors du chargement des SIM"
                        Log.e(TAG, "❌ Erreur API: $errorMsg")
                        showError("❌ $errorMsg")
                    }
                }
                
            } catch (e: Exception) {
                Log.e(TAG, "❌ Erreur lors du chargement des SIM", e)
                runOnUiThread {
                    mainLayout.removeView(loadingText)
                    showError("❌ Erreur de connexion: ${e.message}")
                }
            }
        }
    }
    
    private fun showError(message: String) {
        val errorText = TextView(this).apply {
            text = message
            textSize = 16f
            setTextColor(0xFFff4444.toInt())
            gravity = Gravity.CENTER
            setPadding(0, 32, 0, 32)
        }
        mainLayout.addView(errorText)
    }
    
    private fun createSimConfigCard(sim: SimCard, index: Int) {
        // Container principal pour cette SIM
        val simCard = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(0xFF1a1a1a.toInt())
            setPadding(24, 24, 24, 24)
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            ).apply {
                setMargins(0, 0, 0, 24)
            }
        }
        
        // En-tête de la SIM
        val simHeader = TextView(this).apply {
            text = "📱 SIM ${index + 1} - Slot ${sim.slotIndex} (ID: ${sim.id})"
            textSize = 20f
            setTextColor(0xFF00ff41.toInt())
            setTypeface(null, android.graphics.Typeface.BOLD)
            setPadding(0, 0, 0, 16)
        }
        simCard.addView(simHeader)
        
        // Informations de la SIM
        val simInfo = TextView(this).apply {
            val infoText = buildString {
                append("📞 Numéro: ${sim.phoneNumber ?: "N/A"}\n")
                append("📡 Opérateur: ${sim.carrierName ?: "N/A"}\n")
                append("🌍 Pays: ${sim.countryCode ?: "N/A"}\n")
                append("📱 Téléphone: ${sim.phoneModel ?: "N/A"}\n")
                append("🔄 Statut: ${if (sim.isActive) "✅ Active" else "❌ Inactive"}\n")
                append("📅 SMS ce mois: ${sim.messagesSentMonth}/${sim.monthlyLimit}\n")
                append("👥 Destinataires ce mois: ${sim.recipientsMonthly}/${sim.recipientsMonthlyLimit}")
            }
            text = infoText
            textSize = 14f
            setTextColor(0xFFcccccc.toInt())
            setPadding(0, 0, 0, 24)
        }
        simCard.addView(simInfo)
        
        // Séparateur
        val separator = View(this).apply {
            setBackgroundColor(0xFF333333.toInt())
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                2
            ).apply {
                setMargins(0, 0, 0, 24)
            }
        }
        simCard.addView(separator)
        
        // Configuration des limites
        val configTitle = TextView(this).apply {
            text = "⚙️ CONFIGURATION DES LIMITES"
            textSize = 16f
            setTextColor(0xFF00ff41.toInt())
            setTypeface(null, android.graphics.Typeface.BOLD)
            setPadding(0, 0, 0, 16)
        }
        simCard.addView(configTitle)
        
        // Limite de destinataires par mois
        val recipientLimitLabel = TextView(this).apply {
            text = "👥 Limite de destinataires par mois:"
            textSize = 14f
            setTextColor(0xFFffffff.toInt())
            setPadding(0, 0, 0, 8)
        }
        simCard.addView(recipientLimitLabel)
        
        val recipientLimitInput = EditText(this).apply {
            setText(sim.recipientsMonthlyLimit.toString())
            textSize = 16f
            setTextColor(0xFFffffff.toInt())
            setHintTextColor(0xFF888888.toInt())
            setBackgroundColor(0xFF333333.toInt())
            setPadding(16, 16, 16, 16)
            inputType = android.text.InputType.TYPE_CLASS_NUMBER
            tag = "recipients_monthly_limit_${sim.id}"
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            ).apply {
                setMargins(0, 0, 0, 16)
            }
        }
        simCard.addView(recipientLimitInput)
        
        // Limite SMS par mois
        val monthlyLimitLabel = TextView(this).apply {
            text = "📅 Limite SMS par mois:"
            textSize = 14f
            setTextColor(0xFFffffff.toInt())
            setPadding(0, 0, 0, 8)
        }
        simCard.addView(monthlyLimitLabel)
        
        val monthlyLimitInput = EditText(this).apply {
            setText(sim.monthlyLimit.toString())
            textSize = 16f
            setTextColor(0xFFffffff.toInt())
            setHintTextColor(0xFF888888.toInt())
            setBackgroundColor(0xFF333333.toInt())
            setPadding(16, 16, 16, 16)
            inputType = android.text.InputType.TYPE_CLASS_NUMBER
            tag = "monthly_limit_${sim.id}"
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            ).apply {
                setMargins(0, 0, 0, 24)
            }
        }
        simCard.addView(monthlyLimitInput)
        
        // Bouton de sauvegarde individuel
        val saveButton = Button(this).apply {
            text = "💾 Sauvegarder cette SIM"
            textSize = 14f
            setTextColor(0xFF000000.toInt())
            setBackgroundColor(0xFF00ff41.toInt())
            setPadding(24, 16, 24, 16)
            layoutParams = LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT,
                LinearLayout.LayoutParams.WRAP_CONTENT
            )
            setOnClickListener { saveSimConfiguration(sim, index) }
        }
        simCard.addView(saveButton)
        
        mainLayout.addView(simCard)
    }
    
    private fun saveSimConfiguration(sim: SimCard, index: Int) {
        Log.d(TAG, "💾 Sauvegarde de la configuration pour SIM ID ${sim.id}")
        
        try {
            // Récupérer les valeurs des champs
            val recipientsMonthlyLimitInput = mainLayout.findViewWithTag<EditText>("recipients_monthly_limit_${sim.id}")
            val monthlyLimitInput = mainLayout.findViewWithTag<EditText>("monthly_limit_${sim.id}")
            
            val recipientsMonthlyLimit = recipientsMonthlyLimitInput?.text?.toString()?.toIntOrNull() ?: sim.recipientsMonthlyLimit
            val monthlyLimit = monthlyLimitInput?.text?.toString()?.toIntOrNull() ?: sim.monthlyLimit
            
            Log.d(TAG, "📊 Limites configurées: Recipients/mois=$recipientsMonthlyLimit, SMS/mois=$monthlyLimit")
            
            // Envoyer au serveur
            lifecycleScope.launch {
                try {
                    val apiService = apiClient.getApiService()
                    if (apiService == null) {
                        runOnUiThread {
                            Toast.makeText(
                                this@SimManagementActivity,
                                "❌ Service API non disponible",
                                Toast.LENGTH_LONG
                            ).show()
                        }
                        return@launch
                    }
                    
                    val limitsUpdate = SimLimitsUpdate(
                        monthlyLimit = monthlyLimit,
                        recipientsMonthlyLimit = recipientsMonthlyLimit
                    )
                    
                    val response = apiService.updateSimLimits(sim.id, limitsUpdate)
                    
                    runOnUiThread {
                        if (response.isSuccessful && response.body()?.success == true) {
                            Toast.makeText(
                                this@SimManagementActivity,
                                "✅ Configuration SIM ${index + 1} sauvegardée\n" +
                                "Recipients/mois: $recipientsMonthlyLimit\n" +
                                "SMS/mois: $monthlyLimit",
                                Toast.LENGTH_LONG
                            ).show()
                        } else {
                            val errorMsg = response.body()?.message ?: "Erreur lors de la sauvegarde"
                            Toast.makeText(
                                this@SimManagementActivity,
                                "❌ Erreur: $errorMsg",
                                Toast.LENGTH_LONG
                            ).show()
                        }
                    }
                    
                } catch (e: Exception) {
                    Log.e(TAG, "❌ Erreur lors de la sauvegarde", e)
                    runOnUiThread {
                        Toast.makeText(
                            this@SimManagementActivity,
                            "❌ Erreur lors de la sauvegarde: ${e.message}",
                            Toast.LENGTH_LONG
                        ).show()
                    }
                }
            }
            
        } catch (e: Exception) {
            Log.e(TAG, "❌ Erreur lors de la récupération des valeurs", e)
            Toast.makeText(this, "❌ Erreur: ${e.message}", Toast.LENGTH_LONG).show()
        }
    }
    
    private fun saveAllConfigurations() {
        Log.d(TAG, "💾 Sauvegarde de toutes les configurations SIM")
        
        var savedCount = 0
        
        serverSims.forEachIndexed { index, sim ->
            try {
                saveSimConfiguration(sim, index)
                savedCount++
            } catch (e: Exception) {
                Log.e(TAG, "❌ Erreur lors de la sauvegarde de la SIM ${index + 1}", e)
            }
        }
        
        Toast.makeText(
            this,
            "✅ $savedCount configuration(s) en cours de sauvegarde sur ${serverSims.size}",
            Toast.LENGTH_LONG
        ).show()
    }
}
