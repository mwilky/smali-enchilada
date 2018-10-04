.class public abstract Landroid/bluetooth/IBluetoothSocketManager$Stub;
.super Landroid/os/Binder;
.source "IBluetoothSocketManager.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothSocketManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothSocketManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothSocketManager"

.field static final TRANSACTION_connectSocket:I = 0x1

.field static final TRANSACTION_createSocketChannel:I = 0x2

.field static final TRANSACTION_requestMaximumTxDataLength:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.bluetooth.IBluetoothSocketManager"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSocketManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.bluetooth.IBluetoothSocketManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothSocketManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetoothSocketManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothSocketManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "android.bluetooth.IBluetoothSocketManager"

    const v4, 0x5f4e5446

    const/4 v5, 0x1

    if-eq v0, v4, :cond_6

    const/4 v4, 0x0

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move-object v4, v6

    move-object/from16 v13, p0

    invoke-virtual {v13, v4}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->requestMaximumTxDataLength(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :pswitch_1
    move-object/from16 v13, p0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    :goto_1
    move-object v9, v6

    goto :goto_2

    :cond_1
    goto :goto_1

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v6, v13

    move v7, v12

    move-object v8, v14

    move v10, v15

    move/from16 v11, v16

    invoke-virtual/range {v6 .. v11}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->createSocketChannel(ILjava/lang/String;Landroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_2

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v6, v2, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v5

    :pswitch_2
    move-object/from16 v13, p0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    move-object v8, v7

    goto :goto_4

    :cond_3
    move-object v8, v6

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    :goto_5
    move-object v10, v6

    goto :goto_6

    :cond_4
    goto :goto_5

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object v7, v13

    move v9, v14

    move v11, v6

    move v12, v15

    invoke-virtual/range {v7 .. v12}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->connectSocket(Landroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, v2, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_5
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v5

    :cond_6
    move-object/from16 v13, p0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
