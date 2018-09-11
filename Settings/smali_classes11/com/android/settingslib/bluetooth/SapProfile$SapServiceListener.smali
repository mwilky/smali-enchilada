.class final Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;
.super Ljava/lang/Object;
.source "SapProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/SapProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/SapProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/SapProfile;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/SapProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/SapProfile;Lcom/android/settingslib/bluetooth/SapProfile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settingslib/bluetooth/SapProfile;
    .param p2, "x1"    # Lcom/android/settingslib/bluetooth/SapProfile$1;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;-><init>(Lcom/android/settingslib/bluetooth/SapProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 62
    invoke-static {}, Lcom/android/settingslib/bluetooth/SapProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SapProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/SapProfile;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothSap;

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/SapProfile;->access$102(Lcom/android/settingslib/bluetooth/SapProfile;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    .line 65
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/SapProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/SapProfile;->access$100(Lcom/android/settingslib/bluetooth/SapProfile;)Landroid/bluetooth/BluetoothSap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSap;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 67
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 68
    .local v1, "nextDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/SapProfile;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/SapProfile;->access$200(Lcom/android/settingslib/bluetooth/SapProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 70
    .local v2, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-nez v2, :cond_1

    .line 71
    const-string v3, "SapProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SapProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/SapProfile;

    invoke-static {v3}, Lcom/android/settingslib/bluetooth/SapProfile;->access$200(Lcom/android/settingslib/bluetooth/SapProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/SapProfile;

    invoke-static {v4}, Lcom/android/settingslib/bluetooth/SapProfile;->access$300(Lcom/android/settingslib/bluetooth/SapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/SapProfile;

    invoke-static {v5}, Lcom/android/settingslib/bluetooth/SapProfile;->access$400(Lcom/android/settingslib/bluetooth/SapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/SapProfile;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 76
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 77
    .end local v1    # "nextDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    goto :goto_0

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/SapProfile;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/SapProfile;->access$400(Lcom/android/settingslib/bluetooth/SapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    .line 80
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/SapProfile;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settingslib/bluetooth/SapProfile;->access$502(Lcom/android/settingslib/bluetooth/SapProfile;Z)Z

    .line 81
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .line 84
    invoke-static {}, Lcom/android/settingslib/bluetooth/SapProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SapProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/SapProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/SapProfile;->access$400(Lcom/android/settingslib/bluetooth/SapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    .line 86
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settingslib/bluetooth/SapProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/SapProfile;->access$502(Lcom/android/settingslib/bluetooth/SapProfile;Z)Z

    .line 87
    return-void
.end method
