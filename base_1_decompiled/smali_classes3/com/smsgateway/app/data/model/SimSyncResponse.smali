.class public final Lcom/smsgateway/app/data/model/SimSyncResponse;
.super Ljava/lang/Object;
.source "SimCard.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u000f\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J-\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/smsgateway/app/data/model/SimSyncResponse;",
        "",
        "phoneId",
        "",
        "syncedCount",
        "",
        "sims",
        "",
        "Lcom/smsgateway/app/data/model/SimCard;",
        "(Ljava/lang/String;ILjava/util/List;)V",
        "getPhoneId",
        "()Ljava/lang/String;",
        "getSims",
        "()Ljava/util/List;",
        "getSyncedCount",
        "()I",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final phoneId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "phone_id"
    .end annotation
.end field

.field private final sims:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sims"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smsgateway/app/data/model/SimCard;",
            ">;"
        }
    .end annotation
.end field

.field private final syncedCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "synced_count"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .param p1, "phoneId"    # Ljava/lang/String;
    .param p2, "syncedCount"    # I
    .param p3, "sims"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/smsgateway/app/data/model/SimCard;",
            ">;)V"
        }
    .end annotation

    const-string v0, "phoneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sims"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->phoneId:Ljava/lang/String;

    .line 131
    iput p2, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->syncedCount:I

    .line 133
    iput-object p3, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->sims:Ljava/util/List;

    .line 128
    return-void
.end method

.method public static synthetic copy$default(Lcom/smsgateway/app/data/model/SimSyncResponse;Ljava/lang/String;ILjava/util/List;ILjava/lang/Object;)Lcom/smsgateway/app/data/model/SimSyncResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->phoneId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->syncedCount:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->sims:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/smsgateway/app/data/model/SimSyncResponse;->copy(Ljava/lang/String;ILjava/util/List;)Lcom/smsgateway/app/data/model/SimSyncResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->phoneId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->syncedCount:I

    return v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smsgateway/app/data/model/SimCard;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->sims:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILjava/util/List;)Lcom/smsgateway/app/data/model/SimSyncResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/smsgateway/app/data/model/SimCard;",
            ">;)",
            "Lcom/smsgateway/app/data/model/SimSyncResponse;"
        }
    .end annotation

    const-string v0, "phoneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sims"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smsgateway/app/data/model/SimSyncResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/smsgateway/app/data/model/SimSyncResponse;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smsgateway/app/data/model/SimSyncResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/smsgateway/app/data/model/SimSyncResponse;

    iget-object v3, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->phoneId:Ljava/lang/String;

    iget-object v4, v1, Lcom/smsgateway/app/data/model/SimSyncResponse;->phoneId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->syncedCount:I

    iget v4, v1, Lcom/smsgateway/app/data/model/SimSyncResponse;->syncedCount:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->sims:Ljava/util/List;

    iget-object v1, v1, Lcom/smsgateway/app/data/model/SimSyncResponse;->sims:Ljava/util/List;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPhoneId()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->phoneId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSims()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smsgateway/app/data/model/SimCard;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->sims:Ljava/util/List;

    return-object v0
.end method

.method public final getSyncedCount()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->syncedCount:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->phoneId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->syncedCount:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->sims:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimSyncResponse(phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->phoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", syncedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->syncedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sims="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smsgateway/app/data/model/SimSyncResponse;->sims:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
