.class public abstract Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;
.super Landroid/os/HwBinder;
.source "IOneplusParam.java"

# interfaces
.implements Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 408
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 411
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 453
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 454
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 455
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 456
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 457
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x11t
        0x10t
        0x5at
        -0x72t
        -0x72t
        0x28t
        -0x3ft
        0x35t
        -0x1at
        -0x30t
        -0x7t
        0x68t
        -0x20t
        -0x1ct
        0xct
        -0x4dt
        -0x22t
        -0x8t
        0xat
        -0x76t
        0x4at
        -0x7t
        -0x49t
        0x7dt
        -0x5et
        0x7at
        -0x2ft
        0x37t
        0x31t
        -0x6t
        0x10t
        0x26t
    .end array-data

    :array_1
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 416
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.oneplus.hardware.param@1.0::IOneplusParam"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 423
    const-string v0, "vendor.oneplus.hardware.param@1.0::IOneplusParam"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 442
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 462
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 463
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 9
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_a

    .line 735
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 736
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_1d

    .line 737
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 738
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 739
    goto/16 :goto_a

    .line 722
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 723
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 724
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 725
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 726
    goto/16 :goto_a

    .line 727
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;->notifySyspropsChanged()V

    .line 730
    goto/16 :goto_a

    .line 706
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 707
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 708
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 709
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 710
    goto/16 :goto_a

    .line 711
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 714
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 715
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 716
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 717
    goto/16 :goto_a

    .line 691
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 692
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 693
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 694
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 695
    goto/16 :goto_a

    .line 696
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;->ping()V

    .line 699
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 700
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 701
    goto/16 :goto_a

    .line 681
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 682
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_1d

    .line 683
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 684
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 685
    goto/16 :goto_a

    .line 668
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 669
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 670
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 671
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 672
    goto/16 :goto_a

    .line 673
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;->setHALInstrumentation()V

    .line 676
    goto/16 :goto_a

    .line 635
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 636
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 637
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 638
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 639
    goto/16 :goto_a

    .line 640
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 643
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 645
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 647
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 648
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 649
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 650
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 651
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 653
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 654
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 655
    nop

    .line 651
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 658
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 660
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 662
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 663
    goto/16 :goto_a

    .line 619
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 620
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 621
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 622
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 623
    goto/16 :goto_a

    .line 624
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 628
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 630
    goto/16 :goto_a

    .line 605
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 606
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 607
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 608
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 609
    goto/16 :goto_a

    .line 610
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 613
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 614
    goto/16 :goto_a

    .line 589
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 590
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 591
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 592
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 593
    goto/16 :goto_a

    .line 594
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 597
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 598
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 599
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 600
    goto/16 :goto_a

    .line 571
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    .line 572
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_14

    .line 573
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 574
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 575
    goto/16 :goto_a

    .line 576
    :cond_14
    const-string v0, "vendor.oneplus.hardware.param@1.0::IOneplusParam"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 579
    .local v0, "paramitem":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 580
    .local v3, "buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v3}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;->setParamBuf(ILjava/util/ArrayList;)Z

    move-result v4

    .line 581
    .local v4, "_hidl_out_result":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 582
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 583
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 584
    goto/16 :goto_a

    .line 550
    .end local v0    # "paramitem":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v4    # "_hidl_out_result":Z
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    move v1, v2

    nop

    .line 551
    .local v1, "_hidl_is_oneway":Z
    :cond_15
    if-eqz v1, :cond_16

    .line 552
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 553
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 554
    goto/16 :goto_a

    .line 555
    :cond_16
    const-string v0, "vendor.oneplus.hardware.param@1.0::IOneplusParam"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 558
    .restart local v0    # "paramitem":I
    new-instance v2, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub$2;

    invoke-direct {v2, p0, p3}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub$2;-><init>(Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;->getParamBuf(ILvendor/oneplus/hardware/param/V1_0/IOneplusParam$getParamBufCallback;)V

    .line 566
    goto/16 :goto_a

    .line 532
    .end local v0    # "paramitem":I
    .end local v1    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    goto :goto_8

    :cond_17
    move v2, v1

    .line 533
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_18

    .line 534
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 535
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 536
    goto :goto_a

    .line 537
    :cond_18
    const-string v0, "vendor.oneplus.hardware.param@1.0::IOneplusParam"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 540
    .restart local v0    # "paramitem":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 541
    .local v3, "value":I
    invoke-virtual {p0, v0, v3}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;->setParamInt(II)Z

    move-result v4

    .line 542
    .restart local v4    # "_hidl_out_result":Z
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 543
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 544
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 545
    goto :goto_a

    .line 515
    .end local v0    # "paramitem":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "value":I
    .end local v4    # "_hidl_out_result":Z
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    goto :goto_9

    :cond_19
    move v2, v1

    .line 516
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_1a

    .line 517
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 518
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 519
    goto :goto_a

    .line 520
    :cond_1a
    const-string v0, "vendor.oneplus.hardware.param@1.0::IOneplusParam"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 523
    .restart local v0    # "paramitem":I
    invoke-virtual {p0, v0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;->getParamIntSYNC(I)I

    move-result v3

    .line 524
    .local v3, "_hidl_out_value":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 525
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 526
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 527
    goto :goto_a

    .line 494
    .end local v0    # "paramitem":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_value":I
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    move v1, v2

    nop

    .line 495
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1b
    if-eqz v1, :cond_1c

    .line 496
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 497
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 498
    goto :goto_a

    .line 499
    :cond_1c
    const-string v0, "vendor.oneplus.hardware.param@1.0::IOneplusParam"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 502
    .restart local v0    # "paramitem":I
    new-instance v2, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub$1;

    invoke-direct {v2, p0, p3}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub$1;-><init>(Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v2}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;->getParamInt(ILvendor/oneplus/hardware/param/V1_0/IOneplusParam$getParamIntCallback;)V

    .line 510
    nop

    .line 744
    .end local v0    # "paramitem":I
    .end local v1    # "_hidl_is_oneway":Z
    :cond_1d
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 447
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 473
    const-string v0, "vendor.oneplus.hardware.param@1.0::IOneplusParam"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    return-object p0

    .line 476
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    invoke-virtual {p0, p1}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;->registerService(Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 438
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 467
    const/4 v0, 0x1

    return v0
.end method
