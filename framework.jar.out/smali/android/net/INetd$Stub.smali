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

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.net.INetd"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetd;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    return-object v0

    .line 27
    :cond_0
    const-string v0, "android.net.INetd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetd;

    if-eqz v1, :cond_1

    .line 29
    move-object v1, v0

    check-cast v1, Landroid/net/INetd;

    return-object v1

    .line 31
    :cond_1
    new-instance v1, Landroid/net/INetd$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 44
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    .line 39
    const-string v11, "android.net.INetd"

    .line 40
    .local v11, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v14, v0, :cond_a

    const/4 v0, 0x0

    packed-switch v14, :pswitch_data_0

    .line 611
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 602
    :pswitch_0
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 605
    .local v0, "_arg0":I
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->resolveFlushCacheForNet(I)V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    return v10

    .line 594
    .end local v0    # "_arg0":I
    :pswitch_1
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->trafficCheckBpfStatsEnable()Z

    move-result v0

    .line 596
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    return v10

    .line 583
    .end local v0    # "_result":Z
    :pswitch_2
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 588
    .local v1, "_arg1":I
    invoke-virtual {v15, v0, v1}, Landroid/net/INetd$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    return v10

    .line 568
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 572
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 576
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 577
    .local v3, "_arg3":I
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    return v10

    .line 553
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_4
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 557
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 559
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 561
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 562
    .restart local v3    # "_arg3":I
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    return v10

    .line 544
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_5
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 547
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->removeVirtualTunnelInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    return v10

    .line 527
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 531
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 533
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 535
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 537
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 538
    .local v16, "_arg4":I
    move-object v0, v15

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->updateVirtualTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    return v10

    .line 510
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_7
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 514
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 516
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 518
    .restart local v8    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 520
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 521
    .restart local v16    # "_arg4":I
    move-object v0, v15

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->addVirtualTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    return v10

    .line 491
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_8
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 495
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 497
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 499
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 501
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 503
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 504
    .local v18, "_arg5":I
    move-object v0, v15

    move v1, v7

    move v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecDeleteSecurityPolicy(IILjava/lang/String;Ljava/lang/String;II)V

    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    return v10

    .line 470
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_9
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 474
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 476
    .local v9, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 478
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 480
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 482
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 484
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 485
    .local v20, "_arg6":I
    move-object v0, v15

    move v1, v8

    move v2, v9

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetd$Stub;->ipSecUpdateSecurityPolicy(IILjava/lang/String;Ljava/lang/String;III)V

    .line 486
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    return v10

    .line 449
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    :pswitch_a
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 453
    .restart local v8    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 455
    .restart local v9    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 457
    .restart local v16    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 459
    .restart local v17    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 461
    .restart local v18    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 463
    .restart local v19    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 464
    .restart local v20    # "_arg6":I
    move-object v0, v15

    move v1, v8

    move v2, v9

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetd$Stub;->ipSecAddSecurityPolicy(IILjava/lang/String;Ljava/lang/String;III)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    return v10

    .line 440
    .end local v8    # "_arg0":I
    .end local v9    # "_arg1":I
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":I
    .end local v20    # "_arg6":I
    :pswitch_b
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 443
    .local v0, "_arg0":Ljava/io/FileDescriptor;
    invoke-virtual {v15, v0}, Landroid/net/INetd$Stub;->ipSecRemoveTransportModeTransform(Ljava/io/FileDescriptor;)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    return v10

    .line 421
    .end local v0    # "_arg0":Ljava/io/FileDescriptor;
    :pswitch_c
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 425
    .local v7, "_arg0":Ljava/io/FileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 427
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 429
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 431
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 433
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 434
    .local v18, "_arg5":I
    move-object v0, v15

    move-object v1, v7

    move v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecApplyTransportModeTransform(Ljava/io/FileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    return v10

    .line 402
    .end local v7    # "_arg0":Ljava/io/FileDescriptor;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":I
    :pswitch_d
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 406
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 408
    .local v8, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 410
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 412
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 414
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 415
    .restart local v18    # "_arg5":I
    move-object v0, v15

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/net/INetd$Stub;->ipSecDeleteSecurityAssociation(ILjava/lang/String;Ljava/lang/String;III)V

    .line 416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    return v10

    .line 355
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_e
    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 359
    .local v21, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 361
    .local v22, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 363
    .local v23, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 365
    .local v24, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 367
    .local v25, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 369
    .local v26, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 371
    .local v27, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 373
    .local v28, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 375
    .local v29, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v30

    .line 377
    .local v30, "_arg9":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .line 379
    .local v31, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 381
    .local v32, "_arg11":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v33

    .line 383
    .local v33, "_arg12":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .line 385
    .local v34, "_arg13":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 387
    .local v35, "_arg14":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v36

    .line 389
    .local v36, "_arg15":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 391
    .local v37, "_arg16":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 393
    .local v38, "_arg17":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 395
    .local v39, "_arg18":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 396
    .local v40, "_arg19":I
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

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v41, "descriptor":Ljava/lang/String;
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

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v8, 0x1

    return v8

    .line 339
    .end local v21    # "_arg0":I
    .end local v22    # "_arg1":I
    .end local v23    # "_arg2":Ljava/lang/String;
    .end local v24    # "_arg3":Ljava/lang/String;
    .end local v25    # "_arg4":I
    .end local v26    # "_arg5":I
    .end local v27    # "_arg6":I
    .end local v28    # "_arg7":I
    .end local v29    # "_arg8":Ljava/lang/String;
    .end local v30    # "_arg9":[B
    .end local v31    # "_arg10":I
    .end local v32    # "_arg11":Ljava/lang/String;
    .end local v33    # "_arg12":[B
    .end local v34    # "_arg13":I
    .end local v35    # "_arg14":Ljava/lang/String;
    .end local v36    # "_arg15":[B
    .end local v37    # "_arg16":I
    .end local v38    # "_arg17":I
    .end local v39    # "_arg18":I
    .end local v40    # "_arg19":I
    .end local v41    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_f
    move v8, v10

    move-object/from16 v41, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v41    # "descriptor":Ljava/lang/String;
    move-object/from16 v10, v41

    move-object/from16 v9, p2

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    .end local v41    # "descriptor":Ljava/lang/String;
    .local v10, "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 343
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 345
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 348
    .restart local v3    # "_arg3":I
    move-object/from16 v11, p0

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/net/INetd$Stub;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 349
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    move-object/from16 v12, p3

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    return v8

    .line 328
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_10
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 332
    .local v0, "_arg0":Ljava/io/FileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    .local v1, "_arg1":I
    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->ipSecSetEncapSocketOwner(Ljava/io/FileDescriptor;I)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    return v8

    .line 319
    .end local v0    # "_arg0":Ljava/io/FileDescriptor;
    .end local v1    # "_arg1":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_11
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 322
    .local v0, "_arg0":I
    invoke-virtual {v11, v0}, Landroid/net/INetd$Stub;->setMetricsReportingLevel(I)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    return v8

    .line 311
    .end local v0    # "_arg0":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_12
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->getMetricsReportingLevel()I

    move-result v0

    .line 313
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    return v8

    .line 294
    .end local v0    # "_result":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_13
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 298
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 300
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 302
    .local v13, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 304
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 305
    .local v15, "_arg4":Ljava/lang/String;
    move-object v0, v11

    move v1, v6

    move v2, v7

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    return v8

    .line 281
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .end local v13    # "_arg2":Ljava/lang/String;
    .end local v14    # "_arg3":Ljava/lang/String;
    .end local v15    # "_arg4":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_14
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 288
    .local v2, "_arg2":I
    invoke-virtual {v11, v0, v1, v2}, Landroid/net/INetd$Stub;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    return v8

    .line 268
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_15
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 274
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 275
    .restart local v2    # "_arg2":I
    invoke-virtual {v11, v0, v1, v2}, Landroid/net/INetd$Stub;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    return v8

    .line 254
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_16
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherGetStats()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 256
    .local v1, "_result":Landroid/os/PersistableBundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    invoke-virtual {v1, v12, v8}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    :goto_0
    return v8

    .line 246
    .end local v1    # "_result":Landroid/os/PersistableBundle;
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_17
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherApplyDnsInterfaces()Z

    move-result v0

    .line 248
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    return v8

    .line 201
    .end local v0    # "_result":Z
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_18
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 205
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 206
    .local v7, "_arg1_length":I
    if-gez v7, :cond_1

    .line 207
    const/4 v0, 0x0

    .local v0, "_arg1":[Ljava/lang/String;
    goto :goto_1

    .line 210
    .end local v0    # "_arg1":[Ljava/lang/String;
    :cond_1
    new-array v0, v7, [Ljava/lang/String;

    .restart local v0    # "_arg1":[Ljava/lang/String;
    :goto_1
    move-object v13, v0

    .line 213
    .end local v0    # "_arg1":[Ljava/lang/String;
    .local v13, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 214
    .local v14, "_arg2_length":I
    if-gez v14, :cond_2

    .line 215
    const/4 v0, 0x0

    .local v0, "_arg2":[Ljava/lang/String;
    goto :goto_2

    .line 218
    .end local v0    # "_arg2":[Ljava/lang/String;
    :cond_2
    new-array v0, v14, [Ljava/lang/String;

    .restart local v0    # "_arg2":[Ljava/lang/String;
    :goto_2
    move-object v15, v0

    .line 221
    .end local v0    # "_arg2":[Ljava/lang/String;
    .local v15, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 222
    .local v5, "_arg3_length":I
    if-gez v5, :cond_3

    .line 223
    const/4 v0, 0x0

    .local v0, "_arg3":[I
    goto :goto_3

    .line 226
    .end local v0    # "_arg3":[I
    :cond_3
    new-array v0, v5, [I

    .restart local v0    # "_arg3":[I
    :goto_3
    move-object v4, v0

    .line 229
    .end local v0    # "_arg3":[I
    .local v4, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 230
    .local v3, "_arg4_length":I
    if-gez v3, :cond_4

    .line 231
    const/4 v0, 0x0

    .local v0, "_arg4":[I
    goto :goto_4

    .line 234
    .end local v0    # "_arg4":[I
    :cond_4
    new-array v0, v3, [I

    .restart local v0    # "_arg4":[I
    :goto_4
    move-object v2, v0

    .line 236
    .end local v0    # "_arg4":[I
    .local v2, "_arg4":[I
    move-object v0, v11

    move v1, v6

    move-object/from16 v42, v2

    move-object v2, v13

    .end local v2    # "_arg4":[I
    .local v42, "_arg4":[I
    move/from16 v16, v3

    move-object v3, v15

    .end local v3    # "_arg4_length":I
    .local v16, "_arg4_length":I
    move-object/from16 v43, v4

    .end local v4    # "_arg3":[I
    .local v43, "_arg3":[I
    move/from16 v17, v5

    move-object/from16 v5, v42

    .end local v5    # "_arg3_length":I
    .local v17, "_arg3_length":I
    invoke-virtual/range {v0 .. v5}, Landroid/net/INetd$Stub;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[I[I)V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 239
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, v43

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 241
    .end local v43    # "_arg3":[I
    .local v0, "_arg3":[I
    move-object/from16 v1, v42

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 242
    .end local v42    # "_arg4":[I
    .local v1, "_arg4":[I
    return v8

    .line 180
    .end local v0    # "_arg3":[I
    .end local v1    # "_arg4":[I
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1_length":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .end local v13    # "_arg1":[Ljava/lang/String;
    .end local v14    # "_arg2_length":I
    .end local v15    # "_arg2":[Ljava/lang/String;
    .end local v16    # "_arg4_length":I
    .end local v17    # "_arg3_length":I
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_19
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 184
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 186
    .local v14, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    .line 188
    .restart local v15    # "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    .line 190
    .local v16, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 192
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    .line 194
    .local v18, "_arg5":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v19

    .line 195
    .local v19, "_arg6":[Ljava/lang/String;
    move-object v0, v11

    move v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetd$Stub;->setResolverConfiguration(I[Ljava/lang/String;[Ljava/lang/String;[ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    return v8

    .line 169
    .end local v10    # "descriptor":Ljava/lang/String;
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":[Ljava/lang/String;
    .end local v15    # "_arg2":[Ljava/lang/String;
    .end local v16    # "_arg3":[I
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":[Ljava/lang/String;
    .end local v19    # "_arg6":[Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1a
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    sget-object v0, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/UidRange;

    .line 173
    .local v0, "_arg0":[Landroid/net/UidRange;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 174
    .local v1, "_arg1":[I
    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->socketDestroy([Landroid/net/UidRange;[I)V

    .line 175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    return v8

    .line 158
    .end local v0    # "_arg0":[Landroid/net/UidRange;
    .end local v1    # "_arg1":[I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1b
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v0, v8

    nop

    .line 162
    .local v0, "_arg0":Z
    :cond_5
    sget-object v1, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    .line 163
    .local v1, "_arg1":[Landroid/net/UidRange;
    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->networkRejectNonSecureVpn(Z[Landroid/net/UidRange;)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    return v8

    .line 147
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":[Landroid/net/UidRange;
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1c
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .local v0, "_arg0":I
    sget-object v1, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    .line 152
    .restart local v1    # "_arg1":[Landroid/net/UidRange;
    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->networkRemoveUidRanges(I[Landroid/net/UidRange;)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    return v8

    .line 136
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/net/UidRange;
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1d
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRange;

    .line 141
    .restart local v1    # "_arg1":[Landroid/net/UidRange;
    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->networkAddUidRanges(I[Landroid/net/UidRange;)V

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    return v8

    .line 125
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/net/UidRange;
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1e
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->networkRemoveInterface(ILjava/lang/String;)V

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    return v8

    .line 114
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_1f
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 118
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->networkAddInterface(ILjava/lang/String;)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    return v8

    .line 105
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_20
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .restart local v0    # "_arg0":I
    invoke-virtual {v11, v0}, Landroid/net/INetd$Stub;->networkDestroy(I)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    return v8

    .line 92
    .end local v0    # "_arg0":I
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_21
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v8

    goto :goto_5

    :cond_6
    move v2, v0

    .line 98
    .local v2, "_arg1":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    move v0, v8

    nop

    .line 99
    .local v0, "_arg2":Z
    :cond_7
    invoke-virtual {v11, v1, v2, v0}, Landroid/net/INetd$Stub;->networkCreateVpn(IZZ)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    return v8

    .line 81
    .end local v0    # "_arg2":Z
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Z
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_22
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Landroid/net/INetd$Stub;->networkCreatePhysical(ILjava/lang/String;)V

    .line 87
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    return v8

    .line 71
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_23
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    move v0, v8

    nop

    .line 74
    .local v0, "_arg0":Z
    :cond_8
    invoke-virtual {v11, v0}, Landroid/net/INetd$Stub;->bandwidthEnableDataSaver(Z)Z

    move-result v1

    .line 75
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return v8

    .line 57
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Z
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_24
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9

    move v0, v8

    nop

    .line 63
    .local v0, "_arg1":Z
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 64
    .local v2, "_arg2":[I
    invoke-virtual {v11, v1, v0, v2}, Landroid/net/INetd$Stub;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v3

    .line 65
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    return v8

    .line 49
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg2":[I
    .end local v3    # "_result":Z
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_25
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->isAlive()Z

    move-result v0

    .line 51
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return v8

    .line 44
    .end local v0    # "_result":Z
    .end local v10    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :cond_a
    move v8, v10

    move-object v10, v11

    move-object v9, v13

    move-object v11, v15

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v10    # "descriptor":Ljava/lang/String;
    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
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
