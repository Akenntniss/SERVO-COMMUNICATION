.class Landroidx/work/impl/foreground/SystemForegroundService$Api31Impl;
.super Ljava/lang/Object;
.source "SystemForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/foreground/SystemForegroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api31Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    return-void
.end method

.method static startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V
    .locals 4
    .param p0, "service"    # Landroid/app/Service;
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "foregroundServiceType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "service",
            "id",
            "notification",
            "foregroundServiceType"
        }
    .end annotation

    .line 193
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V
    :try_end_0
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 198
    .local v0, "exception":Landroid/app/ForegroundServiceStartNotAllowedException;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    invoke-static {}, Landroidx/work/impl/foreground/SystemForegroundService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to start foreground service"

    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    .end local v0    # "exception":Landroid/app/ForegroundServiceStartNotAllowedException;
    :goto_0
    return-void
.end method
