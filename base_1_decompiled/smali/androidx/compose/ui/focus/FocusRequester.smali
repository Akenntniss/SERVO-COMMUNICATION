.class public final Landroidx/compose/ui/focus/FocusRequester;
.super Ljava/lang/Object;
.source "FocusRequester.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusRequester$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusRequester.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusRequester.kt\nandroidx/compose/ui/focus/FocusRequester\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,156:1\n1137#2:157\n1116#2,2:158\n1#3:160\n459#4,11:161\n459#4,11:172\n459#4,11:183\n*S KotlinDebug\n*F\n+ 1 FocusRequester.kt\nandroidx/compose/ui/focus/FocusRequester\n*L\n44#1:157\n44#1:158,2\n55#1:161,11\n76#1:172,11\n103#1:183,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\tJ\u0006\u0010\u000b\u001a\u00020\u000cR\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/ui/focus/FocusRequester;",
        "",
        "()V",
        "focusRequesterNodes",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/ui/node/ModifiedFocusRequesterNode;",
        "getFocusRequesterNodes$ui_release",
        "()Landroidx/compose/runtime/collection/MutableVector;",
        "captureFocus",
        "",
        "freeFocus",
        "requestFocus",
        "",
        "Companion",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

.field private static final Default:Landroidx/compose/ui/focus/FocusRequester;


# instance fields
.field private final focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/ModifiedFocusRequesterNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/focus/FocusRequester$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/focus/FocusRequester$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    sget v0, Landroidx/compose/runtime/collection/MutableVector;->$stable:I

    sput v0, Landroidx/compose/ui/focus/FocusRequester;->$stable:I

    .line 119
    new-instance v0, Landroidx/compose/ui/focus/FocusRequester;

    invoke-direct {v0}, Landroidx/compose/ui/focus/FocusRequester;-><init>()V

    sput-object v0, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    .line 157
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 158
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv":I
    const/4 v2, 0x0

    .line 159
    .local v2, "$i$f$MutableVector":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v1, [Landroidx/compose/ui/node/ModifiedFocusRequesterNode;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 157
    .end local v1    # "capacity$iv$iv":I
    .end local v2    # "$i$f$MutableVector":I
    nop

    .line 44
    .end local v0    # "$i$f$mutableVectorOf":I
    iput-object v3, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .line 42
    return-void
.end method

.method public static final synthetic access$getDefault$cp()Landroidx/compose/ui/focus/FocusRequester;
    .locals 1

    .line 42
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Default:Landroidx/compose/ui/focus/FocusRequester;

    return-object v0
.end method


# virtual methods
.method public final captureFocus()Z
    .locals 11

    .line 74
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "success":Z
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 172
    .local v2, "$i$f$forEach":I
    nop

    .line 173
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    .line 174
    .local v3, "size$iv":I
    if-lez v3, :cond_3

    .line 175
    const/4 v4, 0x0

    .line 176
    .local v4, "i$iv":I
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    .line 178
    .local v5, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v6, v5, v4

    check-cast v6, Landroidx/compose/ui/node/ModifiedFocusRequesterNode;

    .local v6, "it":Landroidx/compose/ui/node/ModifiedFocusRequesterNode;
    const/4 v7, 0x0

    .line 77
    .local v7, "$i$a$-forEach-FocusRequester$captureFocus$2":I
    invoke-virtual {v6}, Landroidx/compose/ui/node/ModifiedFocusRequesterNode;->findFocusNode$ui_release()Landroidx/compose/ui/node/ModifiedFocusNode;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_0

    .local v8, "$this$captureFocus_u24lambda_u2d4_u24lambda_u2d3":Landroidx/compose/ui/node/ModifiedFocusNode;
    :cond_1
    const/4 v9, 0x0

    .line 78
    .local v9, "$i$a$-apply-FocusRequester$captureFocus$2$1":I
    invoke-static {v8}, Landroidx/compose/ui/focus/FocusTransactionsKt;->captureFocus(Landroidx/compose/ui/node/ModifiedFocusNode;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 79
    const/4 v0, 0x1

    .line 81
    :cond_2
    nop

    .line 77
    .end local v8    # "$this$captureFocus_u24lambda_u2d4_u24lambda_u2d3":Landroidx/compose/ui/node/ModifiedFocusNode;
    .end local v9    # "$i$a$-apply-FocusRequester$captureFocus$2$1":I
    nop

    .line 82
    :goto_0
    nop

    .line 179
    .end local v6    # "it":Landroidx/compose/ui/node/ModifiedFocusRequesterNode;
    .end local v7    # "$i$a$-forEach-FocusRequester$captureFocus$2":I
    add-int/lit8 v4, v4, 0x1

    .line 180
    if-lt v4, v3, :cond_0

    .line 182
    .end local v4    # "i$iv":I
    .end local v5    # "content$iv":[Ljava/lang/Object;
    :cond_3
    nop

    .line 83
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "size$iv":I
    return v0

    .line 160
    .end local v0    # "success":Z
    :cond_4
    const/4 v0, 0x0

    .line 74
    .local v0, "$i$a$-check-FocusRequester$captureFocus$1":I
    nop

    .end local v0    # "$i$a$-check-FocusRequester$captureFocus$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final freeFocus()Z
    .locals 11

    .line 101
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "success":Z
    iget-object v1, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .local v1, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v2, 0x0

    .line 183
    .local v2, "$i$f$forEach":I
    nop

    .line 184
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v3

    .line 185
    .local v3, "size$iv":I
    if-lez v3, :cond_3

    .line 186
    const/4 v4, 0x0

    .line 187
    .local v4, "i$iv":I
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v5

    .line 189
    .local v5, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v6, v5, v4

    check-cast v6, Landroidx/compose/ui/node/ModifiedFocusRequesterNode;

    .local v6, "it":Landroidx/compose/ui/node/ModifiedFocusRequesterNode;
    const/4 v7, 0x0

    .line 104
    .local v7, "$i$a$-forEach-FocusRequester$freeFocus$2":I
    invoke-virtual {v6}, Landroidx/compose/ui/node/ModifiedFocusRequesterNode;->findFocusNode$ui_release()Landroidx/compose/ui/node/ModifiedFocusNode;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_0

    .local v8, "$this$freeFocus_u24lambda_u2d7_u24lambda_u2d6":Landroidx/compose/ui/node/ModifiedFocusNode;
    :cond_1
    const/4 v9, 0x0

    .line 105
    .local v9, "$i$a$-apply-FocusRequester$freeFocus$2$1":I
    invoke-static {v8}, Landroidx/compose/ui/focus/FocusTransactionsKt;->freeFocus(Landroidx/compose/ui/node/ModifiedFocusNode;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 106
    const/4 v0, 0x1

    .line 108
    :cond_2
    nop

    .line 104
    .end local v8    # "$this$freeFocus_u24lambda_u2d7_u24lambda_u2d6":Landroidx/compose/ui/node/ModifiedFocusNode;
    .end local v9    # "$i$a$-apply-FocusRequester$freeFocus$2$1":I
    nop

    .line 109
    :goto_0
    nop

    .line 190
    .end local v6    # "it":Landroidx/compose/ui/node/ModifiedFocusRequesterNode;
    .end local v7    # "$i$a$-forEach-FocusRequester$freeFocus$2":I
    add-int/lit8 v4, v4, 0x1

    .line 191
    if-lt v4, v3, :cond_0

    .line 193
    .end local v4    # "i$iv":I
    .end local v5    # "content$iv":[Ljava/lang/Object;
    :cond_3
    nop

    .line 110
    .end local v1    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v2    # "$i$f$forEach":I
    .end local v3    # "size$iv":I
    return v0

    .line 160
    .end local v0    # "success":Z
    :cond_4
    const/4 v0, 0x0

    .line 101
    .local v0, "$i$a$-check-FocusRequester$freeFocus$1":I
    nop

    .end local v0    # "$i$a$-check-FocusRequester$freeFocus$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final getFocusRequesterNodes$ui_release()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/node/ModifiedFocusRequesterNode;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    return-object v0
.end method

.method public final requestFocus()V
    .locals 9

    .line 54
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusRequester;->focusRequesterNodes:Landroidx/compose/runtime/collection/MutableVector;

    .local v0, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v1, 0x0

    .line 161
    .local v1, "$i$f$forEach":I
    nop

    .line 162
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v2

    .line 163
    .local v2, "size$iv":I
    if-lez v2, :cond_2

    .line 164
    const/4 v3, 0x0

    .line 165
    .local v3, "i$iv":I
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v4

    .line 167
    .local v4, "content$iv":[Ljava/lang/Object;
    :cond_0
    aget-object v5, v4, v3

    check-cast v5, Landroidx/compose/ui/node/ModifiedFocusRequesterNode;

    .local v5, "it":Landroidx/compose/ui/node/ModifiedFocusRequesterNode;
    const/4 v6, 0x0

    .line 55
    .local v6, "$i$a$-forEach-FocusRequester$requestFocus$2":I
    invoke-virtual {v5}, Landroidx/compose/ui/node/ModifiedFocusRequesterNode;->findFocusNode$ui_release()Landroidx/compose/ui/node/ModifiedFocusNode;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestFocus(Landroidx/compose/ui/node/ModifiedFocusNode;Z)V

    .line 168
    .end local v5    # "it":Landroidx/compose/ui/node/ModifiedFocusRequesterNode;
    .end local v6    # "$i$a$-forEach-FocusRequester$requestFocus$2":I
    :goto_0
    add-int/lit8 v3, v3, 0x1

    .line 169
    if-lt v3, v2, :cond_0

    .line 171
    .end local v3    # "i$iv":I
    .end local v4    # "content$iv":[Ljava/lang/Object;
    :cond_2
    nop

    .line 56
    .end local v0    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v1    # "$i$f$forEach":I
    .end local v2    # "size$iv":I
    return-void

    .line 160
    :cond_3
    const/4 v0, 0x0

    .line 54
    .local v0, "$i$a$-check-FocusRequester$requestFocus$1":I
    nop

    .end local v0    # "$i$a$-check-FocusRequester$requestFocus$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
