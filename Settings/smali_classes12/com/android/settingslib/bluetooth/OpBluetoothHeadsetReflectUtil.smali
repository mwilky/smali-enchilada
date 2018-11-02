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
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    const-string v2, "android.bluetooth.oneplus.OpBluetoothHeadset"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    sget-object v6, Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;->obj:Ljava/lang/Object;

    if-nez v6, :cond_0

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p0, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    sput-object v6, Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;->obj:Ljava/lang/Object;

    :cond_0
    const-string v6, "isOpBluetoothHeadset"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, [I

    aput-object v8, v7, v0

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v7, Lcom/android/settingslib/bluetooth/OpBluetoothHeadsetReflectUtil;->obj:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v6, v7, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return v1
.end method
