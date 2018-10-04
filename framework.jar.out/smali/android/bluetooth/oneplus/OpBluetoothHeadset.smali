.class public Landroid/bluetooth/oneplus/OpBluetoothHeadset;
.super Ljava/lang/Object;
.source "OpBluetoothHeadset.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "OpBluetoothHeadset"


# instance fields
.field private mA2dpProxy:Landroid/bluetooth/BluetoothProfile;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mHfpProxy:Landroid/bluetooth/BluetoothProfile;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/oneplus/OpBluetoothHeadset$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/oneplus/OpBluetoothHeadset$1;-><init>(Landroid/bluetooth/oneplus/OpBluetoothHeadset;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    iget-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/oneplus/OpBluetoothHeadset$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/oneplus/OpBluetoothHeadset$2;-><init>(Landroid/bluetooth/oneplus/OpBluetoothHeadset;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method static synthetic access$002(Landroid/bluetooth/oneplus/OpBluetoothHeadset;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mA2dpProxy:Landroid/bluetooth/BluetoothProfile;

    return-object p1
.end method

.method static synthetic access$102(Landroid/bluetooth/oneplus/OpBluetoothHeadset;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mHfpProxy:Landroid/bluetooth/BluetoothProfile;

    return-object p1
.end method

.method private isBluetoothHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "OpBluetoothHeadset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth Device Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string v2, "OpBluetoothHeadset"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isOpBluetoothAddress(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->isOpBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected finalize()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mA2dpProxy:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    iget-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mHfpProxy:Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OpBluetoothHeadset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close Bluetooth related proxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public isOpA2dpConnected()Z
    .locals 4

    iget-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mA2dpProxy:Landroid/bluetooth/BluetoothProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mA2dpProxy:Landroid/bluetooth/BluetoothProfile;

    invoke-interface {v0}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v2}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isOpBluetoothHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public isOpBluetoothHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    const-string v0, "OpBluetoothHeadset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isOpBluetoothAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isOpBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBluetoothHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isBluetoothHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isOpBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isBluetoothHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpBluetoothHeadsetConnected()Z
    .locals 1

    invoke-virtual {p0}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isOpA2dpConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isOpHfpConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOpHfpConnected()Z
    .locals 4

    iget-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mHfpProxy:Landroid/bluetooth/BluetoothProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mHfpProxy:Landroid/bluetooth/BluetoothProfile;

    invoke-interface {v0}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v2}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isOpBluetoothHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    return v1

    :cond_2
    return v1
.end method
