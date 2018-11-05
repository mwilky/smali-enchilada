.class Lcom/oneplus/aod/AodUpdateMonitor$4;
.super Landroid/content/BroadcastReceiver;
.source "AodUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/AodUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$4;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$4;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3900(Lcom/oneplus/aod/AodUpdateMonitor;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$4;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$2100(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$4;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$700(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v1

    sget v2, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_IDLE:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$4;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$900(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/DisplayViewManager;->resetMainViewPosition()V

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$4;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$4000(Lcom/oneplus/aod/AodUpdateMonitor;)V

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$4;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->access$3000(Lcom/oneplus/aod/AodUpdateMonitor;Z)V

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$4;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$800(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$4;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->access$4100(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->fireDetectLight()V

    :cond_1
    :goto_0
    return-void
.end method
