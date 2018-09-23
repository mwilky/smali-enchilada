.class Lcom/android/server/ConnectivityService$6$1;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ConnectivityService$6;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$6$1;->this$1:Lcom/android/server/ConnectivityService$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClick startTethering:, type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$6$1;->this$1:Lcom/android/server/ConnectivityService$6;

    iget v1, v1, Lcom/android/server/ConnectivityService$6;->val$type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ConnectivityService$6$1;->this$1:Lcom/android/server/ConnectivityService$6;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tether_checkbox_not_show_again"

    iget-object v2, p0, Lcom/android/server/ConnectivityService$6$1;->this$1:Lcom/android/server/ConnectivityService$6;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/ConnectivityService$6$1;->this$1:Lcom/android/server/ConnectivityService$6;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$6;->val$mgr:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$6$1;->this$1:Lcom/android/server/ConnectivityService$6;

    iget v1, v1, Lcom/android/server/ConnectivityService$6;->val$type:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setTetherState(IZ)V

    iget-object v0, p0, Lcom/android/server/ConnectivityService$6$1;->this$1:Lcom/android/server/ConnectivityService$6;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$6$1;->this$1:Lcom/android/server/ConnectivityService$6;

    iget v1, v1, Lcom/android/server/ConnectivityService$6;->val$type:I

    iget-object v2, p0, Lcom/android/server/ConnectivityService$6$1;->this$1:Lcom/android/server/ConnectivityService$6;

    iget-object v2, v2, Lcom/android/server/ConnectivityService$6;->val$receiver:Landroid/os/ResultReceiver;

    iget-object v3, p0, Lcom/android/server/ConnectivityService$6$1;->this$1:Lcom/android/server/ConnectivityService$6;

    iget-boolean v3, v3, Lcom/android/server/ConnectivityService$6;->val$showProvisioningUi:Z

    iget-object v4, p0, Lcom/android/server/ConnectivityService$6$1;->this$1:Lcom/android/server/ConnectivityService$6;

    iget-object v4, v4, Lcom/android/server/ConnectivityService$6;->val$callerPkg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/Tethering;->startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ConnectivityService$6$1;->this$1:Lcom/android/server/ConnectivityService$6;

    iget-object v0, v0, Lcom/android/server/ConnectivityService$6;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/ConnectivityService;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method
