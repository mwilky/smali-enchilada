.class Lcom/android/server/am/Connor$6;
.super Landroid/content/BroadcastReceiver;
.source "Connor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Connor;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Connor;


# direct methods
.method constructor <init>(Lcom/android/server/am/Connor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/am/Connor;->access$1600(Lcom/android/server/am/Connor;Z)V

    iget-object v1, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    invoke-virtual {v1, v2}, Lcom/android/server/am/Connor;->setTraining(Z)V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    invoke-virtual {v1, v2}, Lcom/android/server/am/Connor;->setTraining(Z)V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v1, v2}, Lcom/android/server/am/Connor;->access$1600(Lcom/android/server/am/Connor;Z)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x15be

    if-ne v1, v3, :cond_4

    iget-object v2, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$1100(Lcom/android/server/am/Connor;)V

    invoke-static {}, Lcom/android/server/am/Connor;->access$1700()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/server/am/Connor;->access$1800()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v3}, Lcom/android/server/am/Connor;->access$1900(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    const/16 v3, 0x1e6c

    if-ne v1, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    invoke-virtual {v3, v2}, Lcom/android/server/am/Connor;->setTraining(Z)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/Connor$6;->this$0:Lcom/android/server/am/Connor;

    invoke-static {v2}, Lcom/android/server/am/Connor;->access$2000(Lcom/android/server/am/Connor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Connor"

    const-string v4, "got exception while apply"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method
