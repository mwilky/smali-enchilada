.class public abstract Landroid/bluetooth/IBluetoothHeadset$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadset.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadset"

.field static final TRANSACTION_clccResponse:I = 0x16

.field static final TRANSACTION_connect:I = 0x8

.field static final TRANSACTION_connectAudio:I = 0xe

.field static final TRANSACTION_disconnect:I = 0x9

.field static final TRANSACTION_disconnectAudio:I = 0xf

.field static final TRANSACTION_getActiveDevice:I = 0x18

.field static final TRANSACTION_getAudioRouteAllowed:I = 0x11

.field static final TRANSACTION_getAudioState:I = 0xc

.field static final TRANSACTION_getConnectedDevices:I = 0x1

.field static final TRANSACTION_getConnectionState:I = 0x3

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x2

.field static final TRANSACTION_getPriority:I = 0xb

.field static final TRANSACTION_isAudioConnected:I = 0x6

.field static final TRANSACTION_isAudioOn:I = 0xd

.field static final TRANSACTION_isInbandRingingEnabled:I = 0x19

.field static final TRANSACTION_phoneStateChanged:I = 0x15

.field static final TRANSACTION_sendVendorSpecificResultCode:I = 0x7

.field static final TRANSACTION_setActiveDevice:I = 0x17

.field static final TRANSACTION_setAudioRouteAllowed:I = 0x10

.field static final TRANSACTION_setForceScoAudio:I = 0x12

.field static final TRANSACTION_setPriority:I = 0xa

.field static final TRANSACTION_startScoUsingVirtualVoiceCall:I = 0x13

.field static final TRANSACTION_startVoiceRecognition:I = 0x4

.field static final TRANSACTION_stopScoUsingVirtualVoiceCall:I = 0x14

.field static final TRANSACTION_stopVoiceRecognition:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadset;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.bluetooth.IBluetoothHeadset"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadset;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothHeadset;

    return-object v1

    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadset$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.bluetooth.IBluetoothHeadset"

    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v9, v0, :cond_f

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v9, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isInbandRingingEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v11, v13}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v13

    :pswitch_2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move-object v0, v1

    invoke-virtual {v8, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v5, v13

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move-object v0, v8

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/IBluetoothHeadset$Stub;->clccResponse(IIIIZLjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v8

    move v1, v6

    move v2, v7

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothHeadset$Stub;->phoneStateChanged(IIILjava/lang/String;I)V

    return v13

    :pswitch_5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopScoUsingVirtualVoiceCall()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startScoUsingVirtualVoiceCall()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_7
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v0, v13

    nop

    :cond_3
    invoke-virtual {v8, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setForceScoAudio(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_8
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getAudioRouteAllowed()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_9
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v0, v13

    nop

    :cond_4
    invoke-virtual {v8, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setAudioRouteAllowed(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnectAudio()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connectAudio()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isAudioOn()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_3

    :cond_5
    nop

    :goto_3
    move-object v0, v1

    invoke-virtual {v8, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_4

    :cond_6
    nop

    :goto_4
    move-object v0, v1

    invoke-virtual {v8, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_5

    :cond_7
    nop

    :goto_5
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/bluetooth/IBluetoothHeadset$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_10
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_6

    :cond_8
    nop

    :goto_6
    move-object v0, v1

    invoke-virtual {v8, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_11
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_7

    :cond_9
    nop

    :goto_7
    move-object v0, v1

    invoke-virtual {v8, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_12
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_8

    :cond_a
    nop

    :goto_8
    move-object v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/bluetooth/IBluetoothHeadset$Stub;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_13
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_9

    :cond_b
    nop

    :goto_9
    move-object v0, v1

    invoke-virtual {v8, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_14
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_a

    :cond_c
    nop

    :goto_a
    move-object v0, v1

    invoke-virtual {v8, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_15
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_b

    :cond_d
    nop

    :goto_b
    move-object v0, v1

    invoke-virtual {v8, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_16
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_c

    :cond_e
    nop

    :goto_c
    move-object v0, v1

    invoke-virtual {v8, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_17
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v13

    :pswitch_18
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothHeadset$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v13

    :cond_f
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
