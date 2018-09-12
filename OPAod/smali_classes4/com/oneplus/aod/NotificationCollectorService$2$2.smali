.class Lcom/oneplus/aod/NotificationCollectorService$2$2;
.super Ljava/lang/Object;
.source "NotificationCollectorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/NotificationCollectorService$2;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/aod/NotificationCollectorService$2;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/NotificationCollectorService$2;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/aod/NotificationCollectorService$2;

    .line 133
    iput-object p1, p0, Lcom/oneplus/aod/NotificationCollectorService$2$2;->this$1:Lcom/oneplus/aod/NotificationCollectorService$2;

    iput-object p2, p0, Lcom/oneplus/aod/NotificationCollectorService$2$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService$2$2;->this$1:Lcom/oneplus/aod/NotificationCollectorService$2;

    iget-object v0, v0, Lcom/oneplus/aod/NotificationCollectorService$2;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationCollectorService;->access$300(Lcom/oneplus/aod/NotificationCollectorService;)Lcom/oneplus/aod/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/NotificationCollectorService$2$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/NotificationManager;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 137
    return-void
.end method
