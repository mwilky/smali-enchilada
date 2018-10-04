.class public abstract Landroid/bluetooth/IBluetoothGatt$Stub;
.super Landroid/os/Binder;
.source "IBluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothGatt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothGatt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothGatt"

.field static final TRANSACTION_addService:I = 0x30

.field static final TRANSACTION_beginReliableWrite:I = 0x24

.field static final TRANSACTION_clearServices:I = 0x32

.field static final TRANSACTION_clientConnect:I = 0x17

.field static final TRANSACTION_clientDisconnect:I = 0x18

.field static final TRANSACTION_clientReadPhy:I = 0x1a

.field static final TRANSACTION_clientSetPreferredPhy:I = 0x19

.field static final TRANSACTION_configureMTU:I = 0x27

.field static final TRANSACTION_connectionParameterUpdate:I = 0x28

.field static final TRANSACTION_disconnectAll:I = 0x35

.field static final TRANSACTION_discoverServiceByUuid:I = 0x1d

.field static final TRANSACTION_discoverServices:I = 0x1c

.field static final TRANSACTION_enableAdvertisingSet:I = 0xc

.field static final TRANSACTION_endReliableWrite:I = 0x25

.field static final TRANSACTION_flushPendingBatchResults:I = 0x8

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x1

.field static final TRANSACTION_getOwnAddress:I = 0xb

.field static final TRANSACTION_leConnectionUpdate:I = 0x29

.field static final TRANSACTION_numHwTrackFiltersAvailable:I = 0x37

.field static final TRANSACTION_readCharacteristic:I = 0x1e

.field static final TRANSACTION_readDescriptor:I = 0x21

.field static final TRANSACTION_readRemoteRssi:I = 0x26

.field static final TRANSACTION_readUsingCharacteristicUuid:I = 0x1f

.field static final TRANSACTION_refreshDevice:I = 0x1b

.field static final TRANSACTION_registerClient:I = 0x15

.field static final TRANSACTION_registerForNotification:I = 0x23

.field static final TRANSACTION_registerScanner:I = 0x2

.field static final TRANSACTION_registerServer:I = 0x2a

.field static final TRANSACTION_registerSync:I = 0x13

.field static final TRANSACTION_removeService:I = 0x31

.field static final TRANSACTION_sendNotification:I = 0x34

.field static final TRANSACTION_sendResponse:I = 0x33

.field static final TRANSACTION_serverConnect:I = 0x2c

.field static final TRANSACTION_serverDisconnect:I = 0x2d

.field static final TRANSACTION_serverReadPhy:I = 0x2f

.field static final TRANSACTION_serverSetPreferredPhy:I = 0x2e

.field static final TRANSACTION_setAdvertisingData:I = 0xd

.field static final TRANSACTION_setAdvertisingParameters:I = 0xf

.field static final TRANSACTION_setPeriodicAdvertisingData:I = 0x11

.field static final TRANSACTION_setPeriodicAdvertisingEnable:I = 0x12

.field static final TRANSACTION_setPeriodicAdvertisingParameters:I = 0x10

.field static final TRANSACTION_setScanResponseData:I = 0xe

.field static final TRANSACTION_startAdvertisingSet:I = 0x9

.field static final TRANSACTION_startScan:I = 0x4

.field static final TRANSACTION_startScanForIntent:I = 0x5

.field static final TRANSACTION_stopAdvertisingSet:I = 0xa

.field static final TRANSACTION_stopScan:I = 0x7

.field static final TRANSACTION_stopScanForIntent:I = 0x6

.field static final TRANSACTION_unregAll:I = 0x36

.field static final TRANSACTION_unregisterClient:I = 0x16

.field static final TRANSACTION_unregisterScanner:I = 0x3

.field static final TRANSACTION_unregisterServer:I = 0x2b

.field static final TRANSACTION_unregisterSync:I = 0x14

.field static final TRANSACTION_writeCharacteristic:I = 0x20

.field static final TRANSACTION_writeDescriptor:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothGatt"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.bluetooth.IBluetoothGatt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothGatt;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothGatt;

    return-object v1

    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothGatt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.bluetooth.IBluetoothGatt"

    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v10, v0, :cond_1d

    const/4 v0, 0x0

    const/4 v5, 0x0

    packed-switch v10, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->numHwTrackFiltersAvailable()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregAll()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothGatt$Stub;->disconnectAll()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v4, v14

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    move-object v0, v9

    move v1, v6

    move-object v2, v7

    move v3, v8

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendNotification(ILjava/lang/String;IZ[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    move-object v0, v9

    move v1, v7

    move-object v2, v8

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->sendResponse(ILjava/lang/String;III[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->clearServices(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->removeService(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/bluetooth/BluetoothGattService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/bluetooth/BluetoothGattService;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move-object v1, v5

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->addService(ILandroid/bluetooth/BluetoothGattService;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverReadPhy(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v9

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverSetPreferredPhy(ILjava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverDisconnect(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v14

    nop

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9, v1, v2, v0, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->serverConnect(ILjava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterServer(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/ParcelUuid;

    goto :goto_2

    :cond_3
    nop

    :goto_2
    move-object v0, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothGattServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattServerCallback;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerServer(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattServerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object v0, v9

    move v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt$Stub;->leConnectionUpdate(ILjava/lang/String;IIIIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->connectionParameterUpdate(ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_10
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->configureMTU(ILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_11
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->readRemoteRssi(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_12
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v0, v14

    nop

    :cond_4
    invoke-virtual {v9, v1, v2, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->endReliableWrite(ILjava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_13
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->beginReliableWrite(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_14
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v0, v14

    nop

    :cond_5
    invoke-virtual {v9, v1, v2, v3, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerForNotification(ILjava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_15
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    move-object v0, v9

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeDescriptor(ILjava/lang/String;II[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_16
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->readDescriptor(ILjava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_17
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    move-object v0, v9

    move v1, v7

    move-object v2, v8

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->writeCharacteristic(ILjava/lang/String;III[B)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_18
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    move-object v3, v0

    goto :goto_3

    :cond_6
    move-object v3, v5

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object v0, v9

    move v1, v7

    move-object v2, v8

    move v4, v15

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->readUsingCharacteristicUuid(ILjava/lang/String;Landroid/os/ParcelUuid;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_19
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->readCharacteristic(ILjava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_1a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/os/ParcelUuid;

    goto :goto_4

    :cond_7
    nop

    :goto_4
    move-object v2, v5

    invoke-virtual {v9, v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServiceByUuid(ILjava/lang/String;Landroid/os/ParcelUuid;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_1b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->discoverServices(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_1c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->refreshDevice(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_1d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientReadPhy(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_1e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v9

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientSetPreferredPhy(ILjava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_1f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientDisconnect(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_20
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v3, v14

    goto :goto_5

    :cond_8
    move v3, v0

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    move v5, v14

    goto :goto_6

    :cond_9
    move v5, v0

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v9

    move v1, v7

    move-object v2, v8

    move v4, v15

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt$Stub;->clientConnect(ILjava/lang/String;ZIZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_21
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterClient(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_22
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/ParcelUuid;

    goto :goto_7

    :cond_a
    nop

    :goto_7
    move-object v0, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothGattCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGattCallback;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_23
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_24
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/bluetooth/le/ScanResult;

    goto :goto_8

    :cond_b
    nop

    :goto_8
    move-object v0, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_25
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    move v0, v14

    nop

    :cond_c
    invoke-virtual {v9, v1, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->setPeriodicAdvertisingEnable(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_26
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/bluetooth/le/AdvertiseData;

    goto :goto_9

    :cond_d
    nop

    :goto_9
    move-object v1, v5

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_27
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    goto :goto_a

    :cond_e
    nop

    :goto_a
    move-object v1, v5

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_28
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/bluetooth/le/AdvertisingSetParameters;

    goto :goto_b

    :cond_f
    nop

    :goto_b
    move-object v1, v5

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_29
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/bluetooth/le/AdvertiseData;

    goto :goto_c

    :cond_10
    nop

    :goto_c
    move-object v1, v5

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/bluetooth/le/AdvertiseData;

    goto :goto_d

    :cond_11
    nop

    :goto_d
    move-object v1, v5

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_12

    move v0, v14

    nop

    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9, v1, v0, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->enableAdvertisingSet(IZII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->getOwnAddress(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertisingSetParameters;

    move-object v1, v0

    goto :goto_e

    :cond_13
    move-object v1, v5

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertiseData;

    move-object v2, v0

    goto :goto_f

    :cond_14
    move-object v2, v5

    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertiseData;

    move-object v3, v0

    goto :goto_10

    :cond_15
    move-object v3, v5

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    move-object v4, v0

    goto :goto_11

    :cond_16
    move-object v4, v5

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Landroid/bluetooth/le/AdvertiseData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/AdvertiseData;

    move-object v5, v0

    nop

    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v17

    move-object v0, v9

    move v6, v15

    move/from16 v7, v16

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGatt$Stub;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->flushPendingBatchResults(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_30
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopScan(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_31
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/PendingIntent;

    goto :goto_12

    :cond_18
    nop

    :goto_12
    move-object v0, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->stopScanForIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_32
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    goto :goto_13

    :cond_19
    move-object v0, v5

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/bluetooth/le/ScanSettings;

    goto :goto_14

    :cond_1a
    nop

    :goto_14
    move-object v1, v5

    sget-object v2, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScanForIntent(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_33
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanSettings;

    move-object v2, v0

    goto :goto_15

    :cond_1b
    move-object v2, v5

    :goto_15
    sget-object v0, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v9

    move v1, v6

    move-object v3, v7

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt$Stub;->startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_34
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->unregisterScanner(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_35
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/le/IScannerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IScannerCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/os/WorkSource;

    goto :goto_16

    :cond_1c
    nop

    :goto_16
    move-object v1, v5

    invoke-virtual {v9, v0, v1}, Landroid/bluetooth/IBluetoothGatt$Stub;->registerScanner(Landroid/bluetooth/le/IScannerCallback;Landroid/os/WorkSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_36
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v14

    :cond_1d
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
