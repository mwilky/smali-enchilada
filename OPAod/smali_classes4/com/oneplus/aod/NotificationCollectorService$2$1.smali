.class Lcom/oneplus/aod/NotificationCollectorService$2$1;
.super Ljava/lang/Object;
.source "NotificationCollectorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/NotificationCollectorService$2;->onListenerConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/NotificationCollectorService$2;

.field final synthetic val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$notifications:[Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/NotificationCollectorService$2;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/aod/NotificationCollectorService$2;

    .line 107
    iput-object p1, p0, Lcom/oneplus/aod/NotificationCollectorService$2$1;->this$1:Lcom/oneplus/aod/NotificationCollectorService$2;

    iput-object p2, p0, Lcom/oneplus/aod/NotificationCollectorService$2$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/oneplus/aod/NotificationCollectorService$2$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 110
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService$2$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 112
    .local v3, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v4, p0, Lcom/oneplus/aod/NotificationCollectorService$2$1;->this$1:Lcom/oneplus/aod/NotificationCollectorService$2;

    iget-object v4, v4, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v4}, Lcom/oneplus/aod/NotificationCollectorService;->access$400(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    const-string v0, "NotificationCollectorService"

    const-string v1, "stop updating notification, since device is already interactive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 118
    :cond_0
    iget-object v4, p0, Lcom/oneplus/aod/NotificationCollectorService$2$1;->this$1:Lcom/oneplus/aod/NotificationCollectorService$2;

    iget-object v4, v4, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v4}, Lcom/oneplus/aod/NotificationCollectorService;->access$300(Lcom/oneplus/aod/NotificationCollectorService;)Lcom/oneplus/aod/NotificationManager;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/aod/NotificationCollectorService$2$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/oneplus/aod/NotificationManager;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/oneplus/aod/NotificationData$Entry;)V

    .line 110
    .end local v3    # "sbn":Landroid/service/notification/StatusBarNotification;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    return-void
.end method
