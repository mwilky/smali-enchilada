.class Lcom/android/server/net/NetworkPolicyManagerService$20;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 4817
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 4820
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 4943
    :pswitch_0
    return v1

    .line 4937
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 4938
    .local v0, "template":Landroid/net/NetworkTemplate;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 4939
    .local v1, "enabled":Z
    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4500(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V

    .line 4940
    return v2

    .line 4931
    .end local v0    # "template":Landroid/net/NetworkTemplate;
    .end local v1    # "enabled":Z
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4932
    .local v0, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    .line 4933
    .local v1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4400(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V

    .line 4934
    return v2

    .line 4919
    .end local v0    # "userId":I
    .end local v1    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4920
    .local v0, "overrideMask":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 4921
    .local v3, "overrideValue":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4922
    .local v4, "subId":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 4923
    .local v5, "length":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 4924
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    .line 4925
    .local v6, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v6, v4, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4300(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V

    .line 4923
    .end local v6    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4927
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4928
    return v2

    .line 4915
    .end local v0    # "overrideMask":I
    .end local v3    # "overrideValue":I
    .end local v4    # "subId":I
    .end local v5    # "length":I
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4200(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 4916
    return v2

    .line 4872
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4873
    .local v0, "uid":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 4874
    .local v3, "policy":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    .line 4876
    .local v4, "notifyApp":Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 4877
    .restart local v5    # "length":I
    nop

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 4878
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    .line 4879
    .restart local v6    # "listener":Landroid/net/INetworkPolicyListener;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v7, v6, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3700(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 4877
    .end local v6    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4881
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4883
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4884
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3800(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V

    .line 4886
    :cond_3
    return v2

    .line 4911
    .end local v0    # "uid":I
    .end local v3    # "policy":I
    .end local v4    # "notifyApp":Ljava/lang/Boolean;
    .end local v5    # "length":I
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4000(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 4912
    return v2

    .line 4904
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4000(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 4906
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    iget v5, p1, Landroid/os/Message;->arg2:I

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4100(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    .line 4908
    return v2

    .line 4899
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3900(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 4900
    return v2

    .line 4889
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4892
    .local v0, "lowestRule":J
    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    .line 4893
    .local v3, "persistThreshold":J
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3500(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/server/net/NetworkStatsManagerInternal;->advisePersistThreshold(J)V

    .line 4894
    return v2

    .line 4858
    .end local v0    # "lowestRule":J
    .end local v3    # "persistThreshold":J
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    .line 4859
    .local v0, "restrictBackground":Z
    :goto_2
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 4860
    .local v3, "length":I
    nop

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v3, :cond_5

    .line 4861
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 4862
    .local v4, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5, v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    .line 4860
    .end local v4    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4864
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4865
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4867
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4868
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4869
    return v2

    .line 4843
    .end local v0    # "restrictBackground":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "length":I
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4845
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4846
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4849
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3500(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsManagerInternal;->forceUpdate()V

    .line 4851
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 4852
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 4854
    :cond_6
    monitor-exit v3

    .line 4855
    return v2

    .line 4854
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4833
    .end local v0    # "iface":Ljava/lang/String;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 4834
    .local v0, "meteredIfaces":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 4835
    .restart local v3    # "length":I
    nop

    .local v1, "i":I
    :goto_4
    if-ge v1, v3, :cond_7

    .line 4836
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 4837
    .restart local v4    # "listener":Landroid/net/INetworkPolicyListener;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5, v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3300(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    .line 4835
    .end local v4    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4839
    .end local v1    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4840
    return v2

    .line 4822
    .end local v0    # "meteredIfaces":[Ljava/lang/String;
    .end local v3    # "length":I
    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4823
    .local v0, "uid":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 4824
    .local v3, "uidRules":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 4825
    .local v4, "length":I
    nop

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v4, :cond_8

    .line 4826
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 4827
    .local v5, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v6, v5, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 4825
    .end local v5    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4829
    .end local v1    # "i":I
    :cond_8
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4830
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
