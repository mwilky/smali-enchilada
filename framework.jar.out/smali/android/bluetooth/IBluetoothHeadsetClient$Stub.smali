.class public abstract Landroid/bluetooth/IBluetoothHeadsetClient$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadsetClient.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadsetClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadsetClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadsetClient"

.field static final TRANSACTION_acceptCall:I = 0xc

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_connectAudio:I = 0x16

.field static final TRANSACTION_dial:I = 0x12

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_disconnectAudio:I = 0x17

.field static final TRANSACTION_enterPrivateMode:I = 0x10

.field static final TRANSACTION_explicitCallTransfer:I = 0x11

.field static final TRANSACTION_getAudioRouteAllowed:I = 0x19

.field static final TRANSACTION_getAudioState:I = 0x15

.field static final TRANSACTION_getConnectedDevices:I = 0x3

.field static final TRANSACTION_getConnectionState:I = 0x5

.field static final TRANSACTION_getCurrentAgEvents:I = 0xb

.field static final TRANSACTION_getCurrentAgFeatures:I = 0x1a

.field static final TRANSACTION_getCurrentCalls:I = 0xa

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x4

.field static final TRANSACTION_getLastVoiceTagNumber:I = 0x14

.field static final TRANSACTION_getPriority:I = 0x7

.field static final TRANSACTION_holdCall:I = 0xd

.field static final TRANSACTION_rejectCall:I = 0xe

.field static final TRANSACTION_sendDTMF:I = 0x13

.field static final TRANSACTION_setAudioRouteAllowed:I = 0x18

.field static final TRANSACTION_setPriority:I = 0x6

.field static final TRANSACTION_startVoiceRecognition:I = 0x8

.field static final TRANSACTION_stopVoiceRecognition:I = 0x9

.field static final TRANSACTION_terminateCall:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetClient;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.bluetooth.IBluetoothHeadsetClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadsetClient;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothHeadsetClient;

    return-object v1

    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.bluetooth.IBluetoothHeadsetClient"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1d

    const/4 v1, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_1

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    nop

    :cond_4
    invoke-virtual {p0, v3, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->setAudioRouteAllowed(Landroid/bluetooth/BluetoothDevice;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_4

    :cond_5
    nop

    :goto_4
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_5

    :cond_6
    nop

    :goto_5
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_6

    :cond_7
    nop

    :goto_6
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_7

    :cond_8
    nop

    :goto_7
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_8

    :cond_9
    nop

    :goto_8
    move-object v1, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_9

    :cond_a
    nop

    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHeadsetClientCall;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_b

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v2}, Landroid/bluetooth/BluetoothHeadsetClientCall;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_b

    :cond_c
    nop

    :goto_b
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_c

    :cond_d
    nop

    :goto_c
    move-object v1, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_d

    :cond_e
    move-object v1, v3

    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    sget-object v3, Landroid/bluetooth/BluetoothHeadsetClientCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHeadsetClientCall;

    goto :goto_e

    :cond_f
    nop

    :goto_e
    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->terminateCall(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClientCall;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_f

    :cond_10
    nop

    :goto_f
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_10

    :cond_11
    nop

    :goto_10
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->holdCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_11

    :cond_12
    nop

    :goto_11
    move-object v1, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    sget-object v3, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_12

    :cond_13
    nop

    :goto_12
    invoke-virtual {p0, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_14

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_13

    :cond_14
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_13
    return v2

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_14

    :cond_15
    nop

    :goto_14
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_15

    :cond_16
    nop

    :goto_15
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_16

    :cond_17
    nop

    :goto_16
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_17

    :cond_18
    nop

    :goto_17
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_18

    :cond_19
    nop

    :goto_18
    move-object v1, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1a

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_19

    :cond_1a
    nop

    :goto_19
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_1a

    :cond_1b
    nop

    :goto_1a
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    goto :goto_1b

    :cond_1c
    nop

    :goto_1b
    move-object v1, v3

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetClient$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
