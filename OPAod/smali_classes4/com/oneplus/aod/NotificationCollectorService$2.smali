.class Lcom/oneplus/aod/NotificationCollectorService$2;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationCollectorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/NotificationCollectorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/NotificationCollectorService;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/NotificationCollectorService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 4

    const-string v0, "NotificationCollectorService"

    const-string v1, "onListenerConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationCollectorService;->access$000(Lcom/oneplus/aod/NotificationCollectorService;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NotificationCollectorService"

    const-string v1, "onListenerConnected called but notification listener service was unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationCollectorService$2;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/aod/NotificationCollectorService$2;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v2}, Lcom/oneplus/aod/NotificationCollectorService;->access$300(Lcom/oneplus/aod/NotificationCollectorService;)Lcom/oneplus/aod/NotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/NotificationManager;->resetData()V

    iget-object v2, p0, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v2}, Lcom/oneplus/aod/NotificationCollectorService;->access$500(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oneplus/aod/NotificationCollectorService$2$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/oneplus/aod/NotificationCollectorService$2$1;-><init>(Lcom/oneplus/aod/NotificationCollectorService$2;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onListenerDisconnected()V
    .locals 2

    const-string v0, "NotificationCollectorService"

    const-string v1, "onListenerDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    const-string v0, "NotificationCollectorService"

    const-string v1, "onNotificationPosted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationCollectorService;->access$300(Lcom/oneplus/aod/NotificationCollectorService;)Lcom/oneplus/aod/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/aod/NotificationManager;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :cond_0
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    const-string v0, "NotificationCollectorService"

    const-string v1, "onNotificationRankingUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationCollectorService;->access$500(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/NotificationCollectorService$2$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/NotificationCollectorService$2$2;-><init>(Lcom/oneplus/aod/NotificationCollectorService$2;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    const-string v0, "NotificationCollectorService"

    const-string v1, "onNotificationRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationCollectorService;->access$300(Lcom/oneplus/aod/NotificationCollectorService;)Lcom/oneplus/aod/NotificationManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/oneplus/aod/NotificationManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :cond_0
    return-void
.end method
