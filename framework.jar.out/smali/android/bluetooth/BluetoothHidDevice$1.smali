.class Landroid/bluetooth/BluetoothHidDevice$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothHidDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHidDevice;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHidDevice;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 4

    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothStateChange: up="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidDevice;->access$100(Landroid/bluetooth/BluetoothHidDevice;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-static {v1}, Landroid/bluetooth/BluetoothHidDevice;->access$200(Landroid/bluetooth/BluetoothHidDevice;)Landroid/bluetooth/IBluetoothHidDevice;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Binding HID Device service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHidDevice;->doBind()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onBluetoothStateChange: could not bind to HID Dev service: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onBluetoothStateChange: could not bind to HID Dev service: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothHidDevice;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unbinding service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/BluetoothHidDevice$1;->this$0:Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHidDevice;->doUnbind()V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
