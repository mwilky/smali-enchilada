.class Lcom/oneplus/server/OIMCService$3;
.super Landroid/content/BroadcastReceiver;
.source "OIMCService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OIMCService;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/OIMCService$3;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    :try_start_0
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " user = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x392cb822

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v1

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/oneplus/server/OIMCService$3;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v2, v2, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xce

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/server/OIMCService$3;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v2, v2, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Lcom/oneplus/server/OIMCService$3;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v2, v2, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/server/OIMCService$3$1;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/server/OIMCService$3$1;-><init>(Lcom/oneplus/server/OIMCService$3;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "error when handling user switch"

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
