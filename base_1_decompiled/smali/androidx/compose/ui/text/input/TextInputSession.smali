.class public final Landroidx/compose/ui/text/input/TextInputSession;
.super Ljava/lang/Object;
.source "TextInputService.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextInputService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextInputService.kt\nandroidx/compose/ui/text/input/TextInputSession\n*L\n1#1,271:1\n143#1,5:272\n143#1,5:277\n143#1,5:282\n143#1,5:287\n*S KotlinDebug\n*F\n+ 1 TextInputService.kt\nandroidx/compose/ui/text/input/TextInputSession\n*L\n158#1:272,5\n180#1:277,5\n198#1:282,5\n213#1:287,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\n\u001a\u00020\u000bJ\u0017\u0010\u000c\u001a\u00020\u00082\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000eH\u0082\u0008J\u0006\u0010\u000f\u001a\u00020\u0008J\u000e\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0008J\u0018\u0010\u0014\u001a\u00020\u00082\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u0016R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/compose/ui/text/input/TextInputSession;",
        "",
        "textInputService",
        "Landroidx/compose/ui/text/input/TextInputService;",
        "platformTextInputService",
        "Landroidx/compose/ui/text/input/PlatformTextInputService;",
        "(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V",
        "isOpen",
        "",
        "()Z",
        "dispose",
        "",
        "ensureOpenSession",
        "block",
        "Lkotlin/Function0;",
        "hideSoftwareKeyboard",
        "notifyFocusedRect",
        "rect",
        "Landroidx/compose/ui/geometry/Rect;",
        "showSoftwareKeyboard",
        "updateState",
        "oldValue",
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "newValue",
        "ui-text_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

.field private final textInputService:Landroidx/compose/ui/text/input/TextInputService;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/PlatformTextInputService;)V
    .locals 1
    .param p1, "textInputService"    # Landroidx/compose/ui/text/input/TextInputService;
    .param p2, "platformTextInputService"    # Landroidx/compose/ui/text/input/PlatformTextInputService;

    const-string v0, "textInputService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformTextInputService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Landroidx/compose/ui/text/input/TextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 111
    iput-object p2, p0, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    .line 109
    return-void
.end method

.method private final ensureOpenSession(Lkotlin/jvm/functions/Function0;)Z
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    .local v0, "$i$f$ensureOpenSession":I
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextInputSession;->isOpen()Z

    move-result v1

    move v2, v1

    .local v2, "applying":Z
    const/4 v3, 0x0

    .line 144
    .local v3, "$i$a$-also-TextInputSession$ensureOpenSession$1":I
    if-eqz v2, :cond_0

    .line 145
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 147
    :cond_0
    nop

    .line 143
    .end local v2    # "applying":Z
    .end local v3    # "$i$a$-also-TextInputSession$ensureOpenSession$1":I
    return v1
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/input/TextInputService;->stopInput(Landroidx/compose/ui/text/input/TextInputSession;)V

    .line 131
    return-void
.end method

.method public final hideSoftwareKeyboard()Z
    .locals 7

    .line 213
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/TextInputSession;
    const/4 v1, 0x0

    .line 287
    .local v1, "$i$f$ensureOpenSession":I
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextInputSession;->isOpen()Z

    move-result v2

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 288
    .local v4, "$i$a$-also-TextInputSession$ensureOpenSession$1$iv":I
    if-eqz v3, :cond_0

    .line 289
    const/4 v5, 0x0

    .line 214
    .local v5, "$i$a$-ensureOpenSession-TextInputSession$hideSoftwareKeyboard$1":I
    iget-object v6, p0, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    invoke-interface {v6}, Landroidx/compose/ui/text/input/PlatformTextInputService;->hideSoftwareKeyboard()V

    .line 215
    nop

    .line 291
    .end local v5    # "$i$a$-ensureOpenSession-TextInputSession$hideSoftwareKeyboard$1":I
    :cond_0
    nop

    .line 287
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-TextInputSession$ensureOpenSession$1$iv":I
    nop

    .line 215
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/TextInputSession;
    .end local v1    # "$i$f$ensureOpenSession":I
    return v2
.end method

.method public final isOpen()Z
    .locals 1

    .line 119
    iget-object v0, p0, Landroidx/compose/ui/text/input/TextInputSession;->textInputService:Landroidx/compose/ui/text/input/TextInputService;

    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextInputService;->getCurrentInputSession$ui_text_release()Landroidx/compose/ui/text/input/TextInputSession;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final notifyFocusedRect(Landroidx/compose/ui/geometry/Rect;)Z
    .locals 7
    .param p1, "rect"    # Landroidx/compose/ui/geometry/Rect;

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/TextInputSession;
    const/4 v1, 0x0

    .line 272
    .local v1, "$i$f$ensureOpenSession":I
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextInputSession;->isOpen()Z

    move-result v2

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 273
    .local v4, "$i$a$-also-TextInputSession$ensureOpenSession$1$iv":I
    if-eqz v3, :cond_0

    .line 274
    const/4 v5, 0x0

    .line 159
    .local v5, "$i$a$-ensureOpenSession-TextInputSession$notifyFocusedRect$1":I
    iget-object v6, p0, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    invoke-interface {v6, p1}, Landroidx/compose/ui/text/input/PlatformTextInputService;->notifyFocusedRect(Landroidx/compose/ui/geometry/Rect;)V

    .line 160
    nop

    .line 276
    .end local v5    # "$i$a$-ensureOpenSession-TextInputSession$notifyFocusedRect$1":I
    :cond_0
    nop

    .line 272
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-TextInputSession$ensureOpenSession$1$iv":I
    nop

    .line 160
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/TextInputSession;
    .end local v1    # "$i$f$ensureOpenSession":I
    return v2
.end method

.method public final showSoftwareKeyboard()Z
    .locals 7

    .line 198
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/TextInputSession;
    const/4 v1, 0x0

    .line 282
    .local v1, "$i$f$ensureOpenSession":I
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextInputSession;->isOpen()Z

    move-result v2

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 283
    .local v4, "$i$a$-also-TextInputSession$ensureOpenSession$1$iv":I
    if-eqz v3, :cond_0

    .line 284
    const/4 v5, 0x0

    .line 199
    .local v5, "$i$a$-ensureOpenSession-TextInputSession$showSoftwareKeyboard$1":I
    iget-object v6, p0, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    invoke-interface {v6}, Landroidx/compose/ui/text/input/PlatformTextInputService;->showSoftwareKeyboard()V

    .line 200
    nop

    .line 286
    .end local v5    # "$i$a$-ensureOpenSession-TextInputSession$showSoftwareKeyboard$1":I
    :cond_0
    nop

    .line 282
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-TextInputSession$ensureOpenSession$1$iv":I
    nop

    .line 200
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/TextInputSession;
    .end local v1    # "$i$f$ensureOpenSession":I
    return v2
.end method

.method public final updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)Z
    .locals 7
    .param p1, "oldValue"    # Landroidx/compose/ui/text/input/TextFieldValue;
    .param p2, "newValue"    # Landroidx/compose/ui/text/input/TextFieldValue;

    const-string v0, "newValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    move-object v0, p0

    .local v0, "this_$iv":Landroidx/compose/ui/text/input/TextInputSession;
    const/4 v1, 0x0

    .line 277
    .local v1, "$i$f$ensureOpenSession":I
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextInputSession;->isOpen()Z

    move-result v2

    move v3, v2

    .local v3, "applying$iv":Z
    const/4 v4, 0x0

    .line 278
    .local v4, "$i$a$-also-TextInputSession$ensureOpenSession$1$iv":I
    if-eqz v3, :cond_0

    .line 279
    const/4 v5, 0x0

    .line 181
    .local v5, "$i$a$-ensureOpenSession-TextInputSession$updateState$1":I
    iget-object v6, p0, Landroidx/compose/ui/text/input/TextInputSession;->platformTextInputService:Landroidx/compose/ui/text/input/PlatformTextInputService;

    invoke-interface {v6, p1, p2}, Landroidx/compose/ui/text/input/PlatformTextInputService;->updateState(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    .line 182
    nop

    .line 281
    .end local v5    # "$i$a$-ensureOpenSession-TextInputSession$updateState$1":I
    :cond_0
    nop

    .line 277
    .end local v3    # "applying$iv":Z
    .end local v4    # "$i$a$-also-TextInputSession$ensureOpenSession$1$iv":I
    nop

    .line 182
    .end local v0    # "this_$iv":Landroidx/compose/ui/text/input/TextInputSession;
    .end local v1    # "$i$f$ensureOpenSession":I
    return v2
.end method
