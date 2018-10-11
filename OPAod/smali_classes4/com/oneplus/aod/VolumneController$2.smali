.class Lcom/oneplus/aod/VolumneController$2;
.super Lcom/oneplus/aod/AodUpdateMonitorCallback;
.source "VolumneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/VolumneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/VolumneController;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/VolumneController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/VolumneController$2;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartDozing()V
    .locals 3

    invoke-super {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStartDozing()V

    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$2;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v0}, Lcom/oneplus/aod/VolumneController;->access$600(Lcom/oneplus/aod/VolumneController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$2;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$800(Lcom/oneplus/aod/VolumneController;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$2;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->access$900(Lcom/oneplus/aod/VolumneController;)Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$2;->this$0:Lcom/oneplus/aod/VolumneController;

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$2;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-virtual {v1}, Lcom/oneplus/aod/VolumneController;->getCurrentMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/aod/VolumneController;->access$402(Lcom/oneplus/aod/VolumneController;I)I

    return-void
.end method

.method public onStopDozing()V
    .locals 2

    invoke-super {p0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStopDozing()V

    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$2;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v0}, Lcom/oneplus/aod/VolumneController;->access$600(Lcom/oneplus/aod/VolumneController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$2;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$800(Lcom/oneplus/aod/VolumneController;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onUserSwitching(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onUserSwitching(I)V

    iget-object v0, p0, Lcom/oneplus/aod/VolumneController$2;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v0, p1}, Lcom/oneplus/aod/VolumneController;->access$700(Lcom/oneplus/aod/VolumneController;I)V

    return-void
.end method
