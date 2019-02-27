.class public abstract Landroid/net/IIpSecService$Stub;
.super Landroid/os/Binder;
.source "IIpSecService.java"

# interfaces
.implements Landroid/net/IIpSecService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpSecService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IIpSecService"

.field static final TRANSACTION_addAddressToTunnelInterface:I = 0x6

.field static final TRANSACTION_allocateSecurityParameterIndex:I = 0x1

.field static final TRANSACTION_applyTransportModeTransform:I = 0xb

.field static final TRANSACTION_applyTunnelModeTransform:I = 0xc

.field static final TRANSACTION_closeUdpEncapsulationSocket:I = 0x4

.field static final TRANSACTION_createTransform:I = 0x9

.field static final TRANSACTION_createTunnelInterface:I = 0x5

.field static final TRANSACTION_deleteTransform:I = 0xa

.field static final TRANSACTION_deleteTunnelInterface:I = 0x8

.field static final TRANSACTION_openUdpEncapsulationSocket:I = 0x3

.field static final TRANSACTION_releaseSecurityParameterIndex:I = 0x2

.field static final TRANSACTION_removeAddressFromTunnelInterface:I = 0x7

.field static final TRANSACTION_removeTransportModeTransforms:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.IIpSecService"

    invoke-virtual {p0, p0, v0}, Landroid/net/IIpSecService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IIpSecService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.net.IIpSecService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IIpSecService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/net/IIpSecService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/net/IIpSecService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IIpSecService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.net.IIpSecService"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_a

    const/4 v12, 0x0

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    invoke-virtual {v6, v0}, Landroid/net/IIpSecService$Stub;->removeTransportModeTransforms(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/net/IIpSecService$Stub;->applyTunnelModeTransform(IIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IIpSecService$Stub;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/net/IIpSecService$Stub;->deleteTransform(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Landroid/net/IpSecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpSecConfig;

    goto :goto_2

    :cond_2
    nop

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IIpSecService$Stub;->createTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTransformResponse;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_3

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/net/IpSecTransformResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v11

    :pswitch_5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/IIpSecService$Stub;->deleteTunnelInterface(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    goto :goto_4

    :cond_4
    nop

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v0, v2}, Landroid/net/IIpSecService$Stub;->removeAddressFromTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    goto :goto_5

    :cond_5
    nop

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v0, v2}, Landroid/net/IIpSecService$Stub;->addAddressToTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    :goto_6
    move-object v3, v0

    goto :goto_7

    :cond_6
    goto :goto_6

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v6

    move-object v1, v13

    move-object v2, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/IIpSecService$Stub;->createTunnelInterface(Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTunnelInterfaceResponse;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_7

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v9, v11}, Landroid/net/IpSecTunnelInterfaceResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_7
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v11

    :pswitch_9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/net/IIpSecService$Stub;->closeUdpEncapsulationSocket(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/IIpSecService$Stub;->openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_8

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v9, v11}, Landroid/net/IpSecUdpEncapResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_8
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v11

    :pswitch_b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/net/IIpSecService$Stub;->releaseSecurityParameterIndex(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v11

    :pswitch_c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/net/IIpSecService$Stub;->allocateSecurityParameterIndex(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_9

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9, v11}, Landroid/net/IpSecSpiResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_9
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v11

    :cond_a
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
