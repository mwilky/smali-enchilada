.class Lcom/android/server/preload/OneplusAppPreload$5;
.super Landroid/content/BroadcastReceiver;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/preload/OneplusAppPreload;


# direct methods
.method constructor <init>(Lcom/android/server/preload/OneplusAppPreload;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$5;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerSaveModeReceiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$5;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload;->access$1400(Lcom/android/server/preload/OneplusAppPreload;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1100()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$1102(Z)Z

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$5;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$400(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$5;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload;->access$1500(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->unregisterConnorConfCallback(Lcom/android/server/am/Connor$ConfCallbacks;)V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$5;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$600(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->stopPreload()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$1102(Z)Z

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$5;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$400(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$5;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload;->access$1500(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;

    move-result-object v2

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1600()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerConnorConfCallback(Lcom/android/server/am/Connor$ConfCallbacks;F)V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$5;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$600(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->startPreload()V

    :cond_1
    :goto_0
    const-string v1, "OneplusAppPreload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerSaveMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1100()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
