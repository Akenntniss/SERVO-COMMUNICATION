.class public final Landroidx/compose/ui/platform/AndroidComposeView_androidKt;
.super Ljava/lang/Object;
.source "AndroidComposeView.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidComposeView.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidComposeView.android.kt\nandroidx/compose/ui/platform/AndroidComposeView_androidKt\n+ 2 Matrix.kt\nandroidx/compose/ui/graphics/Matrix\n*L\n1#1,1258:1\n42#2,2:1259\n42#2,2:1261\n42#2,2:1263\n42#2,2:1265\n42#2,2:1267\n42#2,2:1269\n42#2,2:1271\n42#2,2:1273\n42#2,2:1275\n42#2,2:1277\n42#2,2:1279\n42#2,2:1281\n42#2,2:1283\n42#2,2:1285\n42#2,2:1287\n42#2,2:1289\n39#2:1291\n39#2:1292\n39#2:1293\n39#2:1294\n39#2:1295\n39#2:1296\n39#2:1297\n39#2:1298\n39#2:1299\n39#2:1300\n39#2:1301\n39#2:1302\n39#2:1303\n39#2:1304\n39#2:1305\n39#2:1306\n39#2:1307\n39#2:1308\n39#2:1309\n39#2:1310\n42#2,2:1311\n42#2,2:1313\n42#2,2:1315\n42#2,2:1317\n42#2,2:1319\n42#2,2:1321\n42#2,2:1323\n42#2,2:1325\n42#2,2:1327\n42#2,2:1329\n42#2,2:1331\n42#2,2:1333\n42#2,2:1335\n42#2,2:1337\n42#2,2:1339\n42#2,2:1341\n*S KotlinDebug\n*F\n+ 1 AndroidComposeView.android.kt\nandroidx/compose/ui/platform/AndroidComposeView_androidKt\n*L\n1173#1:1259,2\n1174#1:1261,2\n1175#1:1263,2\n1176#1:1265,2\n1177#1:1267,2\n1178#1:1269,2\n1179#1:1271,2\n1180#1:1273,2\n1181#1:1275,2\n1182#1:1277,2\n1183#1:1279,2\n1184#1:1281,2\n1185#1:1283,2\n1186#1:1285,2\n1187#1:1287,2\n1188#1:1289,2\n1193#1:1291\n1194#1:1292\n1195#1:1293\n1196#1:1294\n1203#1:1295\n1204#1:1296\n1205#1:1297\n1206#1:1298\n1207#1:1299\n1208#1:1300\n1209#1:1301\n1210#1:1302\n1211#1:1303\n1212#1:1304\n1213#1:1305\n1214#1:1306\n1215#1:1307\n1216#1:1308\n1217#1:1309\n1218#1:1310\n1237#1:1311,2\n1238#1:1313,2\n1239#1:1315,2\n1240#1:1317,2\n1241#1:1319,2\n1242#1:1321,2\n1243#1:1323,2\n1244#1:1325,2\n1245#1:1327,2\n1246#1:1329,2\n1247#1:1331,2\n1248#1:1333,2\n1249#1:1335,2\n1250#1:1337,2\n1251#1:1339,2\n1252#1:1341,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a5\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0014H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u001a\u0010\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0014H\u0002\u001a!\u0010\u001b\u001a\u00020\u001c*\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u0012H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u001a!\u0010 \u001a\u00020\u001c*\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u0012H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008!\u0010\u001f\u001a\u000c\u0010\"\u001a\u00020#*\u00020$H\u0002\"0\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\"\u0018\u0010\n\u001a\u00020\u000b*\u00020\u000c8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006%"
    }
    d2 = {
        "textInputServiceFactory",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/text/input/PlatformTextInputService;",
        "Landroidx/compose/ui/text/input/TextInputService;",
        "getTextInputServiceFactory$annotations",
        "()V",
        "getTextInputServiceFactory",
        "()Lkotlin/jvm/functions/Function1;",
        "setTextInputServiceFactory",
        "(Lkotlin/jvm/functions/Function1;)V",
        "localeLayoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "Landroid/content/res/Configuration;",
        "getLocaleLayoutDirection",
        "(Landroid/content/res/Configuration;)Landroidx/compose/ui/unit/LayoutDirection;",
        "dot",
        "",
        "m1",
        "Landroidx/compose/ui/graphics/Matrix;",
        "row",
        "",
        "m2",
        "column",
        "dot-p89u6pk",
        "([FI[FI)F",
        "layoutDirectionFromInt",
        "layoutDirection",
        "invertTo",
        "",
        "other",
        "invertTo-JiSxe2E",
        "([F[F)V",
        "preTransform",
        "preTransform-JiSxe2E",
        "toRect",
        "Landroid/graphics/Rect;",
        "Landroidx/compose/ui/geometry/Rect;",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static textInputServiceFactory:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/PlatformTextInputService;",
            "+",
            "Landroidx/compose/ui/text/input/TextInputService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1135
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeView_androidKt$textInputServiceFactory$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeView_androidKt$textInputServiceFactory$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    sput-object v0, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->textInputServiceFactory:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$invertTo-JiSxe2E([F[F)V
    .locals 0
    .param p0, "$this$invertTo"    # [F
    .param p1, "other"    # [F

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->invertTo-JiSxe2E([F[F)V

    return-void
.end method

.method public static final synthetic access$layoutDirectionFromInt(I)Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1
    .param p0, "layoutDirection"    # I

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->layoutDirectionFromInt(I)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$preTransform-JiSxe2E([F[F)V
    .locals 0
    .param p0, "$this$preTransform"    # [F
    .param p1, "other"    # [F

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->preTransform-JiSxe2E([F[F)V

    return-void
.end method

.method public static final synthetic access$toRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "$receiver"    # Landroidx/compose/ui/geometry/Rect;

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->toRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static final dot-p89u6pk([FI[FI)F
    .locals 5
    .param p0, "m1"    # [F
    .param p1, "row"    # I
    .param p2, "m2"    # [F
    .param p3, "column"    # I

    .line 1193
    const/4 v0, 0x0

    .local v0, "column$iv":I
    const/4 v1, 0x0

    .line 1291
    .local v1, "$i$f$get-impl":I
    mul-int/lit8 v2, p1, 0x4

    add-int/2addr v2, v0

    aget v0, p0, v2

    .line 1193
    .end local v0    # "column$iv":I
    .end local v1    # "$i$f$get-impl":I
    const/4 v1, 0x0

    .local v1, "row$iv":I
    const/4 v2, 0x0

    .line 1291
    .local v2, "$i$f$get-impl":I
    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v3, p3

    aget v1, p2, v3

    .line 1193
    .end local v1    # "row$iv":I
    .end local v2    # "$i$f$get-impl":I
    mul-float/2addr v0, v1

    .line 1194
    const/4 v1, 0x1

    .local v1, "column$iv":I
    const/4 v2, 0x0

    .line 1292
    .restart local v2    # "$i$f$get-impl":I
    mul-int/lit8 v3, p1, 0x4

    add-int/2addr v3, v1

    aget v1, p0, v3

    .line 1194
    .end local v1    # "column$iv":I
    .end local v2    # "$i$f$get-impl":I
    const/4 v2, 0x1

    .local v2, "row$iv":I
    const/4 v3, 0x0

    .line 1292
    .local v3, "$i$f$get-impl":I
    mul-int/lit8 v4, v2, 0x4

    add-int/2addr v4, p3

    aget v2, p2, v4

    .line 1194
    .end local v2    # "row$iv":I
    .end local v3    # "$i$f$get-impl":I
    mul-float/2addr v1, v2

    .line 1193
    add-float/2addr v0, v1

    .line 1195
    const/4 v1, 0x2

    .restart local v1    # "column$iv":I
    const/4 v2, 0x0

    .line 1293
    .local v2, "$i$f$get-impl":I
    mul-int/lit8 v3, p1, 0x4

    add-int/2addr v3, v1

    aget v1, p0, v3

    .line 1195
    .end local v1    # "column$iv":I
    .end local v2    # "$i$f$get-impl":I
    const/4 v2, 0x2

    .local v2, "row$iv":I
    const/4 v3, 0x0

    .line 1293
    .restart local v3    # "$i$f$get-impl":I
    mul-int/lit8 v4, v2, 0x4

    add-int/2addr v4, p3

    aget v2, p2, v4

    .line 1195
    .end local v2    # "row$iv":I
    .end local v3    # "$i$f$get-impl":I
    mul-float/2addr v1, v2

    .line 1193
    add-float/2addr v0, v1

    .line 1196
    const/4 v1, 0x3

    .restart local v1    # "column$iv":I
    const/4 v2, 0x0

    .line 1294
    .local v2, "$i$f$get-impl":I
    mul-int/lit8 v3, p1, 0x4

    add-int/2addr v3, v1

    aget v1, p0, v3

    .line 1196
    .end local v1    # "column$iv":I
    .end local v2    # "$i$f$get-impl":I
    const/4 v2, 0x3

    .local v2, "row$iv":I
    const/4 v3, 0x0

    .line 1294
    .restart local v3    # "$i$f$get-impl":I
    mul-int/lit8 v4, v2, 0x4

    add-int/2addr v4, p3

    aget v2, p2, v4

    .line 1196
    .end local v2    # "row$iv":I
    .end local v3    # "$i$f$get-impl":I
    mul-float/2addr v1, v2

    .line 1193
    add-float/2addr v0, v1

    return v0
.end method

.method public static final getLocaleLayoutDirection(Landroid/content/res/Configuration;)Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1
    .param p0, "$this$localeLayoutDirection"    # Landroid/content/res/Configuration;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->layoutDirectionFromInt(I)Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public static final getTextInputServiceFactory()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/input/PlatformTextInputService;",
            "Landroidx/compose/ui/text/input/TextInputService;",
            ">;"
        }
    .end annotation

    .line 1134
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->textInputServiceFactory:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static synthetic getTextInputServiceFactory$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/ui/InternalComposeUiApi;
    .end annotation

    return-void
.end method

.method private static final invertTo-JiSxe2E([F[F)V
    .locals 35
    .param p0, "$this$invertTo"    # [F
    .param p1, "other"    # [F

    .line 1203
    const/4 v0, 0x0

    .local v0, "row$iv":I
    const/4 v1, 0x0

    .local v1, "column$iv":I
    const/4 v2, 0x0

    .line 1295
    .local v2, "$i$f$get-impl":I
    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v1

    aget v0, p0, v3

    .line 1203
    .end local v0    # "row$iv":I
    .end local v1    # "column$iv":I
    .end local v2    # "$i$f$get-impl":I
    nop

    .line 1204
    .local v0, "a00":F
    const/4 v1, 0x0

    .local v1, "row$iv":I
    const/4 v2, 0x1

    .local v2, "column$iv":I
    const/4 v3, 0x0

    .line 1296
    .local v3, "$i$f$get-impl":I
    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v2

    aget v1, p0, v4

    .line 1204
    .end local v1    # "row$iv":I
    .end local v2    # "column$iv":I
    .end local v3    # "$i$f$get-impl":I
    nop

    .line 1205
    .local v1, "a01":F
    const/4 v2, 0x0

    .local v2, "row$iv":I
    const/4 v3, 0x2

    .local v3, "column$iv":I
    const/4 v4, 0x0

    .line 1297
    .local v4, "$i$f$get-impl":I
    mul-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v3

    aget v2, p0, v5

    .line 1205
    .end local v2    # "row$iv":I
    .end local v3    # "column$iv":I
    .end local v4    # "$i$f$get-impl":I
    nop

    .line 1206
    .local v2, "a02":F
    const/4 v3, 0x0

    .local v3, "row$iv":I
    const/4 v4, 0x3

    .local v4, "column$iv":I
    const/4 v5, 0x0

    .line 1298
    .local v5, "$i$f$get-impl":I
    mul-int/lit8 v6, v3, 0x4

    add-int/2addr v6, v4

    aget v3, p0, v6

    .line 1206
    .end local v3    # "row$iv":I
    .end local v4    # "column$iv":I
    .end local v5    # "$i$f$get-impl":I
    nop

    .line 1207
    .local v3, "a03":F
    const/4 v4, 0x1

    .local v4, "row$iv":I
    const/4 v5, 0x0

    .local v5, "column$iv":I
    const/4 v6, 0x0

    .line 1299
    .local v6, "$i$f$get-impl":I
    mul-int/lit8 v7, v4, 0x4

    add-int/2addr v7, v5

    aget v4, p0, v7

    .line 1207
    .end local v4    # "row$iv":I
    .end local v5    # "column$iv":I
    .end local v6    # "$i$f$get-impl":I
    nop

    .line 1208
    .local v4, "a10":F
    const/4 v5, 0x1

    .local v5, "row$iv":I
    const/4 v6, 0x1

    .local v6, "column$iv":I
    const/4 v7, 0x0

    .line 1300
    .local v7, "$i$f$get-impl":I
    mul-int/lit8 v8, v5, 0x4

    add-int/2addr v8, v6

    aget v5, p0, v8

    .line 1208
    .end local v5    # "row$iv":I
    .end local v6    # "column$iv":I
    .end local v7    # "$i$f$get-impl":I
    nop

    .line 1209
    .local v5, "a11":F
    const/4 v6, 0x1

    .local v6, "row$iv":I
    const/4 v7, 0x2

    .local v7, "column$iv":I
    const/4 v8, 0x0

    .line 1301
    .local v8, "$i$f$get-impl":I
    mul-int/lit8 v9, v6, 0x4

    add-int/2addr v9, v7

    aget v6, p0, v9

    .line 1209
    .end local v6    # "row$iv":I
    .end local v7    # "column$iv":I
    .end local v8    # "$i$f$get-impl":I
    nop

    .line 1210
    .local v6, "a12":F
    const/4 v7, 0x1

    .local v7, "row$iv":I
    const/4 v8, 0x3

    .local v8, "column$iv":I
    const/4 v9, 0x0

    .line 1302
    .local v9, "$i$f$get-impl":I
    mul-int/lit8 v10, v7, 0x4

    add-int/2addr v10, v8

    aget v7, p0, v10

    .line 1210
    .end local v7    # "row$iv":I
    .end local v8    # "column$iv":I
    .end local v9    # "$i$f$get-impl":I
    nop

    .line 1211
    .local v7, "a13":F
    const/4 v8, 0x2

    .local v8, "row$iv":I
    const/4 v9, 0x0

    .local v9, "column$iv":I
    const/4 v10, 0x0

    .line 1303
    .local v10, "$i$f$get-impl":I
    mul-int/lit8 v11, v8, 0x4

    add-int/2addr v11, v9

    aget v8, p0, v11

    .line 1211
    .end local v8    # "row$iv":I
    .end local v9    # "column$iv":I
    .end local v10    # "$i$f$get-impl":I
    nop

    .line 1212
    .local v8, "a20":F
    const/4 v9, 0x2

    .local v9, "row$iv":I
    const/4 v10, 0x1

    .local v10, "column$iv":I
    const/4 v11, 0x0

    .line 1304
    .local v11, "$i$f$get-impl":I
    mul-int/lit8 v12, v9, 0x4

    add-int/2addr v12, v10

    aget v9, p0, v12

    .line 1212
    .end local v9    # "row$iv":I
    .end local v10    # "column$iv":I
    .end local v11    # "$i$f$get-impl":I
    nop

    .line 1213
    .local v9, "a21":F
    const/4 v10, 0x2

    .local v10, "row$iv":I
    const/4 v11, 0x2

    .local v11, "column$iv":I
    const/4 v12, 0x0

    .line 1305
    .local v12, "$i$f$get-impl":I
    mul-int/lit8 v13, v10, 0x4

    add-int/2addr v13, v11

    aget v10, p0, v13

    .line 1213
    .end local v10    # "row$iv":I
    .end local v11    # "column$iv":I
    .end local v12    # "$i$f$get-impl":I
    nop

    .line 1214
    .local v10, "a22":F
    const/4 v11, 0x2

    .local v11, "row$iv":I
    const/4 v12, 0x3

    .local v12, "column$iv":I
    const/4 v13, 0x0

    .line 1306
    .local v13, "$i$f$get-impl":I
    mul-int/lit8 v14, v11, 0x4

    add-int/2addr v14, v12

    aget v11, p0, v14

    .line 1214
    .end local v11    # "row$iv":I
    .end local v12    # "column$iv":I
    .end local v13    # "$i$f$get-impl":I
    nop

    .line 1215
    .local v11, "a23":F
    const/4 v12, 0x3

    .local v12, "row$iv":I
    const/4 v13, 0x0

    .local v13, "column$iv":I
    const/4 v14, 0x0

    .line 1307
    .local v14, "$i$f$get-impl":I
    mul-int/lit8 v15, v12, 0x4

    add-int/2addr v15, v13

    aget v12, p0, v15

    .line 1215
    .end local v12    # "row$iv":I
    .end local v13    # "column$iv":I
    .end local v14    # "$i$f$get-impl":I
    nop

    .line 1216
    .local v12, "a30":F
    const/4 v13, 0x3

    .local v13, "row$iv":I
    const/4 v14, 0x1

    .local v14, "column$iv":I
    const/4 v15, 0x0

    .line 1308
    .local v15, "$i$f$get-impl":I
    mul-int/lit8 v16, v13, 0x4

    add-int v16, v16, v14

    aget v13, p0, v16

    .line 1216
    .end local v13    # "row$iv":I
    .end local v14    # "column$iv":I
    .end local v15    # "$i$f$get-impl":I
    nop

    .line 1217
    .local v13, "a31":F
    const/4 v14, 0x3

    .local v14, "row$iv":I
    const/4 v15, 0x2

    .local v15, "column$iv":I
    const/16 v16, 0x0

    .line 1309
    .local v16, "$i$f$get-impl":I
    mul-int/lit8 v17, v14, 0x4

    add-int v17, v17, v15

    aget v14, p0, v17

    .line 1217
    .end local v14    # "row$iv":I
    .end local v15    # "column$iv":I
    .end local v16    # "$i$f$get-impl":I
    nop

    .line 1218
    .local v14, "a32":F
    const/4 v15, 0x3

    .local v15, "row$iv":I
    const/16 v16, 0x3

    .local v16, "column$iv":I
    const/16 v17, 0x0

    .line 1310
    .local v17, "$i$f$get-impl":I
    mul-int/lit8 v18, v15, 0x4

    add-int v18, v18, v16

    aget v15, p0, v18

    .line 1218
    .end local v15    # "row$iv":I
    .end local v16    # "column$iv":I
    .end local v17    # "$i$f$get-impl":I
    nop

    .line 1219
    .local v15, "a33":F
    mul-float v16, v0, v5

    mul-float v17, v1, v4

    sub-float v16, v16, v17

    .line 1220
    .local v16, "b00":F
    mul-float v17, v0, v6

    mul-float v18, v2, v4

    sub-float v17, v17, v18

    .line 1221
    .local v17, "b01":F
    mul-float v18, v0, v7

    mul-float v19, v3, v4

    sub-float v18, v18, v19

    .line 1222
    .local v18, "b02":F
    mul-float v19, v1, v6

    mul-float v20, v2, v5

    sub-float v19, v19, v20

    .line 1223
    .local v19, "b03":F
    mul-float v20, v1, v7

    mul-float v21, v3, v5

    sub-float v20, v20, v21

    .line 1224
    .local v20, "b04":F
    mul-float v21, v2, v7

    mul-float v22, v3, v6

    sub-float v21, v21, v22

    .line 1225
    .local v21, "b05":F
    mul-float v22, v8, v13

    mul-float v23, v9, v12

    sub-float v22, v22, v23

    .line 1226
    .local v22, "b06":F
    mul-float v23, v8, v14

    mul-float v24, v10, v12

    sub-float v23, v23, v24

    .line 1227
    .local v23, "b07":F
    mul-float v24, v8, v15

    mul-float v25, v11, v12

    sub-float v24, v24, v25

    .line 1228
    .local v24, "b08":F
    mul-float v25, v9, v14

    mul-float v26, v10, v13

    sub-float v25, v25, v26

    .line 1229
    .local v25, "b09":F
    mul-float v26, v9, v15

    mul-float v27, v11, v13

    sub-float v26, v26, v27

    .line 1230
    .local v26, "b10":F
    mul-float v27, v10, v15

    mul-float v28, v11, v14

    sub-float v27, v27, v28

    .line 1232
    .local v27, "b11":F
    mul-float v28, v16, v27

    mul-float v29, v17, v26

    sub-float v28, v28, v29

    mul-float v29, v18, v25

    add-float v28, v28, v29

    mul-float v29, v19, v24

    add-float v28, v28, v29

    mul-float v29, v20, v23

    sub-float v28, v28, v29

    mul-float v29, v21, v22

    add-float v28, v28, v29

    .line 1231
    nop

    .line 1233
    .local v28, "det":F
    const/16 v29, 0x0

    cmpg-float v29, v28, v29

    if-nez v29, :cond_0

    const/16 v29, 0x1

    goto :goto_0

    :cond_0
    const/16 v29, 0x0

    :goto_0
    if-eqz v29, :cond_1

    .line 1234
    return-void

    .line 1236
    :cond_1
    const/high16 v29, 0x3f800000    # 1.0f

    div-float v29, v29, v28

    .line 1237
    .local v29, "invDet":F
    const/16 v30, 0x0

    .local v30, "row$iv":I
    const/16 v31, 0x0

    .local v31, "column$iv":I
    mul-float v32, v5, v27

    mul-float v33, v6, v26

    sub-float v32, v32, v33

    mul-float v33, v7, v25

    add-float v32, v32, v33

    mul-float v32, v32, v29

    .local v32, "v$iv":F
    const/16 v33, 0x0

    .line 1311
    .local v33, "$i$f$set-impl":I
    mul-int/lit8 v34, v30, 0x4

    add-int v34, v34, v31

    aput v32, p1, v34

    .line 1312
    nop

    .line 1238
    .end local v30    # "row$iv":I
    .end local v31    # "column$iv":I
    .end local v32    # "v$iv":F
    .end local v33    # "$i$f$set-impl":I
    const/16 v30, 0x0

    .restart local v30    # "row$iv":I
    const/16 v31, 0x1

    move/from16 v32, v5

    .end local v5    # "a11":F
    .restart local v31    # "column$iv":I
    .local v32, "a11":F
    neg-float v5, v1

    mul-float v5, v5, v27

    mul-float v33, v2, v26

    add-float v5, v5, v33

    mul-float v33, v3, v25

    sub-float v5, v5, v33

    mul-float v5, v5, v29

    .local v5, "v$iv":F
    const/16 v33, 0x0

    .line 1313
    .restart local v33    # "$i$f$set-impl":I
    mul-int/lit8 v34, v30, 0x4

    add-int v34, v34, v31

    aput v5, p1, v34

    .line 1314
    nop

    .line 1239
    .end local v5    # "v$iv":F
    .end local v30    # "row$iv":I
    .end local v31    # "column$iv":I
    .end local v33    # "$i$f$set-impl":I
    const/4 v5, 0x0

    .local v5, "row$iv":I
    const/16 v30, 0x2

    .local v30, "column$iv":I
    mul-float v31, v13, v21

    mul-float v33, v14, v20

    sub-float v31, v31, v33

    mul-float v33, v15, v19

    add-float v31, v31, v33

    mul-float v31, v31, v29

    .local v31, "v$iv":F
    const/16 v33, 0x0

    .line 1315
    .restart local v33    # "$i$f$set-impl":I
    mul-int/lit8 v34, v5, 0x4

    add-int v34, v34, v30

    aput v31, p1, v34

    .line 1316
    nop

    .line 1240
    .end local v5    # "row$iv":I
    .end local v30    # "column$iv":I
    .end local v31    # "v$iv":F
    .end local v33    # "$i$f$set-impl":I
    const/4 v5, 0x0

    .restart local v5    # "row$iv":I
    const/16 v30, 0x3

    move/from16 v31, v13

    .end local v13    # "a31":F
    .restart local v30    # "column$iv":I
    .local v31, "a31":F
    neg-float v13, v9

    mul-float v13, v13, v21

    mul-float v33, v10, v20

    add-float v13, v13, v33

    mul-float v33, v11, v19

    sub-float v13, v13, v33

    mul-float v13, v13, v29

    .local v13, "v$iv":F
    const/16 v33, 0x0

    .line 1317
    .restart local v33    # "$i$f$set-impl":I
    mul-int/lit8 v34, v5, 0x4

    add-int v34, v34, v30

    aput v13, p1, v34

    .line 1318
    nop

    .line 1241
    .end local v5    # "row$iv":I
    .end local v13    # "v$iv":F
    .end local v30    # "column$iv":I
    .end local v33    # "$i$f$set-impl":I
    const/4 v5, 0x1

    .restart local v5    # "row$iv":I
    const/4 v13, 0x0

    move/from16 v30, v9

    .end local v9    # "a21":F
    .local v13, "column$iv":I
    .local v30, "a21":F
    neg-float v9, v4

    mul-float v9, v9, v27

    mul-float v33, v6, v24

    add-float v9, v9, v33

    mul-float v33, v7, v23

    sub-float v9, v9, v33

    mul-float v9, v9, v29

    .local v9, "v$iv":F
    const/16 v33, 0x0

    .line 1319
    .restart local v33    # "$i$f$set-impl":I
    mul-int/lit8 v34, v5, 0x4

    add-int v34, v34, v13

    aput v9, p1, v34

    .line 1320
    nop

    .line 1242
    .end local v5    # "row$iv":I
    .end local v9    # "v$iv":F
    .end local v13    # "column$iv":I
    .end local v33    # "$i$f$set-impl":I
    const/4 v5, 0x1

    .restart local v5    # "row$iv":I
    const/4 v9, 0x1

    .local v9, "column$iv":I
    mul-float v13, v0, v27

    mul-float v33, v2, v24

    sub-float v13, v13, v33

    mul-float v33, v3, v23

    add-float v13, v13, v33

    mul-float v13, v13, v29

    .local v13, "v$iv":F
    const/16 v33, 0x0

    .line 1321
    .restart local v33    # "$i$f$set-impl":I
    mul-int/lit8 v34, v5, 0x4

    add-int v34, v34, v9

    aput v13, p1, v34

    .line 1322
    nop

    .line 1243
    .end local v5    # "row$iv":I
    .end local v9    # "column$iv":I
    .end local v13    # "v$iv":F
    .end local v33    # "$i$f$set-impl":I
    const/4 v5, 0x1

    .restart local v5    # "row$iv":I
    const/4 v9, 0x2

    .restart local v9    # "column$iv":I
    neg-float v13, v12

    mul-float v13, v13, v21

    mul-float v33, v14, v18

    add-float v13, v13, v33

    mul-float v33, v15, v17

    sub-float v13, v13, v33

    mul-float v13, v13, v29

    .restart local v13    # "v$iv":F
    const/16 v33, 0x0

    .line 1323
    .restart local v33    # "$i$f$set-impl":I
    mul-int/lit8 v34, v5, 0x4

    add-int v34, v34, v9

    aput v13, p1, v34

    .line 1324
    nop

    .line 1244
    .end local v5    # "row$iv":I
    .end local v9    # "column$iv":I
    .end local v13    # "v$iv":F
    .end local v33    # "$i$f$set-impl":I
    const/4 v5, 0x1

    .restart local v5    # "row$iv":I
    const/4 v9, 0x3

    .restart local v9    # "column$iv":I
    mul-float v13, v8, v21

    mul-float v33, v10, v18

    sub-float v13, v13, v33

    mul-float v33, v11, v17

    add-float v13, v13, v33

    mul-float v13, v13, v29

    .restart local v13    # "v$iv":F
    const/16 v33, 0x0

    .line 1325
    .restart local v33    # "$i$f$set-impl":I
    mul-int/lit8 v34, v5, 0x4

    add-int v34, v34, v9

    aput v13, p1, v34

    .line 1326
    nop

    .line 1245
    .end local v5    # "row$iv":I
    .end local v9    # "column$iv":I
    .end local v13    # "v$iv":F
    .end local v33    # "$i$f$set-impl":I
    const/4 v5, 0x2

    .restart local v5    # "row$iv":I
    const/4 v9, 0x0

    .restart local v9    # "column$iv":I
    mul-float v13, v4, v26

    mul-float v33, v32, v24

    sub-float v13, v13, v33

    mul-float v33, v7, v22

    add-float v13, v13, v33

    mul-float v13, v13, v29

    .restart local v13    # "v$iv":F
    const/16 v33, 0x0

    .line 1327
    .restart local v33    # "$i$f$set-impl":I
    mul-int/lit8 v34, v5, 0x4

    add-int v34, v34, v9

    aput v13, p1, v34

    .line 1328
    nop

    .line 1246
    .end local v5    # "row$iv":I
    .end local v9    # "column$iv":I
    .end local v13    # "v$iv":F
    .end local v33    # "$i$f$set-impl":I
    const/4 v5, 0x2

    .restart local v5    # "row$iv":I
    const/4 v9, 0x1

    .restart local v9    # "column$iv":I
    neg-float v13, v0

    mul-float v13, v13, v26

    mul-float v33, v1, v24

    add-float v13, v13, v33

    mul-float v33, v3, v22

    sub-float v13, v13, v33

    mul-float v13, v13, v29

    .restart local v13    # "v$iv":F
    const/16 v33, 0x0

    .line 1329
    .restart local v33    # "$i$f$set-impl":I
    mul-int/lit8 v34, v5, 0x4

    add-int v34, v34, v9

    aput v13, p1, v34

    .line 1330
    nop

    .line 1247
    .end local v5    # "row$iv":I
    .end local v9    # "column$iv":I
    .end local v13    # "v$iv":F
    .end local v33    # "$i$f$set-impl":I
    const/4 v5, 0x2

    .restart local v5    # "row$iv":I
    const/4 v9, 0x2

    .restart local v9    # "column$iv":I
    mul-float v13, v12, v20

    mul-float v33, v31, v18

    sub-float v13, v13, v33

    mul-float v33, v15, v16

    add-float v13, v13, v33

    mul-float v13, v13, v29

    .restart local v13    # "v$iv":F
    const/16 v33, 0x0

    .line 1331
    .restart local v33    # "$i$f$set-impl":I
    mul-int/lit8 v34, v5, 0x4

    add-int v34, v34, v9

    aput v13, p1, v34

    .line 1332
    nop

    .line 1248
    .end local v5    # "row$iv":I
    .end local v9    # "column$iv":I
    .end local v13    # "v$iv":F
    .end local v33    # "$i$f$set-impl":I
    const/4 v5, 0x2

    .restart local v5    # "row$iv":I
    const/4 v9, 0x3

    .restart local v9    # "column$iv":I
    neg-float v13, v8

    mul-float v13, v13, v20

    mul-float v33, v30, v18

    add-float v13, v13, v33

    mul-float v33, v11, v16

    sub-float v13, v13, v33

    mul-float v13, v13, v29

    .restart local v13    # "v$iv":F
    const/16 v33, 0x0

    .line 1333
    .restart local v33    # "$i$f$set-impl":I
    mul-int/lit8 v34, v5, 0x4

    add-int v34, v34, v9

    aput v13, p1, v34

    .line 1334
    nop

    .line 1249
    .end local v5    # "row$iv":I
    .end local v9    # "column$iv":I
    .end local v13    # "v$iv":F
    .end local v33    # "$i$f$set-impl":I
    const/4 v5, 0x3

    .restart local v5    # "row$iv":I
    const/4 v9, 0x0

    .restart local v9    # "column$iv":I
    neg-float v13, v4

    mul-float v13, v13, v25

    mul-float v33, v32, v23

    add-float v13, v13, v33

    mul-float v33, v6, v22

    sub-float v13, v13, v33

    mul-float v13, v13, v29

    .restart local v13    # "v$iv":F
    const/16 v33, 0x0

    .line 1335
    .restart local v33    # "$i$f$set-impl":I
    mul-int/lit8 v34, v5, 0x4

    add-int v34, v34, v9

    aput v13, p1, v34

    .line 1336
    nop

    .line 1250
    .end local v5    # "row$iv":I
    .end local v9    # "column$iv":I
    .end local v13    # "v$iv":F
    .end local v33    # "$i$f$set-impl":I
    const/4 v5, 0x3

    .restart local v5    # "row$iv":I
    const/4 v9, 0x1

    .restart local v9    # "column$iv":I
    mul-float v13, v0, v25

    mul-float v33, v1, v23

    sub-float v13, v13, v33

    mul-float v33, v2, v22

    add-float v13, v13, v33

    mul-float v13, v13, v29

    .restart local v13    # "v$iv":F
    const/16 v33, 0x0

    .line 1337
    .restart local v33    # "$i$f$set-impl":I
    mul-int/lit8 v34, v5, 0x4

    add-int v34, v34, v9

    aput v13, p1, v34

    .line 1338
    nop

    .line 1251
    .end local v5    # "row$iv":I
    .end local v9    # "column$iv":I
    .end local v13    # "v$iv":F
    .end local v33    # "$i$f$set-impl":I
    const/4 v5, 0x3

    .restart local v5    # "row$iv":I
    const/4 v9, 0x2

    .restart local v9    # "column$iv":I
    neg-float v13, v12

    mul-float v13, v13, v19

    mul-float v33, v31, v17

    add-float v13, v13, v33

    mul-float v33, v14, v16

    sub-float v13, v13, v33

    mul-float v13, v13, v29

    .restart local v13    # "v$iv":F
    const/16 v33, 0x0

    .line 1339
    .restart local v33    # "$i$f$set-impl":I
    mul-int/lit8 v34, v5, 0x4

    add-int v34, v34, v9

    aput v13, p1, v34

    .line 1340
    nop

    .line 1252
    .end local v5    # "row$iv":I
    .end local v9    # "column$iv":I
    .end local v13    # "v$iv":F
    .end local v33    # "$i$f$set-impl":I
    const/4 v5, 0x3

    .restart local v5    # "row$iv":I
    const/4 v9, 0x3

    .restart local v9    # "column$iv":I
    mul-float v13, v8, v19

    mul-float v33, v30, v17

    sub-float v13, v13, v33

    mul-float v33, v10, v16

    add-float v13, v13, v33

    mul-float v13, v13, v29

    .restart local v13    # "v$iv":F
    const/16 v33, 0x0

    .line 1341
    .restart local v33    # "$i$f$set-impl":I
    mul-int/lit8 v34, v5, 0x4

    add-int v34, v34, v9

    aput v13, p1, v34

    .line 1342
    nop

    .line 1253
    .end local v5    # "row$iv":I
    .end local v9    # "column$iv":I
    .end local v13    # "v$iv":F
    .end local v33    # "$i$f$set-impl":I
    return-void
.end method

.method private static final layoutDirectionFromInt(I)Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1
    .param p0, "layoutDirection"    # I

    .line 1125
    packed-switch p0, :pswitch_data_0

    .line 1128
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    goto :goto_0

    .line 1127
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    goto :goto_0

    .line 1126
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 1129
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final preTransform-JiSxe2E([F[F)V
    .locals 22
    .param p0, "$this$preTransform"    # [F
    .param p1, "other"    # [F

    .line 1157
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v3

    .line 1158
    .local v3, "v00":F
    const/4 v4, 0x1

    invoke-static {v1, v2, v0, v4}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v5

    .line 1159
    .local v5, "v01":F
    const/4 v6, 0x2

    invoke-static {v1, v2, v0, v6}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v7

    .line 1160
    .local v7, "v02":F
    const/4 v8, 0x3

    invoke-static {v1, v2, v0, v8}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v9

    .line 1161
    .local v9, "v03":F
    invoke-static {v1, v4, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v10

    .line 1162
    .local v10, "v10":F
    invoke-static {v1, v4, v0, v4}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v11

    .line 1163
    .local v11, "v11":F
    invoke-static {v1, v4, v0, v6}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v12

    .line 1164
    .local v12, "v12":F
    invoke-static {v1, v4, v0, v8}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v13

    .line 1165
    .local v13, "v13":F
    invoke-static {v1, v6, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v14

    .line 1166
    .local v14, "v20":F
    invoke-static {v1, v6, v0, v4}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v15

    .line 1167
    .local v15, "v21":F
    invoke-static {v1, v6, v0, v6}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v16

    .line 1168
    .local v16, "v22":F
    invoke-static {v1, v6, v0, v8}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v17

    .line 1169
    .local v17, "v23":F
    invoke-static {v1, v8, v0, v2}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v2

    .line 1170
    .local v2, "v30":F
    invoke-static {v1, v8, v0, v4}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v4

    .line 1171
    .local v4, "v31":F
    invoke-static {v1, v8, v0, v6}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v6

    .line 1172
    .local v6, "v32":F
    invoke-static {v1, v8, v0, v8}, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->dot-p89u6pk([FI[FI)F

    move-result v8

    .line 1173
    .local v8, "v33":F
    const/16 v18, 0x0

    .local v18, "row$iv":I
    const/16 v19, 0x0

    .local v19, "column$iv":I
    const/16 v20, 0x0

    .line 1259
    .local v20, "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v3, v0, v21

    .line 1260
    nop

    .line 1174
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    const/16 v18, 0x0

    .restart local v18    # "row$iv":I
    const/16 v19, 0x1

    .restart local v19    # "column$iv":I
    const/16 v20, 0x0

    .line 1261
    .restart local v20    # "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v5, v0, v21

    .line 1262
    nop

    .line 1175
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    const/16 v18, 0x0

    .restart local v18    # "row$iv":I
    const/16 v19, 0x2

    .restart local v19    # "column$iv":I
    const/16 v20, 0x0

    .line 1263
    .restart local v20    # "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v7, v0, v21

    .line 1264
    nop

    .line 1176
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    const/16 v18, 0x0

    .restart local v18    # "row$iv":I
    const/16 v19, 0x3

    .restart local v19    # "column$iv":I
    const/16 v20, 0x0

    .line 1265
    .restart local v20    # "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v9, v0, v21

    .line 1266
    nop

    .line 1177
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    const/16 v18, 0x1

    .restart local v18    # "row$iv":I
    const/16 v19, 0x0

    .restart local v19    # "column$iv":I
    const/16 v20, 0x0

    .line 1267
    .restart local v20    # "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v10, v0, v21

    .line 1268
    nop

    .line 1178
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    const/16 v18, 0x1

    .restart local v18    # "row$iv":I
    const/16 v19, 0x1

    .restart local v19    # "column$iv":I
    const/16 v20, 0x0

    .line 1269
    .restart local v20    # "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v11, v0, v21

    .line 1270
    nop

    .line 1179
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    const/16 v18, 0x1

    .restart local v18    # "row$iv":I
    const/16 v19, 0x2

    .restart local v19    # "column$iv":I
    const/16 v20, 0x0

    .line 1271
    .restart local v20    # "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v12, v0, v21

    .line 1272
    nop

    .line 1180
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    const/16 v18, 0x1

    .restart local v18    # "row$iv":I
    const/16 v19, 0x3

    .restart local v19    # "column$iv":I
    const/16 v20, 0x0

    .line 1273
    .restart local v20    # "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v13, v0, v21

    .line 1274
    nop

    .line 1181
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    const/16 v18, 0x2

    .restart local v18    # "row$iv":I
    const/16 v19, 0x0

    .restart local v19    # "column$iv":I
    const/16 v20, 0x0

    .line 1275
    .restart local v20    # "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v14, v0, v21

    .line 1276
    nop

    .line 1182
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    const/16 v18, 0x2

    .restart local v18    # "row$iv":I
    const/16 v19, 0x1

    .restart local v19    # "column$iv":I
    const/16 v20, 0x0

    .line 1277
    .restart local v20    # "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v15, v0, v21

    .line 1278
    nop

    .line 1183
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    const/16 v18, 0x2

    .restart local v18    # "row$iv":I
    const/16 v19, 0x2

    .restart local v19    # "column$iv":I
    const/16 v20, 0x0

    .line 1279
    .restart local v20    # "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v16, v0, v21

    .line 1280
    nop

    .line 1184
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    const/16 v18, 0x2

    .restart local v18    # "row$iv":I
    const/16 v19, 0x3

    .restart local v19    # "column$iv":I
    const/16 v20, 0x0

    .line 1281
    .restart local v20    # "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v17, v0, v21

    .line 1282
    nop

    .line 1185
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    const/16 v18, 0x3

    .restart local v18    # "row$iv":I
    const/16 v19, 0x0

    .restart local v19    # "column$iv":I
    const/16 v20, 0x0

    .line 1283
    .restart local v20    # "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v2, v0, v21

    .line 1284
    nop

    .line 1186
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    const/16 v18, 0x3

    .restart local v18    # "row$iv":I
    const/16 v19, 0x1

    .restart local v19    # "column$iv":I
    const/16 v20, 0x0

    .line 1285
    .restart local v20    # "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v4, v0, v21

    .line 1286
    nop

    .line 1187
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    const/16 v18, 0x3

    .restart local v18    # "row$iv":I
    const/16 v19, 0x2

    .restart local v19    # "column$iv":I
    const/16 v20, 0x0

    .line 1287
    .restart local v20    # "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v6, v0, v21

    .line 1288
    nop

    .line 1188
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    const/16 v18, 0x3

    .restart local v18    # "row$iv":I
    const/16 v19, 0x3

    .restart local v19    # "column$iv":I
    const/16 v20, 0x0

    .line 1289
    .restart local v20    # "$i$f$set-impl":I
    mul-int/lit8 v21, v18, 0x4

    add-int v21, v21, v19

    aput v8, v0, v21

    .line 1290
    nop

    .line 1189
    .end local v18    # "row$iv":I
    .end local v19    # "column$iv":I
    .end local v20    # "$i$f$set-impl":I
    return-void
.end method

.method public static final setTextInputServiceFactory(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/input/PlatformTextInputService;",
            "+",
            "Landroidx/compose/ui/text/input/TextInputService;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    sput-object p0, Landroidx/compose/ui/platform/AndroidComposeView_androidKt;->textInputServiceFactory:Lkotlin/jvm/functions/Function1;

    .line 1135
    return-void
.end method

.method private static final toRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "$this$toRect"    # Landroidx/compose/ui/geometry/Rect;

    .line 1256
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method
