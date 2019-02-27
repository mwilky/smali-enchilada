.class public abstract Landroid/service/notification/NotificationAssistantService;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationAssistantService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationAssistantService$MyHandler;,
        Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.NotificationAssistantService"

.field private static final TAG:Ljava/lang/String; = "NotificationAssistants"


# instance fields
.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public final adjustNotification(Landroid/service/notification/Adjustment;)V
    .locals 3

    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NotificationAssistants"

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final adjustNotifications(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/Adjustment;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "NotificationAssistants"

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->attachBaseContext(Landroid/content/Context;)V

    new-instance v0, Landroid/service/notification/NotificationAssistantService$MyHandler;

    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationAssistantService$MyHandler;-><init>(Landroid/service/notification/NotificationAssistantService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;-><init>(Landroid/service/notification/NotificationAssistantService;Landroid/service/notification/NotificationAssistantService$1;)V

    iput-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    return-object v0
.end method

.method public abstract onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/Adjustment;
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/service/notification/NotificationStats;I)V
    .locals 0

    invoke-virtual {p0, p1, p2, p4}, Landroid/service/notification/NotificationAssistantService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method public abstract onNotificationSnoozedUntilContext(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
.end method

.method public final unsnoozeNotification(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotificationAssistants"

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
