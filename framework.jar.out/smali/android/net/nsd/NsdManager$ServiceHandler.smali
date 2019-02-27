.class Landroid/net/nsd/NsdManager$ServiceHandler;
.super Landroid/os/Handler;
.source "NsdManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/nsd/NsdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/nsd/NsdManager;


# direct methods
.method constructor <init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    const v2, 0x11000

    if-eq v0, v2, :cond_3

    const v2, 0x11002

    if-eq v0, v2, :cond_2

    const v2, 0x11004

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2}, Landroid/net/nsd/NsdManager;->access$300(Landroid/net/nsd/NsdManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v3}, Landroid/net/nsd/NsdManager;->access$400(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$500(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/nsd/NsdServiceInfo;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    invoke-static {}, Landroid/net/nsd/NsdManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stale key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Landroid/net/nsd/NsdManager;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignored "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$ResolveListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v2, v5}, Landroid/net/nsd/NsdManager$ResolveListener;->onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$ResolveListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4, v5}, Landroid/net/nsd/NsdManager$ResolveListener;->onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v5}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$RegistrationListener;

    invoke-interface {v2, v4}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceUnregistered(Landroid/net/nsd/NsdServiceInfo;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$RegistrationListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4, v5}, Landroid/net/nsd/NsdManager$RegistrationListener;->onUnregistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto/16 :goto_0

    :pswitch_5
    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$RegistrationListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v2, v5}, Landroid/net/nsd/NsdManager$RegistrationListener;->onServiceRegistered(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$RegistrationListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v4, v5}, Landroid/net/nsd/NsdManager$RegistrationListener;->onRegistrationFailed(Landroid/net/nsd/NsdServiceInfo;I)V

    goto :goto_0

    :pswitch_7
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$600(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStopped(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$600(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v5, v6}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStopDiscoveryFailed(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_9
    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v2, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_0

    :pswitch_a
    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$DiscoveryListener;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-interface {v2, v5}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    goto :goto_0

    :pswitch_b
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2, v1}, Landroid/net/nsd/NsdManager;->access$700(Landroid/net/nsd/NsdManager;I)V

    move-object v2, v3

    check-cast v2, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-static {v4}, Landroid/net/nsd/NsdManager;->access$600(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v5, v6}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onStartDiscoveryFailed(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_c
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/nsd/NsdServiceInfo;

    invoke-static {v2}, Landroid/net/nsd/NsdManager;->access$600(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    check-cast v5, Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-interface {v5, v2}, Landroid/net/nsd/NsdManager$DiscoveryListener;->onDiscoveryStarted(Ljava/lang/String;)V

    nop

    :goto_0
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_1
    invoke-static {}, Landroid/net/nsd/NsdManager;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Channel lost"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2}, Landroid/net/nsd/NsdManager;->access$100(Landroid/net/nsd/NsdManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_3
    iget-object v2, p0, Landroid/net/nsd/NsdManager$ServiceHandler;->this$0:Landroid/net/nsd/NsdManager;

    invoke-static {v2}, Landroid/net/nsd/NsdManager;->access$000(Landroid/net/nsd/NsdManager;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x11001

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x60002
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
