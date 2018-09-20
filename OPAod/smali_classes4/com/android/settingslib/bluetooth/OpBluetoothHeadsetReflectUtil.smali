.class public Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;
.super Ljava/lang/Object;
.source "OpBluetoothHeadsetReflectUtil.java"


# static fields
.field static obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;->obj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOpBluetoothHeadset(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "isSupport":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 31
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->isOpBluetoothHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 32
    return v0
.end method
