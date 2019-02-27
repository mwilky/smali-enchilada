.class Landroid/bluetooth/BluetoothPan$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothPan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPan;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPan;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4

    const-string v0, "BluetoothPan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->access$000(Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/IBluetoothPan;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->doBind()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothPan"

    const-string/jumbo v2, "onBluetoothStateChange: could not bind to PAN service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "BluetoothPan"

    const-string/jumbo v2, "onBluetoothStateChange: could not bind to PAN service: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    goto :goto_2

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v0}, Landroid/bluetooth/BluetoothPan;->access$100(Landroid/bluetooth/BluetoothPan;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothPan;->access$002(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;)Landroid/bluetooth/IBluetoothPan;

    iget-object v1, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v1}, Landroid/bluetooth/BluetoothPan;->access$200(Landroid/bluetooth/BluetoothPan;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothPan$1;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v2}, Landroid/bluetooth/BluetoothPan;->access$100(Landroid/bluetooth/BluetoothPan;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_2
    const-string v2, "BluetoothPan"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v0

    :goto_2
    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
