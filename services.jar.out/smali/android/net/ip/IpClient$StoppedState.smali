.class Landroid/net/ip/IpClient$StoppedState;
.super Lcom/android/internal/util/State;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpClient;


# direct methods
.method constructor <init>(Landroid/net/ip/IpClient;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$500(Landroid/net/ip/IpClient;)V

    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$600(Landroid/net/ip/IpClient;)V

    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$700(Landroid/net/ip/IpClient;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$800(Landroid/net/ip/IpClient;I)V

    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0, v2, v3}, Landroid/net/ip/IpClient;->access$702(Landroid/net/ip/IpClient;J)J

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x30005

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    return v2

    :pswitch_0
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1502(Landroid/net/ip/IpClient;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ProxyInfo;

    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1402(Landroid/net/ip/IpClient;Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$1200(Landroid/net/ip/IpClient;Z)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1302(Landroid/net/ip/IpClient;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$1200(Landroid/net/ip/IpClient;Z)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0, v2}, Landroid/net/ip/IpClient;->access$1200(Landroid/net/ip/IpClient;Z)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ip/IpClient$ProvisioningConfiguration;

    invoke-static {v0, v1}, Landroid/net/ip/IpClient;->access$1002(Landroid/net/ip/IpClient;Landroid/net/ip/IpClient$ProvisioningConfiguration;)Landroid/net/ip/IpClient$ProvisioningConfiguration;

    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v1}, Landroid/net/ip/IpClient;->access$1100(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    :pswitch_5
    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$900(Landroid/net/ip/IpClient;)V

    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v0}, Landroid/net/ip/IpClient;->quit()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    const-string v1, "Unexpected CMD_ON_QUIT (already stopped)."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/net/ip/IpClient;->access$1600(Landroid/net/ip/IpClient;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    :goto_0
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1700(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$MessageHandlingLogger;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpClient$StoppedState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v1}, Landroid/net/ip/IpClient;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/net/ip/IpClient$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
