.class Landroid/bluetooth/BluetoothBATransmitter$2;
.super Ljava/lang/Object;
.source "BluetoothBATransmitter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothBATransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothBATransmitter;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothBATransmitter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothBATransmitter;

    .line 481
    iput-object p1, p0, Landroid/bluetooth/BluetoothBATransmitter$2;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 483
    const-string v0, "BluetoothBAT"

    const-string v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$2;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$000(Landroid/bluetooth/BluetoothBATransmitter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 486
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$2;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothBATransmitter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothBATransmitter;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothBATransmitter;->access$102(Landroid/bluetooth/BluetoothBATransmitter;Landroid/bluetooth/IBluetoothBATransmitter;)Landroid/bluetooth/IBluetoothBATransmitter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$2;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$000(Landroid/bluetooth/BluetoothBATransmitter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 489
    nop

    .line 491
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$2;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$400(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$2;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$400(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x17

    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter$2;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 495
    :cond_0
    return-void

    .line 488
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter$2;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothBATransmitter;->access$000(Landroid/bluetooth/BluetoothBATransmitter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 498
    const-string v0, "BluetoothBAT"

    const-string v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$2;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$000(Landroid/bluetooth/BluetoothBATransmitter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 501
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$2;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothBATransmitter;->access$102(Landroid/bluetooth/BluetoothBATransmitter;Landroid/bluetooth/IBluetoothBATransmitter;)Landroid/bluetooth/IBluetoothBATransmitter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$2;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$000(Landroid/bluetooth/BluetoothBATransmitter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 504
    nop

    .line 505
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$2;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$400(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter$2;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->access$400(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x17

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 508
    :cond_0
    return-void

    .line 503
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter$2;->this$0:Landroid/bluetooth/BluetoothBATransmitter;

    invoke-static {v1}, Landroid/bluetooth/BluetoothBATransmitter;->access$000(Landroid/bluetooth/BluetoothBATransmitter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
