.class Lcom/oneplus/aod/NotificationCollectorService$1;
.super Lcom/oneplus/aod/AodUpdateMonitorCallback;
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

    iput-object p1, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamingStateChanged(I)V
    .locals 5

    invoke-super {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onDreamingStateChanged(I)V

    :try_start_0
    sget v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_DOZING:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationCollectorService;->access$000(Lcom/oneplus/aod/NotificationCollectorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationCollectorService;->access$200(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/service/notification/NotificationListenerService;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v1}, Lcom/oneplus/aod/NotificationCollectorService;->access$100(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v3}, Lcom/oneplus/aod/NotificationCollectorService;->access$100(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v4}, Lcom/oneplus/aod/NotificationCollectorService;->access$100(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/aod/NotificationCollectorService;->access$002(Lcom/oneplus/aod/NotificationCollectorService;Z)Z

    goto :goto_0

    :cond_1
    sget v0, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_IDLE:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationCollectorService;->access$200(Lcom/oneplus/aod/NotificationCollectorService;)Landroid/service/notification/NotificationListenerService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    iget-object v0, p0, Lcom/oneplus/aod/NotificationCollectorService$1;->this$0:Lcom/oneplus/aod/NotificationCollectorService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/aod/NotificationCollectorService;->access$002(Lcom/oneplus/aod/NotificationCollectorService;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "NotificationCollectorService"

    const-string v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
