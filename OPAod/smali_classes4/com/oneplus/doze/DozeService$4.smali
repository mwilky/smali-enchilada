.class Lcom/oneplus/doze/DozeService$4;
.super Landroid/content/BroadcastReceiver;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/oneplus/doze/DozeService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/doze/DozeService$4;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.oneplus.aod.doze.pulse"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$4;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1400(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received pulse intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$4;->this$0:Lcom/oneplus/doze/DozeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/doze/DozeService;->access$1500(Lcom/oneplus/doze/DozeService;I)V

    :cond_0
    sget-object v0, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$4;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1400(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received UIMode intent "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$4;->this$0:Lcom/oneplus/doze/DozeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/doze/DozeService;->access$1602(Lcom/oneplus/doze/DozeService;Z)Z

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$4;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1600(Lcom/oneplus/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$4;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1000(Lcom/oneplus/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$4;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1700(Lcom/oneplus/doze/DozeService;)V

    :cond_1
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method
