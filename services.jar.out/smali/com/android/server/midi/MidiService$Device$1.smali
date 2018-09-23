.class Lcom/android/server/midi/MidiService$Device$1;
.super Ljava/lang/Object;
.source "MidiService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/midi/MidiService$Device;->addDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/midi/MidiService$Device;


# direct methods
.method constructor <init>(Lcom/android/server/midi/MidiService$Device;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    invoke-static {v1}, Lcom/android/server/midi/MidiService$Device;->access$600(Lcom/android/server/midi/MidiService$Device;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/media/midi/IBluetoothMidiService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IBluetoothMidiService;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    invoke-static {v2}, Lcom/android/server/midi/MidiService$Device;->access$600(Lcom/android/server/midi/MidiService$Device;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/midi/IBluetoothMidiService;->addBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MidiService"

    const-string v4, "Could not call addBluetoothDevice()"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_1

    :cond_0
    invoke-static {p2}, Landroid/media/midi/IMidiDeviceServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/midi/IMidiDeviceServer;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    invoke-static {v1, v0}, Lcom/android/server/midi/MidiService$Device;->access$700(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceServer;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/midi/MidiService$Device;->access$700(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceServer;)V

    iget-object v0, p0, Lcom/android/server/midi/MidiService$Device$1;->this$1:Lcom/android/server/midi/MidiService$Device;

    invoke-static {v0, v1}, Lcom/android/server/midi/MidiService$Device;->access$802(Lcom/android/server/midi/MidiService$Device;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    return-void
.end method
