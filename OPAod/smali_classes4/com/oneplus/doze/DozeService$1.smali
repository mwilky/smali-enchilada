.class Lcom/oneplus/doze/DozeService$1;
.super Lcom/oneplus/doze/DozeService$ProximityCheck;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/doze/DozeService;->requestPulse(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/doze/DozeService;

.field final synthetic val$performedProxCheck:Z

.field final synthetic val$reason:I

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/oneplus/doze/DozeService;JIZ)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/doze/DozeService$1;->this$0:Lcom/oneplus/doze/DozeService;

    iput-wide p2, p0, Lcom/oneplus/doze/DozeService$1;->val$start:J

    iput p4, p0, Lcom/oneplus/doze/DozeService$1;->val$reason:I

    iput-boolean p5, p0, Lcom/oneplus/doze/DozeService$1;->val$performedProxCheck:Z

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/doze/DozeService$ProximityCheck;-><init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService$1;)V

    return-void
.end method


# virtual methods
.method public onProximityResult(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/oneplus/doze/DozeService$1;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v4}, Lcom/oneplus/doze/DozeService;->access$200(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/oneplus/doze/DozeService$1;->val$start:J

    sub-long v5, v2, v5

    iget v7, p0, Lcom/oneplus/doze/DozeService$1;->val$reason:I

    invoke-static {v4, v1, v5, v6, v7}, Lcom/oneplus/doze/DozeLog;->traceProximityResult(Landroid/content/Context;ZJI)V

    iget-boolean v4, p0, Lcom/oneplus/doze/DozeService$1;->val$performedProxCheck:Z

    if-eqz v4, :cond_1

    return-void

    :cond_1
    const-string v4, "DozeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNear = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/oneplus/doze/DozeService$1;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v4, v0}, Lcom/oneplus/doze/DozeService;->access$302(Lcom/oneplus/doze/DozeService;Z)Z

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$1;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$400(Lcom/oneplus/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$1;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$200(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getDisplayViewManager()Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/DisplayViewManager;->resetViewState()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$1;->this$0:Lcom/oneplus/doze/DozeService;

    iget v4, p0, Lcom/oneplus/doze/DozeService$1;->val$reason:I

    invoke-static {v0, v4}, Lcom/oneplus/doze/DozeService;->access$500(Lcom/oneplus/doze/DozeService;I)V

    return-void
.end method
