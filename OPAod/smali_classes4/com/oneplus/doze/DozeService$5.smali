.class Lcom/oneplus/doze/DozeService$5;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Lcom/oneplus/doze/DozeHost$Callback;


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
    .param p1, "this$0"    # Lcom/oneplus/doze/DozeService;

    .line 579
    iput-object p1, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlwaysDisplayOn()V
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1000(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAlwaysDisplayOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/oneplus/doze/DozeService;->access$1100(Lcom/oneplus/doze/DozeService;I)V

    .line 609
    return-void
.end method

.method public onEnterDisplayPeriod(Z)V
    .locals 3
    .param p1, "enter"    # Z

    .line 620
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1000(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnterDisplayPeriod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2000(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$PickupCheck;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$2000(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$PickupCheck;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/doze/DozeService$PickupCheck;->setListening(Z)V

    .line 624
    :cond_0
    return-void
.end method

.method public onNewNotifications()V
    .locals 3

    .line 582
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1000(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewNotifications (noop): power saving="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v2}, Lcom/oneplus/doze/DozeService;->access$1400(Lcom/oneplus/doze/DozeService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1400(Lcom/oneplus/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1500(Lcom/oneplus/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1600(Lcom/oneplus/doze/DozeService;)V

    .line 588
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 3
    .param p1, "active"    # Z

    .line 597
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0, p1}, Lcom/oneplus/doze/DozeService;->access$1402(Lcom/oneplus/doze/DozeService;Z)Z

    .line 598
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1000(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPowerSaveChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v2}, Lcom/oneplus/doze/DozeService;->access$1400(Lcom/oneplus/doze/DozeService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v2}, Lcom/oneplus/doze/DozeService;->access$600(Lcom/oneplus/doze/DozeService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1400(Lcom/oneplus/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$600(Lcom/oneplus/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1500(Lcom/oneplus/doze/DozeService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1800(Lcom/oneplus/doze/DozeService;)V

    .line 602
    :cond_0
    return-void
.end method

.method public onThreeKeyChanged()V
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1700(Lcom/oneplus/doze/DozeService;)V

    .line 593
    return-void
.end method

.method public onTriggerDetectLight()V
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1000(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTriggerDetectLight"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$5;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->access$1900(Lcom/oneplus/doze/DozeService;)V

    .line 615
    return-void
.end method
