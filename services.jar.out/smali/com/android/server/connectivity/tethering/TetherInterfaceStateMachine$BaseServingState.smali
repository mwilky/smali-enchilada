.class Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;
.super Lcom/android/internal/util/State;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseServingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 543
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 546
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$900(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$202(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    .line 548
    return-void

    .line 552
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->tetherInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    nop

    .line 559
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1200(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$600(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v1, "Failed to startIPv6"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 562
    return-void

    .line 564
    :cond_1
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$600(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Tethering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$202(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    .line 556
    return-void
.end method

.method public exit()V
    .locals 4

    .line 571
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1300(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    .line 574
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->untetherInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$202(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    .line 577
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$600(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to untether interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 580
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1400(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    .line 582
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1500(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    .line 583
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .line 587
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V

    .line 588
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 613
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 601
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$800(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/LinkProperties;)V

    .line 602
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    .line 603
    goto :goto_0

    .line 609
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$202(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    .line 610
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1600(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 611
    goto :goto_0

    .line 597
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$700(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 599
    goto :goto_0

    .line 591
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$302(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 593
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1600(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 595
    nop

    .line 615
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x50067
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
