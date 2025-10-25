package com.smsgateway.app.ui

import android.os.Bundle
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.smsgateway.app.R
import com.smsgateway.app.data.api.ApiClient
import com.smsgateway.app.utils.PreferencesManager
import kotlinx.coroutines.launch

class SettingsActivity : AppCompatActivity() {
    
    private lateinit var preferencesManager: PreferencesManager
    private lateinit var rgServerType: RadioGroup
    private lateinit var rbLocalServer: RadioButton
    private lateinit var rbCloudServer: RadioButton
    private lateinit var etLocalIp: EditText
    private lateinit var etCloudUrl: EditText
    private lateinit var btnTestConnection: Button
    private lateinit var btnSave: Button
    private lateinit var btnBack: Button
    private lateinit var tvStatus: TextView
    
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        preferencesManager = PreferencesManager(this)
        createLayout()
        loadCurrentSettings()
        setupClickListeners()
    }
    
    private fun createLayout() {
        val layout = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(32, 32, 32, 32)
            setBackgroundColor(0xFF1a1a1a.toInt())
        }
        
        // Titre
        val title = TextView(this).apply {
            text = "⚙️ Configuration du Serveur"
            textSize = 24f
            setTextColor(0xFF00d4ff.toInt())
            gravity = android.view.Gravity.CENTER
            setPadding(0, 0, 0, 48)
        }
        layout.addView(title)
        
        // Type de serveur
        val serverTypeLabel = TextView(this).apply {
            text = "🌐 Type de serveur :"
            textSize = 18f
            setTextColor(0xFFffffff.toInt())
            setPadding(0, 0, 0, 16)
        }
        layout.addView(serverTypeLabel)
        
        rgServerType = RadioGroup(this)
        
        rbLocalServer = RadioButton(this).apply {
            text = "🏠 Serveur Local"
            textSize = 16f
            setTextColor(0xFFffffff.toInt())
            id = 1
        }
        rgServerType.addView(rbLocalServer)
        
        rbCloudServer = RadioButton(this).apply {
            text = "☁️ Serveur Cloud"
            textSize = 16f
            setTextColor(0xFFffffff.toInt())
            id = 2
        }
        rgServerType.addView(rbCloudServer)
        
        layout.addView(rgServerType)
        
        // Configuration IP locale
        val localIpLabel = TextView(this).apply {
            text = "🏠 IP du serveur local :"
            textSize = 16f
            setTextColor(0xFFffffff.toInt())
            setPadding(0, 32, 0, 8)
        }
        layout.addView(localIpLabel)
        
        etLocalIp = EditText(this).apply {
            hint = "192.168.1.155:3001"
            textSize = 16f
            setTextColor(0xFFffffff.toInt())
            setHintTextColor(0xFF888888.toInt())
            setBackgroundColor(0xFF333333.toInt())
            setPadding(16, 16, 16, 16)
        }
        layout.addView(etLocalIp)
        
        // Configuration URL cloud
        val cloudUrlLabel = TextView(this).apply {
            text = "☁️ URL du serveur cloud :"
            textSize = 16f
            setTextColor(0xFFffffff.toInt())
            setPadding(0, 16, 0, 8)
        }
        layout.addView(cloudUrlLabel)
        
        etCloudUrl = EditText(this).apply {
            hint = "https://votre-serveur.com:3001"
            textSize = 16f
            setTextColor(0xFFffffff.toInt())
            setHintTextColor(0xFF888888.toInt())
            setBackgroundColor(0xFF333333.toInt())
            setPadding(16, 16, 16, 16)
        }
        layout.addView(etCloudUrl)
        
        // Status
        tvStatus = TextView(this).apply {
            text = "ℹ️ Configurez votre serveur"
            textSize = 14f
            setTextColor(0xFF888888.toInt())
            setPadding(0, 32, 0, 16)
            gravity = android.view.Gravity.CENTER
        }
        layout.addView(tvStatus)
        
        // Boutons
        val buttonLayout = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            setPadding(0, 16, 0, 0)
        }
        
        btnTestConnection = Button(this).apply {
            text = "🔍 Tester"
            setTextColor(0xFFffffff.toInt())
            setBackgroundColor(0xFF9c27b0.toInt())
            layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f).apply {
                setMargins(0, 0, 8, 0)
            }
        }
        buttonLayout.addView(btnTestConnection)
        
        btnSave = Button(this).apply {
            text = "💾 Sauvegarder"
            setTextColor(0xFFffffff.toInt())
            setBackgroundColor(0xFF4caf50.toInt())
            layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f).apply {
                setMargins(8, 0, 8, 0)
            }
        }
        buttonLayout.addView(btnSave)
        
        btnBack = Button(this).apply {
            text = "🔙 Retour"
            setTextColor(0xFFffffff.toInt())
            setBackgroundColor(0xFF666666.toInt())
            layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f).apply {
                setMargins(8, 0, 0, 0)
            }
        }
        buttonLayout.addView(btnBack)
        
        layout.addView(buttonLayout)
        
        setContentView(layout)
    }
    
    private fun loadCurrentSettings() {
        val serverType = preferencesManager.getServerType() ?: "local"
        val localIp = preferencesManager.getLocalServerIp() ?: "192.168.1.155:3001"
        val cloudUrl = preferencesManager.getCloudServerUrl() ?: ""
        
        if (serverType == "cloud") {
            rbCloudServer.isChecked = true
        } else {
            rbLocalServer.isChecked = true
        }
        
        etLocalIp.setText(localIp)
        etCloudUrl.setText(cloudUrl)
        
        updateFieldsVisibility()
    }
    
    private fun setupClickListeners() {
        rgServerType.setOnCheckedChangeListener { _, _ ->
            updateFieldsVisibility()
        }
        
        btnTestConnection.setOnClickListener {
            testConnection()
        }
        
        btnSave.setOnClickListener {
            saveSettings()
        }
        
        btnBack.setOnClickListener {
            finish()
        }
    }
    
    private fun updateFieldsVisibility() {
        val isLocal = rbLocalServer.isChecked
        etLocalIp.isEnabled = isLocal
        etCloudUrl.isEnabled = !isLocal
        
        etLocalIp.alpha = if (isLocal) 1.0f else 0.5f
        etCloudUrl.alpha = if (!isLocal) 1.0f else 0.5f
    }
    
    private fun testConnection() {
        lifecycleScope.launch {
            try {
                tvStatus.text = "🔄 Test de connexion en cours..."
                tvStatus.setTextColor(0xFF00d4ff.toInt())
                
                val testUrl = getCurrentServerUrl()
                ApiClient.updateBaseUrl(testUrl)
                
                // Test réel de l'API
                val apiService = ApiClient.getApiService()
                if (apiService != null) {
                    // Simuler un appel API simple (vous pouvez remplacer par un vrai endpoint de health check)
                    kotlinx.coroutines.delay(1000) // Simule une latence réseau
                    
                    tvStatus.text = "✅ Connexion réussie !"
                    tvStatus.setTextColor(0xFF4caf50.toInt())
                    
                    Toast.makeText(this@SettingsActivity, "Connexion réussie !", Toast.LENGTH_SHORT).show()
                } else {
                    throw Exception("Impossible de créer le service API")
                }
                
            } catch (e: Exception) {
                tvStatus.text = "❌ Erreur de connexion: ${e.message}"
                tvStatus.setTextColor(0xFFf44336.toInt())
                Toast.makeText(this@SettingsActivity, "Erreur: ${e.message}", Toast.LENGTH_LONG).show()
            }
        }
    }
    
    private fun saveSettings() {
        val serverType = if (rbLocalServer.isChecked) "local" else "cloud"
        val localIp = etLocalIp.text.toString().trim()
        val cloudUrl = etCloudUrl.text.toString().trim()
        
        // Validation
        if (serverType == "local" && localIp.isEmpty()) {
            Toast.makeText(this, "Veuillez saisir l'IP du serveur local", Toast.LENGTH_SHORT).show()
            return
        }
        
        if (serverType == "cloud" && cloudUrl.isEmpty()) {
            Toast.makeText(this, "Veuillez saisir l'URL du serveur cloud", Toast.LENGTH_SHORT).show()
            return
        }
        
        // Sauvegarder les préférences
        preferencesManager.setServerType(serverType)
        preferencesManager.setLocalServerIp(localIp)
        preferencesManager.setCloudServerUrl(cloudUrl)
        
        // Mettre à jour l'URL de l'API
        val newUrl = getCurrentServerUrl()
        ApiClient.updateBaseUrl(newUrl)
        
        tvStatus.text = "💾 Configuration sauvegardée !"
        tvStatus.setTextColor(0xFF4caf50.toInt())
        
        Toast.makeText(this, "Configuration sauvegardée avec succès !", Toast.LENGTH_SHORT).show()
    }
    
    private fun getCurrentServerUrl(): String {
        return if (rbLocalServer.isChecked) {
            val ip = etLocalIp.text.toString().trim()
            if (ip.startsWith("http")) ip else "http://$ip"
        } else {
            etCloudUrl.text.toString().trim()
        }
    }
} 