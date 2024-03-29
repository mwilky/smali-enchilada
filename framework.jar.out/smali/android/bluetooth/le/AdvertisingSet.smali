.class public final Landroid/bluetooth/le/AdvertisingSet;
.super Ljava/lang/Object;
.source "AdvertisingSet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvertisingSet"


# instance fields
.field private mAdvertiserId:I

.field private final mGatt:Landroid/bluetooth/IBluetoothGatt;


# direct methods
.method constructor <init>(ILandroid/bluetooth/IBluetoothManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    :try_start_0
    invoke-interface {p2}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string v2, "Failed to get Bluetooth gatt - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get Bluetooth"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public enableAdvertising(ZII)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothGatt;->enableAdvertisingSet(IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public getAdvertiserId()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    return v0
.end method

.method public getOwnAddress()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothGatt;->getOwnAddress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method setAdvertiserId(I)V
    .locals 0

    iput p1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    return-void
.end method

.method public setAdvertisingData(Landroid/bluetooth/le/AdvertiseData;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setAdvertisingParameters(Landroid/bluetooth/le/AdvertisingSetParameters;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setPeriodicAdvertisingData(Landroid/bluetooth/le/AdvertiseData;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setPeriodicAdvertisingEnabled(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setPeriodicAdvertisingParameters(Landroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setScanResponseData(Landroid/bluetooth/le/AdvertiseData;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSet;->mGatt:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSet;->mAdvertiserId:I

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothGatt;->setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
