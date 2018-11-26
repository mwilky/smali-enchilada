.class public Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;
.super Ljava/lang/Object;
.source "OpBluetoothHeadsetReflectUtil.java"


# static fields
.field static obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;->obj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOpBluetoothHeadset(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->isOpBluetoothHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method
