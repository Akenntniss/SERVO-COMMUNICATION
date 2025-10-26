.class public final Lcom/smsgateway/app/data/model/SimCard;
.super Ljava/lang/Object;
.source "SimCard.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0006\n\u0002\u00085\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00c1\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0005\u0012\u0006\u0010\u0012\u001a\u00020\u0005\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0002\u0010\u001aJ\t\u00105\u001a\u00020\u0003H\u00c6\u0003J\t\u00106\u001a\u00020\u0003H\u00c6\u0003J\t\u00107\u001a\u00020\u0003H\u00c6\u0003J\t\u00108\u001a\u00020\u0003H\u00c6\u0003J\t\u00109\u001a\u00020\u0005H\u00c6\u0003J\t\u0010:\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010=\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010/J\u0010\u0010>\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010/J\u0010\u0010?\u001a\u0004\u0018\u00010\u0018H\u00c6\u0003\u00a2\u0006\u0002\u0010%J\t\u0010@\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010A\u001a\u0004\u0018\u00010\u0018H\u00c6\u0003\u00a2\u0006\u0002\u0010%J\t\u0010B\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010F\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010/J\t\u0010G\u001a\u00020\u000cH\u00c6\u0003J\t\u0010H\u001a\u00020\u0003H\u00c6\u0003J\u00ea\u0001\u0010I\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00052\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u00c6\u0001\u00a2\u0006\u0002\u0010JJ\t\u0010K\u001a\u00020\u0003H\u00d6\u0001J\u0013\u0010L\u001a\u00020\u000c2\u0008\u0010M\u001a\u0004\u0018\u00010NH\u00d6\u0003J\u0006\u0010O\u001a\u00020\u0005J\u0006\u0010P\u001a\u00020QJ\u0006\u0010R\u001a\u00020QJ\u0006\u0010S\u001a\u00020\u0003J\u0006\u0010T\u001a\u00020\u0003J\u0006\u0010U\u001a\u00020\u0005J\t\u0010V\u001a\u00020\u0003H\u00d6\u0001J\t\u0010W\u001a\u00020\u0005H\u00d6\u0001J\u0019\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020\u0003H\u00d6\u0001R\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001cR\u0016\u0010\u0011\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001cR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0016\u0010\u000b\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010!R\u0016\u0010\u000f\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010 R\u0016\u0010\r\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010 R\u001a\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010&\u001a\u0004\u0008$\u0010%R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001cR\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001cR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u001cR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u001cR\u0016\u0010\u0010\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010 R\u0016\u0010\u000e\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010 R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010&\u001a\u0004\u0008-\u0010%R\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u00100\u001a\u0004\u0008.\u0010/R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u00100\u001a\u0004\u00081\u0010/R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010 R\u001a\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u00100\u001a\u0004\u00083\u0010/R\u0016\u0010\u0012\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u001c\u00a8\u0006]"
    }
    d2 = {
        "Lcom/smsgateway/app/data/model/SimCard;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "phoneId",
        "",
        "slotIndex",
        "phoneNumber",
        "carrierName",
        "countryCode",
        "subscriptionId",
        "isActive",
        "",
        "monthlyLimit",
        "recipientsMonthlyLimit",
        "messagesSentMonth",
        "recipientsMonthly",
        "createdAt",
        "updatedAt",
        "phoneModel",
        "phoneStatus",
        "remainingMonthly",
        "remainingRecipientsMonthly",
        "monthlyUsagePercent",
        "",
        "recipientsMonthlyUsagePercent",
        "(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)V",
        "getCarrierName",
        "()Ljava/lang/String;",
        "getCountryCode",
        "getCreatedAt",
        "getId",
        "()I",
        "()Z",
        "getMessagesSentMonth",
        "getMonthlyLimit",
        "getMonthlyUsagePercent",
        "()Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "getPhoneId",
        "getPhoneModel",
        "getPhoneNumber",
        "getPhoneStatus",
        "getRecipientsMonthly",
        "getRecipientsMonthlyLimit",
        "getRecipientsMonthlyUsagePercent",
        "getRemainingMonthly",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getRemainingRecipientsMonthly",
        "getSlotIndex",
        "getSubscriptionId",
        "getUpdatedAt",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)Lcom/smsgateway/app/data/model/SimCard;",
        "describeContents",
        "equals",
        "other",
        "",
        "getDisplayName",
        "getMonthlyRecipientsUsagePercentage",
        "",
        "getMonthlyUsagePercentage",
        "getRemainingMonthlyMessages",
        "getRemainingMonthlyRecipients",
        "getStatusText",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/smsgateway/app/data/model/SimCard;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final carrierName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "carrier_name"
    .end annotation
.end field

.field private final countryCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "country_code"
    .end annotation
.end field

.field private final createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field private final id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private final isActive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_active"
    .end annotation
.end field

.field private final messagesSentMonth:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "messages_sent_month"
    .end annotation
.end field

.field private final monthlyLimit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "monthly_limit"
    .end annotation
.end field

.field private final monthlyUsagePercent:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "monthly_usage_percent"
    .end annotation
.end field

.field private final phoneId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_id"
    .end annotation
.end field

.field private final phoneModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_model"
    .end annotation
.end field

.field private final phoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_number"
    .end annotation
.end field

.field private final phoneStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_status"
    .end annotation
.end field

.field private final recipientsMonthly:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipients_monthly"
    .end annotation
.end field

.field private final recipientsMonthlyLimit:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipients_monthly_limit"
    .end annotation
.end field

.field private final recipientsMonthlyUsagePercent:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipients_monthly_usage_percent"
    .end annotation
.end field

.field private final remainingMonthly:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "remaining_monthly"
    .end annotation
.end field

.field private final remainingRecipientsMonthly:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "remaining_recipients_monthly"
    .end annotation
.end field

.field private final slotIndex:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "slot_index"
    .end annotation
.end field

.field private final subscriptionId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "subscription_id"
    .end annotation
.end field

.field private final updatedAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updated_at"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smsgateway/app/data/model/SimCard$Creator;

    invoke-direct {v0}, Lcom/smsgateway/app/data/model/SimCard$Creator;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/smsgateway/app/data/model/SimCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 16
    .param p1, "id"    # I
    .param p2, "phoneId"    # Ljava/lang/String;
    .param p3, "slotIndex"    # I
    .param p4, "phoneNumber"    # Ljava/lang/String;
    .param p5, "carrierName"    # Ljava/lang/String;
    .param p6, "countryCode"    # Ljava/lang/String;
    .param p7, "subscriptionId"    # Ljava/lang/Integer;
    .param p8, "isActive"    # Z
    .param p9, "monthlyLimit"    # I
    .param p10, "recipientsMonthlyLimit"    # I
    .param p11, "messagesSentMonth"    # I
    .param p12, "recipientsMonthly"    # I
    .param p13, "createdAt"    # Ljava/lang/String;
    .param p14, "updatedAt"    # Ljava/lang/String;
    .param p15, "phoneModel"    # Ljava/lang/String;
    .param p16, "phoneStatus"    # Ljava/lang/String;
    .param p17, "remainingMonthly"    # Ljava/lang/Integer;
    .param p18, "remainingRecipientsMonthly"    # Ljava/lang/Integer;
    .param p19, "monthlyUsagePercent"    # Ljava/lang/Double;
    .param p20, "recipientsMonthlyUsagePercent"    # Ljava/lang/Double;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    const-string v4, "phoneId"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "createdAt"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "updatedAt"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    move/from16 v4, p1

    iput v4, v0, Lcom/smsgateway/app/data/model/SimCard;->id:I

    .line 12
    iput-object v1, v0, Lcom/smsgateway/app/data/model/SimCard;->phoneId:Ljava/lang/String;

    .line 15
    move/from16 v5, p3

    iput v5, v0, Lcom/smsgateway/app/data/model/SimCard;->slotIndex:I

    .line 18
    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/smsgateway/app/data/model/SimCard;->phoneNumber:Ljava/lang/String;

    .line 21
    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/smsgateway/app/data/model/SimCard;->carrierName:Ljava/lang/String;

    .line 24
    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/smsgateway/app/data/model/SimCard;->countryCode:Ljava/lang/String;

    .line 27
    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/smsgateway/app/data/model/SimCard;->subscriptionId:Ljava/lang/Integer;

    .line 30
    move/from16 v10, p8

    iput-boolean v10, v0, Lcom/smsgateway/app/data/model/SimCard;->isActive:Z

    .line 33
    move/from16 v11, p9

    iput v11, v0, Lcom/smsgateway/app/data/model/SimCard;->monthlyLimit:I

    .line 36
    move/from16 v12, p10

    iput v12, v0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyLimit:I

    .line 39
    move/from16 v13, p11

    iput v13, v0, Lcom/smsgateway/app/data/model/SimCard;->messagesSentMonth:I

    .line 42
    move/from16 v14, p12

    iput v14, v0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthly:I

    .line 45
    iput-object v2, v0, Lcom/smsgateway/app/data/model/SimCard;->createdAt:Ljava/lang/String;

    .line 48
    iput-object v3, v0, Lcom/smsgateway/app/data/model/SimCard;->updatedAt:Ljava/lang/String;

    .line 51
    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/smsgateway/app/data/model/SimCard;->phoneModel:Ljava/lang/String;

    .line 54
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/smsgateway/app/data/model/SimCard;->phoneStatus:Ljava/lang/String;

    .line 58
    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/smsgateway/app/data/model/SimCard;->remainingMonthly:Ljava/lang/Integer;

    .line 61
    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/smsgateway/app/data/model/SimCard;->remainingRecipientsMonthly:Ljava/lang/Integer;

    .line 64
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/smsgateway/app/data/model/SimCard;->monthlyUsagePercent:Ljava/lang/Double;

    .line 67
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyUsagePercent:Ljava/lang/Double;

    .line 8
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    .line 8
    const/high16 v0, 0x10000

    and-int v0, p21, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 59
    move-object/from16 v19, v1

    goto :goto_0

    .line 8
    :cond_0
    move-object/from16 v19, p17

    :goto_0
    const/high16 v0, 0x20000

    and-int v0, p21, v0

    if-eqz v0, :cond_1

    .line 62
    move-object/from16 v20, v1

    goto :goto_1

    .line 8
    :cond_1
    move-object/from16 v20, p18

    :goto_1
    const/high16 v0, 0x40000

    and-int v0, p21, v0

    if-eqz v0, :cond_2

    .line 65
    move-object/from16 v21, v1

    goto :goto_2

    .line 8
    :cond_2
    move-object/from16 v21, p19

    :goto_2
    const/high16 v0, 0x80000

    and-int v0, p21, v0

    if-eqz v0, :cond_3

    .line 68
    move-object/from16 v22, v1

    goto :goto_3

    .line 8
    :cond_3
    move-object/from16 v22, p20

    :goto_3
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    invoke-direct/range {v2 .. v22}, Lcom/smsgateway/app/data/model/SimCard;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)V

    .line 105
    return-void
.end method

.method public static synthetic copy$default(Lcom/smsgateway/app/data/model/SimCard;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;ILjava/lang/Object;)Lcom/smsgateway/app/data/model/SimCard;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/smsgateway/app/data/model/SimCard;->id:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/smsgateway/app/data/model/SimCard;->phoneId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/smsgateway/app/data/model/SimCard;->slotIndex:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/smsgateway/app/data/model/SimCard;->phoneNumber:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/smsgateway/app/data/model/SimCard;->carrierName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/smsgateway/app/data/model/SimCard;->countryCode:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/smsgateway/app/data/model/SimCard;->subscriptionId:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-boolean v9, v0, Lcom/smsgateway/app/data/model/SimCard;->isActive:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/smsgateway/app/data/model/SimCard;->monthlyLimit:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyLimit:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/smsgateway/app/data/model/SimCard;->messagesSentMonth:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthly:I

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/smsgateway/app/data/model/SimCard;->createdAt:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/smsgateway/app/data/model/SimCard;->updatedAt:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/smsgateway/app/data/model/SimCard;->phoneModel:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/smsgateway/app/data/model/SimCard;->phoneStatus:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/smsgateway/app/data/model/SimCard;->remainingMonthly:Ljava/lang/Integer;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/smsgateway/app/data/model/SimCard;->remainingRecipientsMonthly:Ljava/lang/Integer;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/smsgateway/app/data/model/SimCard;->monthlyUsagePercent:Ljava/lang/Double;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v1, v1, v16

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyUsagePercent:Ljava/lang/Double;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    move/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p19, v15

    move-object/from16 p20, v1

    invoke-virtual/range {p0 .. p20}, Lcom/smsgateway/app/data/model/SimCard;->copy(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)Lcom/smsgateway/app/data/model/SimCard;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->id:I

    return v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyLimit:I

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->messagesSentMonth:I

    return v0
.end method

.method public final component12()I
    .locals 1

    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthly:I

    return v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneModel:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->remainingMonthly:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component18()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->remainingRecipientsMonthly:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component19()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->monthlyUsagePercent:Ljava/lang/Double;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneId:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyUsagePercent:Ljava/lang/Double;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->slotIndex:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->carrierName:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->subscriptionId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/smsgateway/app/data/model/SimCard;->isActive:Z

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->monthlyLimit:I

    return v0
.end method

.method public final copy(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)Lcom/smsgateway/app/data/model/SimCard;
    .locals 23

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    const-string v0, "phoneId"

    move/from16 v21, v1

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v1, p13

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatedAt"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v22, Lcom/smsgateway/app/data/model/SimCard;

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-direct/range {v0 .. v20}, Lcom/smsgateway/app/data/model/SimCard;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;)V

    return-object v22
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smsgateway/app/data/model/SimCard;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/smsgateway/app/data/model/SimCard;

    iget v3, p0, Lcom/smsgateway/app/data/model/SimCard;->id:I

    iget v4, v1, Lcom/smsgateway/app/data/model/SimCard;->id:I

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneId:Ljava/lang/String;

    iget-object v4, v1, Lcom/smsgateway/app/data/model/SimCard;->phoneId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/smsgateway/app/data/model/SimCard;->slotIndex:I

    iget v4, v1, Lcom/smsgateway/app/data/model/SimCard;->slotIndex:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneNumber:Ljava/lang/String;

    iget-object v4, v1, Lcom/smsgateway/app/data/model/SimCard;->phoneNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    iget-object v3, p0, Lcom/smsgateway/app/data/model/SimCard;->carrierName:Ljava/lang/String;

    iget-object v4, v1, Lcom/smsgateway/app/data/model/SimCard;->carrierName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/smsgateway/app/data/model/SimCard;->countryCode:Ljava/lang/String;

    iget-object v4, v1, Lcom/smsgateway/app/data/model/SimCard;->countryCode:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v2

    :cond_7
    iget-object v3, p0, Lcom/smsgateway/app/data/model/SimCard;->subscriptionId:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/smsgateway/app/data/model/SimCard;->subscriptionId:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v2

    :cond_8
    iget-boolean v3, p0, Lcom/smsgateway/app/data/model/SimCard;->isActive:Z

    iget-boolean v4, v1, Lcom/smsgateway/app/data/model/SimCard;->isActive:Z

    if-eq v3, v4, :cond_9

    return v2

    :cond_9
    iget v3, p0, Lcom/smsgateway/app/data/model/SimCard;->monthlyLimit:I

    iget v4, v1, Lcom/smsgateway/app/data/model/SimCard;->monthlyLimit:I

    if-eq v3, v4, :cond_a

    return v2

    :cond_a
    iget v3, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyLimit:I

    iget v4, v1, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyLimit:I

    if-eq v3, v4, :cond_b

    return v2

    :cond_b
    iget v3, p0, Lcom/smsgateway/app/data/model/SimCard;->messagesSentMonth:I

    iget v4, v1, Lcom/smsgateway/app/data/model/SimCard;->messagesSentMonth:I

    if-eq v3, v4, :cond_c

    return v2

    :cond_c
    iget v3, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthly:I

    iget v4, v1, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthly:I

    if-eq v3, v4, :cond_d

    return v2

    :cond_d
    iget-object v3, p0, Lcom/smsgateway/app/data/model/SimCard;->createdAt:Ljava/lang/String;

    iget-object v4, v1, Lcom/smsgateway/app/data/model/SimCard;->createdAt:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    return v2

    :cond_e
    iget-object v3, p0, Lcom/smsgateway/app/data/model/SimCard;->updatedAt:Ljava/lang/String;

    iget-object v4, v1, Lcom/smsgateway/app/data/model/SimCard;->updatedAt:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    return v2

    :cond_f
    iget-object v3, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneModel:Ljava/lang/String;

    iget-object v4, v1, Lcom/smsgateway/app/data/model/SimCard;->phoneModel:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    return v2

    :cond_10
    iget-object v3, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneStatus:Ljava/lang/String;

    iget-object v4, v1, Lcom/smsgateway/app/data/model/SimCard;->phoneStatus:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    return v2

    :cond_11
    iget-object v3, p0, Lcom/smsgateway/app/data/model/SimCard;->remainingMonthly:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/smsgateway/app/data/model/SimCard;->remainingMonthly:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    return v2

    :cond_12
    iget-object v3, p0, Lcom/smsgateway/app/data/model/SimCard;->remainingRecipientsMonthly:Ljava/lang/Integer;

    iget-object v4, v1, Lcom/smsgateway/app/data/model/SimCard;->remainingRecipientsMonthly:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    return v2

    :cond_13
    iget-object v3, p0, Lcom/smsgateway/app/data/model/SimCard;->monthlyUsagePercent:Ljava/lang/Double;

    iget-object v4, v1, Lcom/smsgateway/app/data/model/SimCard;->monthlyUsagePercent:Ljava/lang/Double;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    return v2

    :cond_14
    iget-object v3, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyUsagePercent:Ljava/lang/Double;

    iget-object v1, v1, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyUsagePercent:Ljava/lang/Double;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final getCarrierName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->carrierName:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryCode()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smsgateway/app/data/model/SimCard;->slotIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smsgateway/app/data/model/SimCard;->carrierName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "Inconnu"

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->id:I

    return v0
.end method

.method public final getMessagesSentMonth()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->messagesSentMonth:I

    return v0
.end method

.method public final getMonthlyLimit()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->monthlyLimit:I

    return v0
.end method

.method public final getMonthlyRecipientsUsagePercentage()F
    .locals 2

    .line 86
    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyLimit:I

    if-lez v0, :cond_0

    .line 87
    iget v1, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthly:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    goto :goto_0

    .line 88
    :cond_0
    const/4 v1, 0x0

    .line 86
    :goto_0
    return v1
.end method

.method public final getMonthlyUsagePercent()Ljava/lang/Double;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->monthlyUsagePercent:Ljava/lang/Double;

    return-object v0
.end method

.method public final getMonthlyUsagePercentage()F
    .locals 2

    .line 80
    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->monthlyLimit:I

    if-lez v0, :cond_0

    .line 81
    iget v1, p0, Lcom/smsgateway/app/data/model/SimCard;->messagesSentMonth:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    goto :goto_0

    .line 82
    :cond_0
    const/4 v1, 0x0

    .line 80
    :goto_0
    return v1
.end method

.method public final getPhoneId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneModel()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneStatus()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecipientsMonthly()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthly:I

    return v0
.end method

.method public final getRecipientsMonthlyLimit()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyLimit:I

    return v0
.end method

.method public final getRecipientsMonthlyUsagePercent()Ljava/lang/Double;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyUsagePercent:Ljava/lang/Double;

    return-object v0
.end method

.method public final getRemainingMonthly()Ljava/lang/Integer;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->remainingMonthly:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRemainingMonthlyMessages()I
    .locals 2

    .line 72
    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->monthlyLimit:I

    iget v1, p0, Lcom/smsgateway/app/data/model/SimCard;->messagesSentMonth:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getRemainingMonthlyRecipients()I
    .locals 2

    .line 76
    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyLimit:I

    iget v1, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthly:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getRemainingRecipientsMonthly()Ljava/lang/Integer;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->remainingRecipientsMonthly:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSlotIndex()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->slotIndex:I

    return v0
.end method

.method public final getStatusText()Ljava/lang/String;
    .locals 2

    .line 92
    nop

    .line 93
    iget-boolean v0, p0, Lcom/smsgateway/app/data/model/SimCard;->isActive:Z

    if-nez v0, :cond_0

    const-string v0, "Inactive"

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/smsgateway/app/data/model/SimCard;->getRemainingMonthlyMessages()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Limite mensuelle atteinte"

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/smsgateway/app/data/model/SimCard;->getRemainingMonthlyRecipients()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Limite de destinataires atteinte"

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/smsgateway/app/data/model/SimCard;->getMonthlyUsagePercentage()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const-string v0, "Limite mensuelle proche"

    goto :goto_0

    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/smsgateway/app/data/model/SimCard;->getMonthlyRecipientsUsagePercentage()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    const-string v0, "Limite de destinataires proche"

    goto :goto_0

    .line 98
    :cond_4
    const-string v0, "Disponible"

    .line 92
    :goto_0
    return-object v0
.end method

.method public final getSubscriptionId()Ljava/lang/Integer;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->subscriptionId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->id:I

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/smsgateway/app/data/model/SimCard;->slotIndex:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneNumber:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->carrierName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->countryCode:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->subscriptionId:Ljava/lang/Integer;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/smsgateway/app/data/model/SimCard;->isActive:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/smsgateway/app/data/model/SimCard;->monthlyLimit:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyLimit:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/smsgateway/app/data/model/SimCard;->messagesSentMonth:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthly:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->createdAt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->updatedAt:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneModel:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneStatus:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v3

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->remainingMonthly:Ljava/lang/Integer;

    if-nez v2, :cond_7

    move v2, v3

    goto :goto_6

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->remainingRecipientsMonthly:Ljava/lang/Integer;

    if-nez v2, :cond_8

    move v2, v3

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->monthlyUsagePercent:Ljava/lang/Double;

    if-nez v2, :cond_9

    move v2, v3

    goto :goto_8

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyUsagePercent:Ljava/lang/Double;

    if-nez v2, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v1, v3

    return v1
.end method

.method public final isActive()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/smsgateway/app/data/model/SimCard;->isActive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimCard(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smsgateway/app/data/model/SimCard;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", slotIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smsgateway/app/data/model/SimCard;->slotIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", carrierName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->carrierName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", countryCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", subscriptionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->subscriptionId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/smsgateway/app/data/model/SimCard;->isActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", monthlyLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smsgateway/app/data/model/SimCard;->monthlyLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", recipientsMonthlyLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", messagesSentMonth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/smsgateway/app/data/model/SimCard;->messagesSentMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", recipientsMonthly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthly:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", createdAt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->createdAt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", updatedAt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->updatedAt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneModel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remainingMonthly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->remainingMonthly:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remainingRecipientsMonthly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->remainingRecipientsMonthly:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", monthlyUsagePercent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->monthlyUsagePercent:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", recipientsMonthlyUsagePercent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyUsagePercent:Ljava/lang/Double;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->slotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->carrierName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->countryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->subscriptionId:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/smsgateway/app/data/model/SimCard;->isActive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->monthlyLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->messagesSentMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthly:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->createdAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->updatedAt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneModel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->phoneStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->remainingMonthly:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->remainingRecipientsMonthly:Ljava/lang/Integer;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->monthlyUsagePercent:Ljava/lang/Double;

    if-nez v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_3
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimCard;->recipientsMonthlyUsagePercent:Ljava/lang/Double;

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :goto_4
    return-void
.end method
