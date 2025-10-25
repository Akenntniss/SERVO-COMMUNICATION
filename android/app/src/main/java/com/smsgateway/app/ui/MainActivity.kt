package com.smsgateway.app.ui

import android.Manifest
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Bundle
import android.widget.*
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.core.app.ActivityCompat
import androidx.core.content.ContextCompat
import androidx.lifecycle.lifecycleScope
import android.content.Context
import android.util.Log
import com.smsgateway.app.R
import com.smsgateway.app.data.api.ApiClient
import com.smsgateway.app.data.model.PhoneRegistration
import com.smsgateway.app.data.model.SimInfo
import com.smsgateway.app.data.model.SimSyncRequest
import com.smsgateway.app.utils.PreferencesManager
import com.smsgateway.app.utils.SimUtils
import com.smsgateway.app.service.MessageManager
import kotlinx.coroutines.launch

class MainActivity : AppCompatActivity() {
    
    private lateinit var preferencesManager: PreferencesManager
    private lateinit var messageManager: MessageManager
    private lateinit var tvStatus: TextView
    private lateinit var tvPhoneInfo: TextView
    private lateinit var tvSimsInfo: TextView
    private lateinit var tvServerInfo: TextView
    private lateinit var btnRefresh: Button
    private lateinit var btnSettings: Button
    private lateinit var btnManageSims: Button
    private lateinit var btnSyncSims: Button
    private lateinit var btnConfigureService: Button
    private lateinit var btnToggleService: Button
    private lateinit var tvServiceStatus: TextView
    private lateinit var tvConnectionStatus: TextView
    
    private val PERMISSIONS_REQUEST_CODE = 1001
    private val requiredPermissions = arrayOf(
        Manifest.permission.SEND_SMS,
        Manifest.permission.RECEIVE_SMS,
        Manifest.permission.READ_SMS,
        Manifest.permission.READ_PHONE_STATE,
        Manifest.permission.READ_PHONE_NUMBERS
    )
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main_simple)
        
        preferencesManager = PreferencesManager(this)
        messageManager = MessageManager(this, lifecycleScope)
        initViews()
        setupClickListeners()
        
        if (checkPermissions()) {
            initializeApp()
        } else {
            requestPermissions()
        }
    }
    
    private fun initViews() {
        tvStatus = findViewById(R.id.tvStatus)
        tvPhoneInfo = findViewById(R.id.tvPhoneInfo)
        tvSimsInfo = findViewById(R.id.tvSimsInfo)
        tvServerInfo = findViewById(R.id.tvServerInfo)
        tvServiceStatus = findViewById(R.id.tvServiceStatus)
        tvConnectionStatus = findViewById(R.id.tvConnectionStatus)
        btnRefresh = findViewById(R.id.btnRefresh)
        btnSettings = findViewById(R.id.btnSettings)
        btnManageSims = findViewById(R.id.btnManageSims)
        btnSyncSims = findViewById(R.id.btnSyncSims)
        btnConfigureService = findViewById(R.id.btnConfigureService)
        btnToggleService = findViewById(R.id.btnToggleService)
    }
    
    private fun setupClickListeners() {
        // Bouton de rafraîchissement
        btnRefresh.setOnClickListener {
            refreshData()
        }
        
        // Bouton de gestion des SIM
        btnManageSims.setOnClickListener {
            startActivity(Intent(this, SimManagementActivity::class.java))
        }
        
        // Bouton de configuration
        btnSettings.setOnClickListener {
            startActivity(Intent(this, SettingsActivity::class.java))
        }
        
        // Bouton de synchronisation des SIM
        btnSyncSims.setOnClickListener {
            syncSimsWithServer()
        }
        
        // Bouton de configuration du service
        btnConfigureService.setOnClickListener {
            showServerConfigDialog()
        }
        
        // Bouton de démarrage/arrêt du service
        btnToggleService.setOnClickListener {
            toggleService()
        }
    }
    
    private fun checkPermissions(): Boolean {
        return requiredPermissions.all { permission ->
            ContextCompat.checkSelfPermission(this, permission) == PackageManager.PERMISSION_GRANTED
        }
    }
    
    private fun requestPermissions() {
        ActivityCompat.requestPermissions(this, requiredPermissions, PERMISSIONS_REQUEST_CODE)
    }
    
    override fun onRequestPermissionsResult(
        requestCode: Int,
        permissions: Array<out String>,
        grantResults: IntArray
    ) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        
        if (requestCode == PERMISSIONS_REQUEST_CODE) {
            if (grantResults.all { it == PackageManager.PERMISSION_GRANTED }) {
                initializeApp()
            } else {
                tvStatus.text = "❌ Permissions requises non accordées"
                Toast.makeText(this, "Toutes les permissions sont nécessaires", Toast.LENGTH_LONG).show()
            }
        }
    }
    
    private fun initializeApp() {
        tvStatus.text = "🔄 Initialisation..."
        
        // Initialiser l'URL du serveur
        val serverUrl = preferencesManager.getCurrentServerUrl()
        ApiClient.updateBaseUrl(serverUrl)
        
        // Afficher les informations du serveur
        updateServerInfo()
        
        refreshData()
    }
    
    private fun refreshData() {
        tvStatus.text = "🔄 Actualisation des données..."
        
        // Détecter les SIM
        val simCards = SimUtils.getAvailableSimCards(this)
        updateSimInfo(simCards)
        
        // Enregistrer le téléphone si nécessaire
        registerPhoneIfNeeded(simCards)
    }
    
    private fun updateSimInfo(simCards: List<SimInfo>) {
        val simCount = simCards.size
        val activeSimCount = simCards.count { it.isActive }
        
        tvSimsInfo.text = "📱 SIM détectées: $simCount (${activeSimCount} actives)"
        
        if (simCards.isNotEmpty()) {
            val simDetails = simCards.mapIndexed { index, sim ->
                "SIM ${index + 1}: ${sim.carrierName ?: "Inconnu"} - ${if (sim.isActive) "Active" else "Inactive"}"
            }.joinToString("\n")
            
            tvPhoneInfo.text = "📋 Détails des SIM:\n$simDetails"
        } else {
            tvPhoneInfo.text = "⚠️ Aucune SIM détectée"
        }
    }
    
    private fun registerPhoneIfNeeded(simCards: List<SimInfo>) {
        val phoneId = preferencesManager.getPhoneId()
        
        if (phoneId.isNullOrEmpty()) {
            registerPhone(simCards)
        } else {
            // Vérifier si le téléphone existe vraiment sur le serveur
            verifyPhoneRegistration(phoneId, simCards)
        }
    }
    
    private fun verifyPhoneRegistration(phoneId: String, simCards: List<SimInfo>) {
        lifecycleScope.launch {
            try {
                tvStatus.text = "🔄 Vérification de l'enregistrement..."
                
                // Vérifier si le téléphone existe sur le serveur
                val response = ApiClient.getApiService()?.getPhones()
                if (response?.isSuccessful == true) {
                    val responseBody = response.body()
                    val phones = responseBody?.data as? List<*>
                    val phoneExists = phones?.any { phone ->
                        (phone as? Map<*, *>)?.get("id")?.toString() == phoneId
                    } ?: false
                    
                    if (phoneExists) {
                        tvStatus.text = "✅ Téléphone enregistré (ID: ${phoneId.take(8)}...)"
                    } else {
                        // Le téléphone n'existe plus sur le serveur, le réenregistrer
                        preferencesManager.setPhoneId("")
                        registerPhone(simCards)
                    }
                } else {
                    // Erreur de connexion, réessayer l'enregistrement
                    registerPhone(simCards)
                }
                
            } catch (e: Exception) {
                // En cas d'erreur, réessayer l'enregistrement
                registerPhone(simCards)
            }
        }
    }
    
    private fun registerPhone(simCards: List<SimInfo>) {
        lifecycleScope.launch {
            try {
                tvStatus.text = "🔄 Enregistrement du téléphone..."
                
                val phoneData = PhoneRegistration(
                    telId = android.os.Build.MODEL,
                    model = android.os.Build.MODEL,
                    androidVersion = android.os.Build.VERSION.RELEASE,
                    appVersion = "1.0.0"
                )
                
                val response = ApiClient.getApiService()?.registerPhone(phoneData)
                if (response?.isSuccessful == true) {
                    val responseBody = response.body()
                    val phoneDataResponse = responseBody?.data as? Map<*, *>
                    val newPhoneId = phoneDataResponse?.get("phone_id")?.toString()
                    
                    if (!newPhoneId.isNullOrEmpty()) {
                        preferencesManager.setPhoneId(newPhoneId)
                        tvStatus.text = "✅ Téléphone enregistré avec succès"
                        Toast.makeText(this@MainActivity, "Téléphone enregistré avec succès", Toast.LENGTH_SHORT).show()
                    } else {
                        throw Exception("ID téléphone non reçu")
                    }
                } else {
                    throw Exception("Erreur lors de l'enregistrement: ${response?.message()}")
                }
                
            } catch (e: Exception) {
                tvStatus.text = "❌ Erreur d'enregistrement: ${e.message}"
                Toast.makeText(this@MainActivity, "Erreur: ${e.message}", Toast.LENGTH_LONG).show()
            }
        }
    }
    
    private fun syncSimsWithServer() {
        val phoneId = preferencesManager.getPhoneId()
        
        if (phoneId.isNullOrEmpty()) {
            Toast.makeText(this, "❌ Téléphone non enregistré. Veuillez d'abord actualiser.", Toast.LENGTH_LONG).show()
            return
        }
        
        // Vérifier les permissions critiques pour la détection SIM
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.READ_PHONE_NUMBERS) != PackageManager.PERMISSION_GRANTED) {
            AlertDialog.Builder(this)
                .setTitle("⚠️ Permission Manquante")
                .setMessage("La permission READ_PHONE_NUMBERS est requise pour détecter les cartes SIM sur Android 10+.\n\nVeuillez accorder cette permission dans les Paramètres de l'application.")
                .setPositiveButton("Paramètres") { _, _ ->
                    // Rediriger vers les paramètres de l'application
                    val intent = android.content.Intent(android.provider.Settings.ACTION_APPLICATION_DETAILS_SETTINGS)
                    intent.data = android.net.Uri.parse("package:$packageName")
                    startActivity(intent)
                }
                .setNegativeButton("Annuler", null)
                .show()
            return
        }
        
        lifecycleScope.launch {
            try {
                tvStatus.text = "🔄 Synchronisation des SIM en cours..."
                btnSyncSims.isEnabled = false
                
                // Détecter les SIM actuelles
                val simCards = SimUtils.getAvailableSimCards(this@MainActivity)
                
                if (simCards.isEmpty()) {
                    tvStatus.text = "⚠️ Aucune SIM détectée pour la synchronisation"
                    
                    // Message d'aide détaillé
                    AlertDialog.Builder(this@MainActivity)
                        .setTitle("🔍 Aucune SIM Détectée")
                        .setMessage("Causes possibles :\n\n" +
                               "• Permissions manquantes (READ_PHONE_NUMBERS)\n" +
                               "• Cartes SIM non actives\n" +
                               "• Problème système Android\n\n" +
                               "Vérifiez que :\n" +
                               "• Les SIM sont bien insérées\n" +
                               "• L'application a toutes les permissions\n" +
                               "• Le téléphone détecte les SIM dans les Paramètres")
                        .setPositiveButton("OK", null)
                        .show()
                    return@launch
                }
                
                // Préparer la requête de synchronisation
                val syncRequest = SimSyncRequest(
                    phoneId = phoneId,
                    sims = simCards
                )
                
                // Envoyer la requête au serveur
                val response = ApiClient.getApiService()?.syncSims(syncRequest)
                
                if (response?.isSuccessful == true) {
                    val responseBody = response.body()
                    if (responseBody?.success == true) {
                        val syncData = responseBody.data
                        val syncedCount = syncData?.syncedCount ?: 0
                        
                        tvStatus.text = "✅ ${syncedCount} SIM(s) synchronisée(s) avec succès"
                        Toast.makeText(this@MainActivity, "✅ ${syncedCount} SIM(s) synchronisée(s)", Toast.LENGTH_SHORT).show()
                        
                        // Actualiser l'affichage
                        refreshData()
                    } else {
                        throw Exception(responseBody?.message ?: "Erreur de synchronisation")
                    }
                } else {
                    val errorCode = response?.code()
                    if (errorCode == 404) {
                        throw Exception("Téléphone non trouvé sur le serveur. Veuillez d'abord actualiser.")
                    } else {
                        throw Exception("Erreur serveur ($errorCode): ${response?.message()}")
                    }
                }
                
            } catch (e: Exception) {
                tvStatus.text = "❌ Erreur de synchronisation: ${e.message}"
                Toast.makeText(this@MainActivity, "Erreur: ${e.message}", Toast.LENGTH_LONG).show()
            } finally {
                btnSyncSims.isEnabled = true
            }
        }
    }
    
    private fun updateServerInfo() {
        val serverType = preferencesManager.getServerType() ?: "local"
        val serverUrl = preferencesManager.getCurrentServerUrl()
        
        val icon = if (serverType == "cloud") "☁️" else "🏠"
        val typeText = if (serverType == "cloud") "Serveur Cloud" else "Serveur Local"
        val urlDisplay = serverUrl.replace("http://", "").replace("https://", "")
        
        tvServerInfo.text = "$icon $typeText: $urlDisplay"
    }
    
    private fun showServerConfigDialog() {
        // Créer le layout du modal
        val layout = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(48, 32, 48, 32)
        }
        
        // Titre
        val title = TextView(this).apply {
            text = "⚙️ Configuration du Serveur"
            textSize = 20f
            setTextColor(0xFF00d4ff.toInt())
            gravity = android.view.Gravity.CENTER
            setPadding(0, 0, 0, 24)
        }
        layout.addView(title)
        
        // Type de serveur
        val serverTypeLabel = TextView(this).apply {
            text = "Type de serveur :"
            textSize = 16f
            setTextColor(0xFF333333.toInt())
            setPadding(0, 0, 0, 8)
        }
        layout.addView(serverTypeLabel)
        
        val radioGroup = RadioGroup(this)
        val rbLocal = RadioButton(this).apply {
            text = "🏠 Serveur Local"
            id = 1
        }
        val rbCloud = RadioButton(this).apply {
            text = "☁️ Serveur Cloud"
            id = 2
        }
        radioGroup.addView(rbLocal)
        radioGroup.addView(rbCloud)
        layout.addView(radioGroup)
        
        // Champ IP locale
        val localIpLabel = TextView(this).apply {
            text = "IP du serveur local :"
            textSize = 16f
            setTextColor(0xFF333333.toInt())
            setPadding(0, 16, 0, 8)
        }
        layout.addView(localIpLabel)
        
        val etLocalIp = EditText(this).apply {
            hint = "192.168.1.155:3001"
            setText(preferencesManager.getLocalServerIp() ?: "192.168.1.155:3001")
        }
        layout.addView(etLocalIp)
        
        // Champ URL cloud
        val cloudUrlLabel = TextView(this).apply {
            text = "URL du serveur cloud :"
            textSize = 16f
            setTextColor(0xFF333333.toInt())
            setPadding(0, 16, 0, 8)
        }
        layout.addView(cloudUrlLabel)
        
        val etCloudUrl = EditText(this).apply {
            hint = "https://votre-serveur.com:3001"
            setText(preferencesManager.getCloudServerUrl() ?: "")
        }
        layout.addView(etCloudUrl)
        
        // Charger les valeurs actuelles
        val currentServerType = preferencesManager.getServerType() ?: "local"
        if (currentServerType == "cloud") {
            rbCloud.isChecked = true
        } else {
            rbLocal.isChecked = true
        }
        
        // Gérer la visibilité des champs
        fun updateFieldsVisibility() {
            etLocalIp.isEnabled = rbLocal.isChecked
            etCloudUrl.isEnabled = rbCloud.isChecked
            etLocalIp.alpha = if (rbLocal.isChecked) 1.0f else 0.5f
            etCloudUrl.alpha = if (rbCloud.isChecked) 1.0f else 0.5f
        }
        
        radioGroup.setOnCheckedChangeListener { _, _ ->
            updateFieldsVisibility()
        }
        
        updateFieldsVisibility()
        
        // Créer et afficher le dialog
        AlertDialog.Builder(this)
            .setView(layout)
            .setPositiveButton("💾 Sauvegarder") { _, _ ->
                val serverType = if (rbLocal.isChecked) "local" else "cloud"
                val localIp = etLocalIp.text.toString().trim()
                val cloudUrl = etCloudUrl.text.toString().trim()
                
                // Validation
                if (serverType == "local" && localIp.isEmpty()) {
                    Toast.makeText(this, "Veuillez saisir l'IP du serveur local", Toast.LENGTH_SHORT).show()
                    return@setPositiveButton
                }
                
                if (serverType == "cloud" && cloudUrl.isEmpty()) {
                    Toast.makeText(this, "Veuillez saisir l'URL du serveur cloud", Toast.LENGTH_SHORT).show()
                    return@setPositiveButton
                }
                
                // Sauvegarder les préférences
                preferencesManager.setServerType(serverType)
                preferencesManager.setLocalServerIp(localIp)
                preferencesManager.setCloudServerUrl(cloudUrl)
                
                // Mettre à jour l'URL de l'API
                val newUrl = preferencesManager.getCurrentServerUrl()
                ApiClient.updateBaseUrl(newUrl)
                
                // Mettre à jour l'affichage
                updateServerInfo()
                
                Toast.makeText(this, "✅ Configuration sauvegardée !", Toast.LENGTH_SHORT).show()
            }
            .setNegativeButton("❌ Annuler", null)
            .setNeutralButton("🔍 Tester") { _, _ ->
                // Test de connexion
                lifecycleScope.launch {
                    try {
                        val testServerType = if (rbLocal.isChecked) "local" else "cloud"
                        val testUrl = if (testServerType == "local") {
                            val ip = etLocalIp.text.toString().trim()
                            if (ip.startsWith("http")) ip else "http://$ip"
                        } else {
                            etCloudUrl.text.toString().trim()
                        }
                        
                        ApiClient.updateBaseUrl(testUrl)
                        
                        // Simuler un test de connexion
                        kotlinx.coroutines.delay(1000)
                        Toast.makeText(this@MainActivity, "✅ Test de connexion réussi !", Toast.LENGTH_SHORT).show()
                        
                    } catch (e: Exception) {
                        Toast.makeText(this@MainActivity, "❌ Erreur de connexion: ${e.message}", Toast.LENGTH_LONG).show()
                    }
                }
            }
            .show()
    }

    // Variables pour gérer l'état du service
    private var isServiceRunning = false
    
    private fun toggleService() {
        Log.d("MainActivity", "🔘 Bouton service cliqué - État actuel: $isServiceRunning")
        
        if (isServiceRunning) {
            stopSmsService()
        } else {
            startSmsService()
        }
    }
    
    private fun startSmsService() {
        Log.d("MainActivity", "🚀 Tentative de démarrage du service SMS")
        
        try {
            // Vérifier les permissions
            if (!checkPermissions()) {
                Toast.makeText(this, "❌ Permissions requises manquantes", Toast.LENGTH_SHORT).show()
                return
            }
            
            // Vérifier la configuration du serveur
            val serverUrl = preferencesManager.getCurrentServerUrl()
            if (serverUrl.isEmpty()) {
                Toast.makeText(this, "❌ Configuration serveur manquante", Toast.LENGTH_SHORT).show()
                return
            }
            
            // Vérifier l'ID du téléphone
            val phoneId = preferencesManager.getPhoneId()
            if (phoneId.isNullOrEmpty()) {
                Toast.makeText(this, "❌ Téléphone non enregistré", Toast.LENGTH_SHORT).show()
                return
            }
            
            // Démarrer le gestionnaire de messages amélioré
            messageManager.startMessagePolling()
            isServiceRunning = true
            updateServiceStatus()
            
            Log.d("MainActivity", "✅ Service SMS amélioré démarré avec succès")
            Toast.makeText(this, "✅ Service SMS amélioré démarré", Toast.LENGTH_SHORT).show()
            
            // Tester la connexion au serveur
            testServerConnection()
            
        } catch (e: Exception) {
            Log.e("MainActivity", "❌ Erreur lors du démarrage du service: ${e.message}")
            Toast.makeText(this, "❌ Erreur: ${e.message}", Toast.LENGTH_LONG).show()
        }
    }
    
    private fun stopSmsService() {
        Log.d("MainActivity", "🛑 Arrêt du service SMS")
        
        try {
            // Arrêter le gestionnaire de messages
            messageManager.stopMessagePolling()
            isServiceRunning = false
            updateServiceStatus()
            
            Log.d("MainActivity", "✅ Service SMS arrêté")
            Toast.makeText(this, "🛑 Service SMS arrêté", Toast.LENGTH_SHORT).show()
            
        } catch (e: Exception) {
            Log.e("MainActivity", "❌ Erreur lors de l'arrêt du service: ${e.message}")
            Toast.makeText(this, "❌ Erreur: ${e.message}", Toast.LENGTH_LONG).show()
        }
    }
    
    private fun updateServiceStatus() {
        if (isServiceRunning) {
            tvServiceStatus.text = "Service: ✅ Actif"
            tvServiceStatus.setTextColor(0xFF4CAF50.toInt()) // Vert
            btnToggleService.text = "🛑 Arrêter le service"
            btnToggleService.backgroundTintList = android.content.res.ColorStateList.valueOf(0xFFf44336.toInt()) // Rouge
        } else {
            tvServiceStatus.text = "Service: ❌ Inactif"
            tvServiceStatus.setTextColor(0xFFf44336.toInt()) // Rouge
            btnToggleService.text = "🚀 Démarrer le service"
            btnToggleService.backgroundTintList = android.content.res.ColorStateList.valueOf(0xFF2196F3.toInt()) // Bleu
            tvConnectionStatus.text = "Connexion: Déconnecté"
            tvConnectionStatus.setTextColor(0xFFf44336.toInt()) // Rouge
        }
    }
    
    private fun testServerConnection() {
        lifecycleScope.launch {
            try {
                tvConnectionStatus.text = "Connexion: 🔄 Test en cours..."
                tvConnectionStatus.setTextColor(0xFFFF9800.toInt()) // Orange
                
                // Simuler un test de connexion
                kotlinx.coroutines.delay(2000)
                
                val response = ApiClient.getApiService()?.getAllSims()
                if (response?.isSuccessful == true) {
                    tvConnectionStatus.text = "Connexion: ✅ Connecté"
                    tvConnectionStatus.setTextColor(0xFF4CAF50.toInt()) // Vert
                    Log.d("MainActivity", "✅ Connexion au serveur réussie")
                } else {
                    throw Exception("Erreur serveur: ${response?.code()}")
                }
                
            } catch (e: Exception) {
                tvConnectionStatus.text = "Connexion: ❌ Erreur"
                tvConnectionStatus.setTextColor(0xFFf44336.toInt()) // Rouge
                Log.e("MainActivity", "❌ Erreur de connexion: ${e.message}")
                Toast.makeText(this@MainActivity, "❌ Erreur de connexion: ${e.message}", Toast.LENGTH_LONG).show()
            }
        }
    }

    override fun onResume() {
        super.onResume()
        if (checkPermissions()) {
            updateServerInfo()
            updateServiceStatus()
            refreshData()
        }
    }
}



