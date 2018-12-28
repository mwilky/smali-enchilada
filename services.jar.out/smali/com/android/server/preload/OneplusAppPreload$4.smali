.class Lcom/android/server/preload/OneplusAppPreload$4;
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

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$4;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserUnlockReceiver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$4;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload;->access$500(Lcom/android/server/preload/OneplusAppPreload;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$4;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$800(Lcom/android/server/preload/OneplusAppPreload;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$4;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/preload/OneplusAppPreload;->access$902(Lcom/android/server/preload/OneplusAppPreload;Z)Z

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/RestartProcessManager;->getHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "OneplusAppPreload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preload highUsedApps after booting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1200()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$4;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$600(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/preload/OneplusAppPreload$PreloadHighUseTask;

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload$4;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {v2, v3, v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHighUseTask;-><init>(Lcom/android/server/preload/OneplusAppPreload;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1300()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t preload highUsedApps after booting: PolicyEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", PowerSaveMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1100()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
