.class public final Lcom/smsgateway/app/utils/PreferencesManager;
.super Ljava/lang/Object;
.source "PreferencesManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smsgateway/app/utils/PreferencesManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0016\u0018\u0000 )2\u00020\u0001:\u0001)B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\u0008J\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0006\u0010\u000c\u001a\u00020\nJ\u0006\u0010\r\u001a\u00020\u000eJ\u0008\u0010\u000f\u001a\u0004\u0018\u00010\nJ\u0008\u0010\u0010\u001a\u0004\u0018\u00010\nJ\u0008\u0010\u0011\u001a\u0004\u0018\u00010\nJ\u0006\u0010\u0012\u001a\u00020\nJ\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0014J\u000e\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\nJ\u000e\u0010\u0019\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0014J\u000e\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\nJ\u000e\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u000eJ\u000e\u0010\u001f\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\nJ\u000e\u0010!\u001a\u00020\u00082\u0006\u0010\u001a\u001a\u00020\u0014J\u000e\u0010\"\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\nJ\u000e\u0010$\u001a\u00020\u00082\u0006\u0010%\u001a\u00020\nJ\u000e\u0010&\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\nJ\u000e\u0010\'\u001a\u00020\u00082\u0006\u0010(\u001a\u00020\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/smsgateway/app/utils/PreferencesManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "clearAll",
        "",
        "getApiKey",
        "",
        "getCloudServerUrl",
        "getCurrentServerUrl",
        "getLastHeartbeat",
        "",
        "getLocalServerIp",
        "getPhoneId",
        "getServerType",
        "getServerUrl",
        "isAutoStartEnabled",
        "",
        "isNotificationEnabled",
        "isSetupComplete",
        "setApiKey",
        "apiKey",
        "setAutoStartEnabled",
        "enabled",
        "setCloudServerUrl",
        "url",
        "setLastHeartbeat",
        "timestamp",
        "setLocalServerIp",
        "ip",
        "setNotificationEnabled",
        "setPhoneId",
        "phoneId",
        "setServerType",
        "serverType",
        "setServerUrl",
        "setSetupComplete",
        "complete",
        "Companion",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/smsgateway/app/utils/PreferencesManager$Companion;

.field private static final KEY_API_KEY:Ljava/lang/String; = "api_key"

.field private static final KEY_AUTO_START:Ljava/lang/String; = "auto_start"

.field private static final KEY_CLOUD_SERVER_URL:Ljava/lang/String; = "cloud_server_url"

.field private static final KEY_IS_SETUP_COMPLETE:Ljava/lang/String; = "is_setup_complete"

.field private static final KEY_LAST_HEARTBEAT:Ljava/lang/String; = "last_heartbeat"

.field private static final KEY_LOCAL_SERVER_IP:Ljava/lang/String; = "local_server_ip"

.field private static final KEY_NOTIFICATION_ENABLED:Ljava/lang/String; = "notification_enabled"

.field private static final KEY_PHONE_ID:Ljava/lang/String; = "phone_id"

.field private static final KEY_SERVER_TYPE:Ljava/lang/String; = "server_type"

.field private static final KEY_SERVER_URL:Ljava/lang/String; = "server_url"

.field private static final PREFS_NAME:Ljava/lang/String; = "sms_gateway_prefs"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smsgateway/app/utils/PreferencesManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smsgateway/app/utils/PreferencesManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smsgateway/app/utils/PreferencesManager;->Companion:Lcom/smsgateway/app/utils/PreferencesManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "sms_gateway_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 6
    return-void
.end method


# virtual methods
.method public final clearAll()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    return-void
.end method

.method public final getApiKey()Ljava/lang/String;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "api_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCloudServerUrl()Ljava/lang/String;
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "cloud_server_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentServerUrl()Ljava/lang/String;
    .locals 6

    .line 116
    invoke-virtual {p0}, Lcom/smsgateway/app/utils/PreferencesManager;->getServerType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "local"

    .line 117
    .local v0, "serverType":Ljava/lang/String;
    :cond_0
    const-string v1, "cloud"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/smsgateway/app/utils/PreferencesManager;->getCloudServerUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "http://localhost:3001"

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/smsgateway/app/utils/PreferencesManager;->getLocalServerIp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "192.168.1.155:3001"

    .line 121
    .local v1, "ip":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "http"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 117
    .end local v1    # "ip":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v1
.end method

.method public final getLastHeartbeat()J
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "last_heartbeat"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLocalServerIp()Ljava/lang/String;
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "local_server_ip"

    const-string v2, "192.168.1.155:3001"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPhoneId()Ljava/lang/String;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "phone_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getServerType()Ljava/lang/String;
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "server_type"

    const-string v2, "local"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getServerUrl()Ljava/lang/String;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "server_url"

    const-string v2, "http://localhost:3001"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public final isAutoStartEnabled()Z
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "auto_start"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isNotificationEnabled()Z
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "notification_enabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final isSetupComplete()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "is_setup_complete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final setApiKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "apiKey"    # Ljava/lang/String;

    const-string v0, "apiKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "api_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    return-void
.end method

.method public final setAutoStartEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 75
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_start"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    return-void
.end method

.method public final setCloudServerUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_server_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    return-void
.end method

.method public final setLastHeartbeat(J)V
    .locals 2
    .param p1, "timestamp"    # J

    .line 66
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_heartbeat"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    return-void
.end method

.method public final setLocalServerIp(Ljava/lang/String;)V
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;

    const-string v0, "ip"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "local_server_ip"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    return-void
.end method

.method public final setNotificationEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 84
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notification_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    return-void
.end method

.method public final setPhoneId(Ljava/lang/String;)V
    .locals 2
    .param p1, "phoneId"    # Ljava/lang/String;

    const-string v0, "phoneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "phone_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 31
    return-void
.end method

.method public final setServerType(Ljava/lang/String;)V
    .locals 2
    .param p1, "serverType"    # Ljava/lang/String;

    const-string v0, "serverType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "server_type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 94
    return-void
.end method

.method public final setServerUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "server_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 40
    return-void
.end method

.method public final setSetupComplete(Z)V
    .locals 2
    .param p1, "complete"    # Z

    .line 57
    iget-object v0, p0, Lcom/smsgateway/app/utils/PreferencesManager;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_setup_complete"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 58
    return-void
.end method
