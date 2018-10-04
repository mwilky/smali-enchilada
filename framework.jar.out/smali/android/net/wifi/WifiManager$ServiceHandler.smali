.class Landroid/net/wifi/WifiManager$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private dispatchMessageToListeners(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->access$400(Landroid/net/wifi/WifiManager;I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_2

    :sswitch_1
    if-eqz v0, :cond_2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/RssiPacketCountInfo;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    iget v3, v1, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    iget v4, v1, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    add-int/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onSuccess(I)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    :goto_0
    goto :goto_2

    :sswitch_2
    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    invoke-interface {v1}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    goto :goto_2

    :sswitch_3
    if-eqz v0, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    goto :goto_2

    :sswitch_4
    const-string v1, "WifiManager"

    const-string v3, "Channel connection lost"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->access$502(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto :goto_2

    :sswitch_5
    goto :goto_2

    :sswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Landroid/net/wifi/WifiManager;->access$500(Landroid/net/wifi/WifiManager;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    const v2, 0x11001

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_1

    :cond_1
    const-string v1, "WifiManager"

    const-string v3, "Failed to set up channel connection"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->access$502(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    :goto_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v1}, Landroid/net/wifi/WifiManager;->access$600(Landroid/net/wifi/WifiManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    nop

    :cond_2
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_6
        0x11002 -> :sswitch_5
        0x11004 -> :sswitch_4
        0x25002 -> :sswitch_3
        0x25003 -> :sswitch_2
        0x25005 -> :sswitch_3
        0x25006 -> :sswitch_2
        0x25008 -> :sswitch_3
        0x25009 -> :sswitch_2
        0x25012 -> :sswitch_3
        0x25013 -> :sswitch_2
        0x25015 -> :sswitch_1
        0x25016 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Landroid/net/wifi/WifiManager;->access$300()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$ServiceHandler;->dispatchMessageToListeners(Landroid/os/Message;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
