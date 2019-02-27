.class public abstract Landroid/net/INetd$Stub;
.super Landroid/os/Binder;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetd"

.field static final TRANSACTION_addVirtualTunnelInterface:I = 0x1f

.field static final TRANSACTION_bandwidthEnableDataSaver:I = 0x3

.field static final TRANSACTION_firewallReplaceUidChain:I = 0x2

.field static final TRANSACTION_getMetricsReportingLevel:I = 0x14

.field static final TRANSACTION_getResolverInfo:I = 0xe

.field static final TRANSACTION_interfaceAddAddress:I = 0x11

.field static final TRANSACTION_interfaceDelAddress:I = 0x12

.field static final TRANSACTION_ipSecAddSecurityAssociation:I = 0x18

.field static final TRANSACTION_ipSecAddSecurityPolicy:I = 0x1c

.field static final TRANSACTION_ipSecAllocateSpi:I = 0x17

.field static final TRANSACTION_ipSecApplyTransportModeTransform:I = 0x1a

.field static final TRANSACTION_ipSecDeleteSecurityAssociation:I = 0x19

.field static final TRANSACTION_ipSecDeleteSecurityPolicy:I = 0x1e

.field static final TRANSACTION_ipSecRemoveTransportModeTransform:I = 0x1b

.field static final TRANSACTION_ipSecSetEncapSocketOwner:I = 0x16

.field static final TRANSACTION_ipSecUpdateSecurityPolicy:I = 0x1d

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_networkAddInterface:I = 0x7

.field static final TRANSACTION_networkAddUidRanges:I = 0x9

.field static final TRANSACTION_networkCreatePhysical:I = 0x4

.field static final TRANSACTION_networkCreateVpn:I = 0x5

.field static final TRANSACTION_networkDestroy:I = 0x6

.field static final TRANSACTION_networkRejectNonSecureVpn:I = 0xb

.field static final TRANSACTION_networkRemoveInterface:I = 0x8

.field static final TRANSACTION_networkRemoveUidRanges:I = 0xa

.field static final TRANSACTION_removeVirtualTunnelInterface:I = 0x21

.field static final TRANSACTION_resolveFlushCacheForNet:I = 0x26

.field static final TRANSACTION_setIPv6AddrGenMode:I = 0x24

.field static final TRANSACTION_setMetricsReportingLevel:I = 0x15

.field static final TRANSACTION_setProcSysNet:I = 0x13

.field static final TRANSACTION_setResolverConfiguration:I = 0xd

.field static final TRANSACTION_socketDestroy:I = 0xc

.field static final TRANSACTION_tetherApplyDnsInterfaces:I = 0xf

.field static final TRANSACTION_tetherGetStats:I = 0x10

.field static final TRANSACTION_trafficCheckBpfStatsEnable:I = 0x25

.field static final TRANSACTION_updateVirtualTunnelInterface:I = 0x20

.field static final TRANSACTION_wakeupAddInterface:I = 0x22

.field static final TRANSACTION_wakeupDelInterface:I = 0x23


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.INetd"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetd;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.net.INetd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetd;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/net/INetd;

    return-object v1

    :cond_1
    new-instance v1, Landroid/net/INetd$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    const-string v11, "android.net.INetd"

    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v14, v0, :cond_a

    const/4 v0, 0x0

    packed-switch v14, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->resolveFlushCacheForNet(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_1
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->trafficCheckBpfStatsEnable()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :pswitch_2
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_3
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_4
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_5
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->removeVirtualTunnelInterface(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_6
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v15

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->updateVirtualTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_7
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v15

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->addVirtualTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_8
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move-object v0, v15

    move v1, v7

    move v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecDeleteSecurityPolicy(IILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_9
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move-object v0, v15

    move v1, v8

    move v2, v9

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetd$Stub;->ipSecUpdateSecurityPolicy(IILjava/lang/String;Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move-object v0, v15

    move v1, v8

    move v2, v9

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetd$Stub;->ipSecAddSecurityPolicy(IILjava/lang/String;Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->ipSecRemoveTransportModeTransform(Ljava/io/FileDescriptor;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move-object v0, v15

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecApplyTransportModeTransform(Ljava/io/FileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move-object v0, v15

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_e
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v36

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    move-object v0, v15

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v26

    move/from16 v7, v27

    move/from16 v8, v28

    move-object/from16 v9, v29

    move-object/from16 v10, v30

    move-object/from16 v41, v11

    move/from16 v11, v31

    move-object/from16 v12, v32

    move-object/from16 v13, v33

    move/from16 v14, v34

    move-object/from16 v15, v35

    move-object/from16 v16, v36

    move/from16 v17, v37

    move/from16 v18, v38

    move/from16 v19, v39

    move/from16 v20, v40

    invoke-virtual/range {v0 .. v20}, Landroid/net/INetd$Stub;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v8, 0x1

    return v8

    :pswitch_f
    move v8, v10

    move-object/from16 v41, v11

    move-object/from16 v10, v41

    move-object/from16 v9, p2

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v11, p0

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v12, p3

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_10
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->ipSecSetEncapSocketOwner(Ljava/io/FileDescriptor;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_11
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/net/INetd$Stub;->setMetricsReportingLevel(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_12
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->getMetricsReportingLevel()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_13
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v11

    move v1, v6

    move v2, v7

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_14
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v11, v0, v1, v2}, Landroid/net/INetd$Stub;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_15
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v11, v0, v1, v2}, Landroid/net/INetd$Stub;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_16
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherGetStats()Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v8}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v8

    :pswitch_17
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherApplyDnsInterfaces()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_18
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-gez v7, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    new-array v0, v7, [Ljava/lang/String;

    :goto_1
    move-object v13, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-gez v14, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    new-array v0, v14, [Ljava/lang/String;

    :goto_2
    move-object v15, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-gez v5, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    new-array v0, v5, [I

    :goto_3
    move-object v4, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-gez v3, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    new-array v0, v3, [I

    :goto_4
    move-object v2, v0

    move-object v0, v11

    move v1, v6

    move-object/from16 v42, v2

    move-object v2, v13

    move/from16 v16, v3

    move-object v3, v15

    move-object/from16 v43, v4

    move/from16 v17, v5

    move-object/from16 v5, v42

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[I[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    move-object/from16 v1, v42

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v8

    :pswitch_19
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v19

    move-object v0, v11

    move v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetd$Stub;->setResolverConfiguration(I[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_1a
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->socketDestroy([Landroid/net/UidRange;[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_1b
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v0, v8

    nop

    :cond_5
    sget-object v1, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->networkRejectNonSecureVpn(Z[Landroid/net/UidRange;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_1c
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->networkRemoveUidRanges(I[Landroid/net/UidRange;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_1d
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->networkAddUidRanges(I[Landroid/net/UidRange;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_1e
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->networkRemoveInterface(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_1f
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->networkAddInterface(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_20
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/net/INetd$Stub;->networkDestroy(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_21
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v8

    goto :goto_5

    :cond_6
    move v2, v0

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    move v0, v8

    nop

    :cond_7
    invoke-virtual {v11, v1, v2, v0}, Landroid/net/INetd$Stub;->networkCreateVpn(IZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_22
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->networkCreatePhysical(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_23
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v0, v8

    nop

    :cond_8
    invoke-virtual {v11, v0}, Landroid/net/INetd$Stub;->bandwidthEnableDataSaver(Z)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_24
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move v0, v8

    nop

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {v11, v1, v0, v2}, Landroid/net/INetd$Stub;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_25
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->isAlive()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :cond_a
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :pswitch_data_0
    .packed-switch 0x1
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
