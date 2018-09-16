.class public abstract Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;
.super Landroid/os/HwBinder;
.source "IVendorFingerprintExtensions.java"

# interfaces
.implements Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 480
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 483
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 525
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 526
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 527
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 528
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 529
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

    .line 501
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
        0x6ct
        0x3ft
        -0x62t
        0x8t
        -0x6dt
        -0x28t
        -0x11t
        -0x48t
        -0x56t
        -0x65t
        -0x54t
        0x4dt
        -0x10t
        -0x2bt
        0x1et
        0x64t
        -0x4dt
        0x23t
        0x4et
        -0x1t
        0x29t
        0x78t
        -0x3et
        0xet
        -0x33t
        -0x1t
        0x36t
        0xat
        -0x4dt
        -0x5et
        0x59t
        0x60t
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

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

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

    .line 495
    const-string/jumbo v0, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 534
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 535
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

    .line 563
    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_f

    .line 845
    :sswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_0

    move v1, v2

    nop

    .line 846
    .local v1, "_hidl_is_oneway":Z
    :cond_0
    if-eqz v1, :cond_23

    .line 847
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 849
    goto/16 :goto_f

    .line 832
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 833
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_1
    if-eq v1, v2, :cond_2

    .line 834
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 835
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 836
    goto/16 :goto_f

    .line 837
    :cond_2
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->notifySyspropsChanged()V

    .line 840
    goto/16 :goto_f

    .line 816
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 817
    .local v2, "_hidl_is_oneway":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 818
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 819
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 820
    goto/16 :goto_f

    .line 821
    :cond_4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 824
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 825
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 826
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 827
    goto/16 :goto_f

    .line 801
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v1

    .line 802
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 803
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 804
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 805
    goto/16 :goto_f

    .line 806
    :cond_6
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->ping()V

    .line 809
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 810
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 811
    goto/16 :goto_f

    .line 791
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_7

    move v1, v2

    nop

    .line 792
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_7
    if-eqz v1, :cond_23

    .line 793
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 794
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 795
    goto/16 :goto_f

    .line 778
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_8

    move v1, v2

    nop

    .line 779
    .restart local v1    # "_hidl_is_oneway":Z
    :cond_8
    if-eq v1, v2, :cond_9

    .line 780
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 781
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 782
    goto/16 :goto_f

    .line 783
    :cond_9
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->setHALInstrumentation()V

    .line 786
    goto/16 :goto_f

    .line 745
    .end local v1    # "_hidl_is_oneway":Z
    :sswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    move v2, v1

    .line 746
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_2
    if-eqz v2, :cond_b

    .line 747
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 748
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 749
    goto/16 :goto_f

    .line 750
    :cond_b
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 753
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 755
    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 757
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 758
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 759
    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 760
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 761
    .local v5, "childBlob":Landroid/os/HwBlob;
    nop

    .line 761
    .local v1, "_hidl_index_0":I
    :goto_3
    if-ge v1, v4, :cond_c

    .line 763
    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    .line 764
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 765
    nop

    .line 761
    .end local v6    # "_hidl_array_offset_1":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 768
    .end local v1    # "_hidl_index_0":I
    :cond_c
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 770
    .end local v4    # "_hidl_vec_size":I
    .end local v5    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 772
    .end local v3    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 773
    goto/16 :goto_f

    .line 729
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_d

    goto :goto_4

    :cond_d
    move v2, v1

    .line 730
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_4
    if-eqz v2, :cond_e

    .line 731
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 732
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 733
    goto/16 :goto_f

    .line 734
    :cond_e
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 738
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 740
    goto/16 :goto_f

    .line 715
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_8
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v2, v1

    .line 716
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_5
    if-eqz v2, :cond_10

    .line 717
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 718
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 719
    goto/16 :goto_f

    .line 720
    :cond_10
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 723
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 724
    goto/16 :goto_f

    .line 699
    .end local v2    # "_hidl_is_oneway":Z
    :sswitch_9
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_11

    goto :goto_6

    :cond_11
    move v2, v1

    .line 700
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_6
    if-eqz v2, :cond_12

    .line 701
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 702
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 703
    goto/16 :goto_f

    .line 704
    :cond_12
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 706
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 707
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 708
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 709
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 710
    goto/16 :goto_f

    .line 682
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_0
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_13

    goto :goto_7

    :cond_13
    move v2, v1

    .line 683
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_7
    if-eqz v2, :cond_14

    .line 684
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 685
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 686
    goto/16 :goto_f

    .line 687
    :cond_14
    const-string/jumbo v0, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 690
    .local v0, "level":I
    invoke-virtual {p0, v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->setParam(I)I

    move-result v3

    .line 691
    .local v3, "_hidl_out_debugErrno":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 692
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 693
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 694
    goto/16 :goto_f

    .line 666
    .end local v0    # "level":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_debugErrno":I
    :pswitch_1
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_15
    move v2, v1

    .line 667
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_8
    if-eqz v2, :cond_16

    .line 668
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 669
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 670
    goto/16 :goto_f

    .line 671
    :cond_16
    const-string/jumbo v0, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->stopAllEngTest()I

    move-result v0

    .line 674
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 675
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 676
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 677
    goto/16 :goto_f

    .line 649
    .end local v0    # "_hidl_out_debugErrno":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_2
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_17

    goto :goto_9

    :cond_17
    move v2, v1

    .line 650
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_9
    if-eqz v2, :cond_18

    .line 651
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 652
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 653
    goto/16 :goto_f

    .line 654
    :cond_18
    const-string/jumbo v0, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 657
    .local v0, "cmdId":I
    invoke-virtual {p0, v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->stopEngTest(I)I

    move-result v3

    .line 658
    .restart local v3    # "_hidl_out_debugErrno":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 659
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 660
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 661
    goto/16 :goto_f

    .line 632
    .end local v0    # "cmdId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_debugErrno":I
    :pswitch_3
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_19

    goto :goto_a

    :cond_19
    move v2, v1

    .line 633
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_a
    if-eqz v2, :cond_1a

    .line 634
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 635
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 636
    goto/16 :goto_f

    .line 637
    :cond_1a
    const-string/jumbo v0, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 640
    .restart local v0    # "cmdId":I
    invoke-virtual {p0, v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->startEngTest(I)I

    move-result v3

    .line 641
    .restart local v3    # "_hidl_out_debugErrno":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 642
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 643
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 644
    goto/16 :goto_f

    .line 615
    .end local v0    # "cmdId":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_debugErrno":I
    :pswitch_4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b

    goto :goto_b

    :cond_1b
    move v2, v1

    .line 616
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_b
    if-eqz v2, :cond_1c

    .line 617
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 618
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 619
    goto/16 :goto_f

    .line 620
    :cond_1c
    const-string/jumbo v0, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensionsCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensionsCallback;

    move-result-object v0

    .line 623
    .local v0, "Callback":Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensionsCallback;
    invoke-virtual {p0, v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->setEngCallback(Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensionsCallback;)I

    move-result v3

    .line 624
    .restart local v3    # "_hidl_out_debugErrno":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 625
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 626
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 627
    goto/16 :goto_f

    .line 599
    .end local v0    # "Callback":Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensionsCallback;
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_debugErrno":I
    :pswitch_5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d

    goto :goto_c

    :cond_1d
    move v2, v1

    .line 600
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_c
    if-eqz v2, :cond_1e

    .line 601
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 602
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 603
    goto :goto_f

    .line 604
    :cond_1e
    const-string/jumbo v0, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->getEngTest()Ljava/util/ArrayList;

    move-result-object v0

    .line 607
    .local v0, "_hidl_out_FpTests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oneplus/fingerprint/extension/V1_0/FpTest;>;"
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 608
    invoke-static {p3, v0}, Lvendor/oneplus/fingerprint/extension/V1_0/FpTest;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 609
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 610
    goto :goto_f

    .line 583
    .end local v0    # "_hidl_out_FpTests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oneplus/fingerprint/extension/V1_0/FpTest;>;"
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_6
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1f

    goto :goto_d

    :cond_1f
    move v2, v1

    .line 584
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_d
    if-eqz v2, :cond_20

    .line 585
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 586
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 587
    goto :goto_f

    .line 588
    :cond_20
    const-string/jumbo v0, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->getStatus()I

    move-result v0

    .line 591
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 592
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 593
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 594
    goto :goto_f

    .line 566
    .end local v0    # "_hidl_out_debugErrno":I
    .end local v2    # "_hidl_is_oneway":Z
    :pswitch_7
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_21

    goto :goto_e

    :cond_21
    move v2, v1

    .line 567
    .restart local v2    # "_hidl_is_oneway":Z
    :goto_e
    if-eqz v2, :cond_22

    .line 568
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 569
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 570
    goto :goto_f

    .line 571
    :cond_22
    const-string/jumbo v0, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 574
    .local v0, "status":I
    invoke-virtual {p0, v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->updateStatus(I)I

    move-result v3

    .line 575
    .restart local v3    # "_hidl_out_debugErrno":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 576
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 577
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 578
    nop

    .line 854
    .end local v0    # "status":I
    .end local v2    # "_hidl_is_oneway":Z
    .end local v3    # "_hidl_out_debugErrno":I
    :cond_23
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
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

    .line 519
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 545
    const-string/jumbo v0, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    return-object p0

    .line 548
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

    .line 552
    invoke-virtual {p0, p1}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->registerService(Ljava/lang/String;)V

    .line 553
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 510
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 539
    const/4 v0, 0x1

    return v0
.end method
