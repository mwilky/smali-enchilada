.class public abstract Landroid/bluetooth/IBluetoothHidDevice$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHidDevice.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHidDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHidDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHidDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHidDevice"

.field static final TRANSACTION_connect:I = 0x7

.field static final TRANSACTION_disconnect:I = 0x8

.field static final TRANSACTION_getConnectedDevices:I = 0x9

.field static final TRANSACTION_getConnectionState:I = 0xb

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0xa

.field static final TRANSACTION_getUserAppName:I = 0xc

.field static final TRANSACTION_registerApp:I = 0x1

.field static final TRANSACTION_replyReport:I = 0x4

.field static final TRANSACTION_reportError:I = 0x5

.field static final TRANSACTION_sendReport:I = 0x3

.field static final TRANSACTION_unplug:I = 0x6

.field static final TRANSACTION_unregisterApp:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDevice;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHidDevice;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothHidDevice;

    return-object v1

    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothHidDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.bluetooth.IBluetoothHidDevice"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_a

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->getUserAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->unplug(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    invoke-virtual {p0, v1, v3}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_5

    :cond_5
    nop

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_6

    :cond_6
    nop

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->unregisterApp()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    goto :goto_7

    :cond_7
    move-object v3, v1

    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    goto :goto_8

    :cond_8
    move-object v4, v1

    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v1, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    goto :goto_9

    :cond_9
    nop

    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v1, v5}, Landroid/bluetooth/IBluetoothHidDevice$Stub;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
