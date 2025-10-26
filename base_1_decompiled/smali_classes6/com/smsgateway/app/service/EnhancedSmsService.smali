.class public final Lcom/smsgateway/app/service/EnhancedSmsService;
.super Ljava/lang/Object;
.source "EnhancedSmsService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smsgateway/app/service/EnhancedSmsService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnhancedSmsService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnhancedSmsService.kt\ncom/smsgateway/app/service/EnhancedSmsService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,406:1\n1#2:407\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010*\u0002\u0006\u000e\u0018\u0000 *2\u00020\u0001:\u0001*B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\nH\u0002J\u0006\u0010\u0014\u001a\u00020\u0011J\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0010\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0006\u0010\u001d\u001a\u00020\u000cJ\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0017\u0010\u001f\u001a\u0004\u0018\u00010\u000c2\u0006\u0010 \u001a\u00020\u000cH\u0002\u00a2\u0006\u0002\u0010!J\u0018\u0010\"\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010#\u001a\u00020\u000cH\u0002J\u0006\u0010$\u001a\u00020\u0011J\u0018\u0010%\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010&\u001a\u00020\nH\u0002J\u0018\u0010\'\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010(\u001a\u00020\nH\u0002J\u000e\u0010)\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R&\u0010\u0008\u001a\u001a\u0012\u0004\u0012\u00020\n\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u000b0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000f\u00a8\u0006+"
    }
    d2 = {
        "Lcom/smsgateway/app/service/EnhancedSmsService;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "deliveredReceiver",
        "com/smsgateway/app/service/EnhancedSmsService$deliveredReceiver$1",
        "Lcom/smsgateway/app/service/EnhancedSmsService$deliveredReceiver$1;",
        "multipartTracker",
        "",
        "",
        "Lkotlin/Pair;",
        "",
        "sentReceiver",
        "com/smsgateway/app/service/EnhancedSmsService$sentReceiver$1",
        "Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;",
        "cleanup",
        "",
        "cleanupMultipartTracker",
        "messageId",
        "cleanupStaleMessages",
        "deduceSlotFromSimId",
        "simId",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
        "fallbackToAvailableSlot",
        "Landroid/telephony/SmsManager;",
        "message",
        "Lcom/smsgateway/app/data/model/Message;",
        "fallbackToSlotOrDefault",
        "getPendingMessagesCount",
        "getSmsManagerForMessage",
        "getSubscriptionIdForSlot",
        "slotIndex",
        "(I)Ljava/lang/Integer;",
        "handleMultipartSuccess",
        "partIndex",
        "initialize",
        "reportFailure",
        "reason",
        "reportSuccess",
        "status",
        "sendSms",
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
.field public static final Companion:Lcom/smsgateway/app/service/EnhancedSmsService$Companion;

.field private static final FAILURE_DETECTION_DELAY:J = 0xafc8L

.field private static final SMS_DELIVERED:Ljava/lang/String; = "SMS_DELIVERED"

.field private static final SMS_SENT:Ljava/lang/String; = "SMS_SENT"

.field private static final TAG:Ljava/lang/String; = "EnhancedSmsService"


# instance fields
.field private final context:Landroid/content/Context;

.field private final deliveredReceiver:Lcom/smsgateway/app/service/EnhancedSmsService$deliveredReceiver$1;

.field private final multipartTracker:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sentReceiver:Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smsgateway/app/service/EnhancedSmsService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smsgateway/app/service/EnhancedSmsService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smsgateway/app/service/EnhancedSmsService;->Companion:Lcom/smsgateway/app/service/EnhancedSmsService$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->context:Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->multipartTracker:Ljava/util/Map;

    .line 31
    new-instance v0, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;

    invoke-direct {v0, p0}, Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;-><init>(Lcom/smsgateway/app/service/EnhancedSmsService;)V

    iput-object v0, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->sentReceiver:Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;

    .line 81
    new-instance v0, Lcom/smsgateway/app/service/EnhancedSmsService$deliveredReceiver$1;

    invoke-direct {v0, p0}, Lcom/smsgateway/app/service/EnhancedSmsService$deliveredReceiver$1;-><init>(Lcom/smsgateway/app/service/EnhancedSmsService;)V

    iput-object v0, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->deliveredReceiver:Lcom/smsgateway/app/service/EnhancedSmsService$deliveredReceiver$1;

    .line 20
    return-void
.end method

.method public static final synthetic access$cleanupMultipartTracker(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/smsgateway/app/service/EnhancedSmsService;
    .param p1, "messageId"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1}, Lcom/smsgateway/app/service/EnhancedSmsService;->cleanupMultipartTracker(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$handleMultipartSuccess(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "$this"    # Lcom/smsgateway/app/service/EnhancedSmsService;
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "partIndex"    # I

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/smsgateway/app/service/EnhancedSmsService;->handleMultipartSuccess(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic access$reportFailure(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/smsgateway/app/service/EnhancedSmsService;
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/smsgateway/app/service/EnhancedSmsService;->reportFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$reportSuccess(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/smsgateway/app/service/EnhancedSmsService;
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/smsgateway/app/service/EnhancedSmsService;->reportSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final cleanupMultipartTracker(Ljava/lang/String;)V
    .locals 2
    .param p1, "messageId"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->multipartTracker:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ud83e\uddf9 Tracker nettoy\u00e9 pour SMS multipart \u00e9chou\u00e9: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnhancedSmsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    return-void
.end method

.method private final deduceSlotFromSimId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "simId"    # Ljava/lang/String;

    .line 399
    nop

    .line 400
    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    .line 401
    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "1"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "first"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 402
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "2"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "second"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v3, v4, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 403
    :cond_2
    goto :goto_2

    .line 402
    :cond_3
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 401
    :cond_4
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 399
    :goto_2
    return-object v0
.end method

.method private final fallbackToAvailableSlot(Lcom/smsgateway/app/data/model/Message;)Landroid/telephony/SmsManager;
    .locals 6
    .param p1, "message"    # Lcom/smsgateway/app/data/model/Message;

    .line 378
    const-string v0, "EnhancedSmsService"

    .line 379
    nop

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->context:Landroid/content/Context;

    const-string v2, "telephony_subscription_service"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/telephony/SubscriptionManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroid/telephony/SubscriptionManager;

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 381
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    :cond_1
    move-object v2, v3

    .line 383
    .local v2, "activeSubscriptions":Ljava/util/List;
    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_4

    .line 384
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 385
    .local v3, "firstActive":Landroid/telephony/SubscriptionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ud83c\udfaf Utilisation premi\u00e8re SIM active: subscription ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v4

    const-string v5, "getSmsManagerForSubscriptionId(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 388
    .end local v1    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v2    # "activeSubscriptions":Ljava/util/List;
    .end local v3    # "firstActive":Landroid/telephony/SubscriptionInfo;
    :catch_0
    move-exception v1

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Erreur lors du fallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v1, "\ud83d\udcf1 Fallback final vers SIM par d\u00e9faut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const-string v1, "getDefault(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final fallbackToSlotOrDefault(Lcom/smsgateway/app/data/model/Message;)Landroid/telephony/SmsManager;
    .locals 2
    .param p1, "message"    # Lcom/smsgateway/app/data/model/Message;

    .line 369
    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSlotIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSlotIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 370
    invoke-direct {p0, p1}, Lcom/smsgateway/app/service/EnhancedSmsService;->fallbackToAvailableSlot(Lcom/smsgateway/app/data/model/Message;)Landroid/telephony/SmsManager;

    move-result-object v0

    goto :goto_0

    .line 372
    :cond_0
    const-string v0, "EnhancedSmsService"

    const-string v1, "\ud83d\udcf1 Fallback vers SIM par d\u00e9faut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 371
    nop

    .line 372
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 369
    :goto_0
    return-object v0
.end method

.method private final getSmsManagerForMessage(Lcom/smsgateway/app/data/model/Message;)Landroid/telephony/SmsManager;
    .locals 8
    .param p1, "message"    # Lcom/smsgateway/app/data/model/Message;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ud83d\udd0d S\u00e9lection SIM - simId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSimId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", slotIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSlotIndex()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subscriptionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSubscriptionId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnhancedSmsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    nop

    .line 295
    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSubscriptionId()Ljava/lang/Integer;

    move-result-object v0

    const-string v2, ": "

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSubscriptionId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 296
    nop

    .line 297
    :try_start_0
    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSubscriptionId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 298
    .local v0, "smsManager":Landroid/telephony/SmsManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ud83c\udfaf Utilisation SIM subscription ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSubscriptionId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    nop

    .end local v0    # "smsManager":Landroid/telephony/SmsManager;
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u26a0\ufe0f Erreur avec subscription ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSubscriptionId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0, p1}, Lcom/smsgateway/app/service/EnhancedSmsService;->fallbackToSlotOrDefault(Lcom/smsgateway/app/data/model/Message;)Landroid/telephony/SmsManager;

    move-result-object v1

    move-object v0, v1

    .line 295
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 301
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 307
    :cond_0
    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSlotIndex()Ljava/lang/Integer;

    move-result-object v0

    const-string v3, " -> subscription ID: "

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSlotIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 308
    nop

    .line 309
    :try_start_1
    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSlotIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/smsgateway/app/service/EnhancedSmsService;->getSubscriptionIdForSlot(I)Ljava/lang/Integer;

    move-result-object v0

    .line 310
    .local v0, "subscriptionId":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    .line 311
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v4

    .line 312
    .local v4, "smsManager":Landroid/telephony/SmsManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83c\udfaf Utilisation SIM slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSlotIndex()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    nop

    .end local v4    # "smsManager":Landroid/telephony/SmsManager;
    goto :goto_1

    .line 315
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u26a0\ufe0f Aucune subscription active pour slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSlotIndex()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0, p1}, Lcom/smsgateway/app/service/EnhancedSmsService;->fallbackToAvailableSlot(Lcom/smsgateway/app/data/model/Message;)Landroid/telephony/SmsManager;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "subscriptionId":Ljava/lang/Integer;
    :goto_1
    move-object v0, v4

    goto :goto_2

    .line 318
    :catch_1
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u26a0\ufe0f Erreur avec slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSlotIndex()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0, p1}, Lcom/smsgateway/app/service/EnhancedSmsService;->fallbackToAvailableSlot(Lcom/smsgateway/app/data/model/Message;)Landroid/telephony/SmsManager;

    move-result-object v1

    move-object v0, v1

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 319
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 325
    :cond_2
    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSimId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ud83d\udd04 Tentative de d\u00e9duction du slot \u00e0 partir du simId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSimId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {p1}, Lcom/smsgateway/app/data/model/Message;->getSimId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smsgateway/app/service/EnhancedSmsService;->deduceSlotFromSimId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 328
    .local v0, "deducedSlot":Ljava/lang/Integer;
    if-eqz v0, :cond_4

    .line 329
    nop

    .line 330
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/smsgateway/app/service/EnhancedSmsService;->getSubscriptionIdForSlot(I)Ljava/lang/Integer;

    move-result-object v4

    .line 331
    .local v4, "subscriptionId":Ljava/lang/Integer;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_3

    .line 332
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v5

    .line 333
    .local v5, "smsManager":Landroid/telephony/SmsManager;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\ud83c\udfaf SIM d\u00e9duite: slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    nop

    .end local v5    # "smsManager":Landroid/telephony/SmsManager;
    goto :goto_3

    .line 336
    :cond_3
    invoke-direct {p0, p1}, Lcom/smsgateway/app/service/EnhancedSmsService;->fallbackToAvailableSlot(Lcom/smsgateway/app/data/model/Message;)Landroid/telephony/SmsManager;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v4    # "subscriptionId":Ljava/lang/Integer;
    :goto_3
    goto :goto_4

    .line 338
    :catch_2
    move-exception v3

    .line 339
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u26a0\ufe0f Erreur avec slot d\u00e9duit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0, p1}, Lcom/smsgateway/app/service/EnhancedSmsService;->fallbackToAvailableSlot(Lcom/smsgateway/app/data/model/Message;)Landroid/telephony/SmsManager;

    move-result-object v5

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_4
    move-object v0, v5

    goto :goto_5

    .line 343
    :cond_4
    invoke-direct {p0, p1}, Lcom/smsgateway/app/service/EnhancedSmsService;->fallbackToAvailableSlot(Lcom/smsgateway/app/data/model/Message;)Landroid/telephony/SmsManager;

    move-result-object v1

    move-object v0, v1

    .line 325
    .end local v0    # "deducedSlot":Ljava/lang/Integer;
    :goto_5
    nop

    .line 339
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_6

    .line 349
    :cond_5
    const-string v0, "\ud83d\udcf1 Aucune info SIM sp\u00e9cifique, recherche SIM active"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0, p1}, Lcom/smsgateway/app/service/EnhancedSmsService;->fallbackToAvailableSlot(Lcom/smsgateway/app/data/model/Message;)Landroid/telephony/SmsManager;

    move-result-object v0

    .line 293
    :goto_6
    return-object v0
.end method

.method private final getSubscriptionIdForSlot(I)Ljava/lang/Integer;
    .locals 8
    .param p1, "slotIndex"    # I

    .line 356
    nop

    .line 357
    nop

    .line 358
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->context:Landroid/content/Context;

    const-string v2, "telephony_subscription_service"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/telephony/SubscriptionManager;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/telephony/SubscriptionManager;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 359
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 360
    .local v2, "activeSubscriptions":Ljava/util/List;
    :goto_1
    if-eqz v2, :cond_5

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 407
    .local v5, "it":Landroid/telephony/SubscriptionInfo;
    const/4 v6, 0x0

    .line 360
    .local v6, "$i$a$-find-EnhancedSmsService$getSubscriptionIdForSlot$1":I
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    if-ne v7, p1, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .end local v5    # "it":Landroid/telephony/SubscriptionInfo;
    .end local v6    # "$i$a$-find-EnhancedSmsService$getSubscriptionIdForSlot$1":I
    :goto_2
    if-eqz v7, :cond_2

    goto :goto_3

    :cond_4
    move-object v4, v0

    :goto_3
    check-cast v4, Landroid/telephony/SubscriptionInfo;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v0

    .line 361
    .end local v1    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .end local v2    # "activeSubscriptions":Ljava/util/List;
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Erreur r\u00e9cup\u00e9ration subscription ID pour slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnhancedSmsService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private final handleMultipartSuccess(Ljava/lang/String;I)V
    .locals 11
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "partIndex"    # I

    .line 206
    iget-object v0, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->multipartTracker:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 207
    .local v0, "tracker":Lkotlin/Pair;
    const-string v1, "EnhancedSmsService"

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .local v2, "sentParts":I
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 209
    .local v3, "totalParts":I
    add-int/lit8 v4, v2, 0x1

    .line 210
    .local v4, "newSentParts":I
    iget-object v5, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->multipartTracker:Ljava/util/Map;

    new-instance v6, Lkotlin/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83d\udcca SMS multipart "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parties envoy\u00e9es"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-lt v4, v3, :cond_1

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83c\udf89 SMS multipart complet envoy\u00e9: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v1, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->multipartTracker:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v1, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;

    const/4 v8, 0x0

    invoke-direct {v1, p0, p1, v8}, Lcom/smsgateway/app/service/EnhancedSmsService$handleMultipartSuccess$1;-><init>(Lcom/smsgateway/app/service/EnhancedSmsService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_0

    .line 226
    .end local v2    # "sentParts":I
    .end local v3    # "totalParts":I
    .end local v4    # "newSentParts":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u26a0\ufe0f Tracker non trouv\u00e9 pour SMS multipart: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_1
    :goto_0
    return-void
.end method

.method private final reportFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 261
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/smsgateway/app/service/EnhancedSmsService$reportFailure$1;

    const/4 v4, 0x0

    invoke-direct {v0, p2, p1, v4}, Lcom/smsgateway/app/service/EnhancedSmsService$reportFailure$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 278
    return-void
.end method

.method private final reportSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "messageId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .line 240
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/smsgateway/app/service/EnhancedSmsService$reportSuccess$1;

    const/4 v4, 0x0

    invoke-direct {v0, p2, p1, v4}, Lcom/smsgateway/app/service/EnhancedSmsService$reportSuccess$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 258
    return-void
.end method


# virtual methods
.method public final cleanup()V
    .locals 4

    .line 109
    const-string v0, "Nettoyage du service SMS"

    const-string v1, "EnhancedSmsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    nop

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->sentReceiver:Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    iget-object v0, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->deliveredReceiver:Lcom/smsgateway/app/service/EnhancedSmsService$deliveredReceiver$1;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Erreur lors du nettoyage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public final cleanupStaleMessages()V
    .locals 2

    .line 282
    const-string v0, "EnhancedSmsService"

    const-string v1, "\ud83e\uddf9 Nettoyage des messages en attente"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public final getPendingMessagesCount()I
    .locals 1

    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public final initialize()V
    .locals 4

    .line 99
    const-string v0, "EnhancedSmsService"

    const-string v1, "Initialisation du service SMS am\u00e9lior\u00e9"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "SMS_SENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "sentFilter":Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "SMS_DELIVERED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "deliveredFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->sentReceiver:Lcom/smsgateway/app/service/EnhancedSmsService$sentReceiver$1;

    check-cast v3, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    iget-object v2, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/smsgateway/app/service/EnhancedSmsService;->deliveredReceiver:Lcom/smsgateway/app/service/EnhancedSmsService$deliveredReceiver$1;

    check-cast v3, Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method public final sendSms(Lcom/smsgateway/app/data/model/Message;)V
    .locals 18
    .param p1, "message"    # Lcom/smsgateway/app/data/model/Message;

    move-object/from16 v1, p0

    const-string v0, "partIndex"

    const-string v2, "EnhancedSmsService"

    const-string v3, "message"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    nop

    .line 120
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ud83d\udcf1 Envoi SMS: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " caract\u00e8res vers "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getRecipient()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct/range {p0 .. p1}, Lcom/smsgateway/app/service/EnhancedSmsService;->getSmsManagerForMessage(Lcom/smsgateway/app/data/model/Message;)Landroid/telephony/SmsManager;

    move-result-object v3

    .line 125
    .local v3, "smsManager":Landroid/telephony/SmsManager;
    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 126
    .local v14, "messageParts":Ljava/util/ArrayList;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\ud83d\udccb Message divis\u00e9 en "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " partie(s)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "SMS_DELIVERED"

    const-string v7, "SMS_SENT"

    const/4 v8, 0x1

    const/high16 v10, 0xc000000

    const-string v11, "messageId"

    if-ne v5, v8, :cond_0

    .line 131
    :try_start_1
    iget-object v0, v1, Lcom/smsgateway/app/service/EnhancedSmsService;->context:Landroid/content/Context;

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 133
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 134
    nop

    .line 130
    invoke-static {v0, v5, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 138
    .local v9, "sentIntent":Landroid/app/PendingIntent;
    iget-object v0, v1, Lcom/smsgateway/app/service/EnhancedSmsService;->context:Landroid/content/Context;

    .line 139
    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    add-int/2addr v5, v8

    .line 140
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 141
    nop

    .line 137
    invoke-static {v0, v5, v6, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 144
    .local v10, "deliveredIntent":Landroid/app/PendingIntent;
    nop

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getRecipient()Ljava/lang/String;

    move-result-object v6

    .line 146
    const/4 v7, 0x0

    .line 147
    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getContent()Ljava/lang/String;

    move-result-object v8

    .line 148
    nop

    .line 149
    nop

    .line 144
    move-object v5, v3

    invoke-virtual/range {v5 .. v10}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2705 SMS simple envoy\u00e9: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 158
    .end local v9    # "sentIntent":Landroid/app/PendingIntent;
    .end local v10    # "deliveredIntent":Landroid/app/PendingIntent;
    :cond_0
    iget-object v5, v1, Lcom/smsgateway/app/service/EnhancedSmsService;->multipartTracker:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lkotlin/Pair;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v9, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\ud83d\udcca Tracker initialis\u00e9 pour "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ": 0/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " parties"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v5, "sentIntents":Ljava/util/ArrayList;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v8, "deliveredIntents":Ljava/util/ArrayList;
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    :goto_0
    if-ge v9, v12, :cond_1

    .line 167
    iget-object v13, v1, Lcom/smsgateway/app/service/EnhancedSmsService;->context:Landroid/content/Context;

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v15

    add-int/2addr v15, v9

    .line 169
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 170
    nop

    .line 166
    const/high16 v10, 0xc000000

    invoke-static {v13, v15, v4, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 174
    .local v4, "sentIntent":Landroid/app/PendingIntent;
    iget-object v10, v1, Lcom/smsgateway/app/service/EnhancedSmsService;->context:Landroid/content/Context;

    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v13

    add-int/2addr v13, v9

    add-int/lit16 v13, v13, 0x3e8

    .line 176
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v6

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 177
    nop

    .line 173
    const/high16 v15, 0xc000000

    invoke-static {v10, v13, v6, v15}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 180
    .local v6, "deliveredIntent":Landroid/app/PendingIntent;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    nop

    .end local v4    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveredIntent":Landroid/app/PendingIntent;
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, p1

    move v10, v15

    move-object/from16 v6, v17

    goto :goto_0

    .line 185
    .end local v9    # "i":I
    :cond_1
    nop

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getRecipient()Ljava/lang/String;

    move-result-object v12

    .line 187
    const/4 v13, 0x0

    .line 188
    nop

    .line 189
    nop

    .line 190
    nop

    .line 185
    move-object v11, v3

    move-object v15, v5

    move-object/from16 v16, v8

    invoke-virtual/range {v11 .. v16}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2705 SMS multipart envoy\u00e9: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " parties)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 196
    .end local v3    # "smsManager":Landroid/telephony/SmsManager;
    .end local v5    # "sentIntents":Ljava/util/ArrayList;
    .end local v8    # "deliveredIntents":Ljava/util/ArrayList;
    .end local v14    # "messageParts":Ljava/util/ArrayList;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u274c Erreur lors de l\'envoi SMS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/smsgateway/app/data/model/Message;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEND_EXCEPTION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/smsgateway/app/service/EnhancedSmsService;->reportFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
