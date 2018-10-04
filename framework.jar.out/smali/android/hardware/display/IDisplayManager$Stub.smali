.class public abstract Landroid/hardware/display/IDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IDisplayManager.java"

# interfaces
.implements Landroid/hardware/display/IDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/IDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.display.IDisplayManager"

.field static final TRANSACTION_connectWifiDisplay:I = 0x6

.field static final TRANSACTION_createVirtualDisplay:I = 0xf

.field static final TRANSACTION_disconnectWifiDisplay:I = 0x7

.field static final TRANSACTION_forgetWifiDisplay:I = 0x9

.field static final TRANSACTION_getAmbientBrightnessStats:I = 0x15

.field static final TRANSACTION_getBrightnessConfigurationForUser:I = 0x18

.field static final TRANSACTION_getBrightnessEvents:I = 0x14

.field static final TRANSACTION_getDefaultBrightnessConfiguration:I = 0x19

.field static final TRANSACTION_getDisplayIds:I = 0x2

.field static final TRANSACTION_getDisplayInfo:I = 0x1

.field static final TRANSACTION_getMinimumBrightnessCurve:I = 0x1c

.field static final TRANSACTION_getStableDisplaySize:I = 0x13

.field static final TRANSACTION_getWifiDisplayStatus:I = 0xc

.field static final TRANSACTION_pauseWifiDisplay:I = 0xa

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_releaseVirtualDisplay:I = 0x12

.field static final TRANSACTION_renameWifiDisplay:I = 0x8

.field static final TRANSACTION_requestColorMode:I = 0xd

.field static final TRANSACTION_resizeVirtualDisplay:I = 0x10

.field static final TRANSACTION_resumeWifiDisplay:I = 0xb

.field static final TRANSACTION_setBrightnessConfigurationForUser:I = 0x16

.field static final TRANSACTION_setSaturationLevel:I = 0xe

.field static final TRANSACTION_setTemporaryAutoBrightnessAdjustment:I = 0x1b

.field static final TRANSACTION_setTemporaryBrightness:I = 0x1a

.field static final TRANSACTION_setUserComputeBrightnessConfiguration:I = 0x17

.field static final TRANSACTION_setVirtualDisplaySurface:I = 0x11

.field static final TRANSACTION_startWifiDisplayScan:I = 0x4

.field static final TRANSACTION_stopWifiDisplayScan:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/display/IDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.hardware.display.IDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/display/IDisplayManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/display/IDisplayManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/display/IDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/display/IDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const-string v15, "android.hardware.display.IDisplayManager"

    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v12, v0, :cond_b

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v12, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getMinimumBrightnessCurve()Landroid/hardware/display/Curve;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_0

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v14, v10}, Landroid/hardware/display/Curve;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v10

    :pswitch_1
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryAutoBrightnessAdjustment(F)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_2
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setTemporaryBrightness(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_3
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v14, v10}, Landroid/hardware/display/BrightnessConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v10

    :pswitch_4
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v14, v10}, Landroid/hardware/display/BrightnessConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v10

    :pswitch_5
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->setUserComputeBrightnessConfiguration()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_6
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/BrightnessConfiguration;

    goto :goto_3

    :cond_3
    nop

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v1, v2}, Landroid/hardware/display/IDisplayManager$Stub;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_7
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getAmbientBrightnessStats()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v14, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v10

    :pswitch_8
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getBrightnessEvents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v14, v10}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v10

    :pswitch_9
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_6

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v14, v10}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_6
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v10

    :pswitch_a
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->releaseVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_b
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    goto :goto_7

    :cond_7
    nop

    :goto_7
    invoke-virtual {v11, v1, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setVirtualDisplaySurface(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/view/Surface;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_c
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/hardware/display/IDisplayManager$Stub;->resizeVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :pswitch_d
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/display/IVirtualDisplayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IVirtualDisplayCallback;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/projection/IMediaProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjection;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v13}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    :goto_8
    move-object v8, v0

    goto :goto_9

    :cond_8
    goto :goto_8

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    move-object v0, v11

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v9, v23

    move v12, v10

    move-object/from16 v10, v24

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/display/IDisplayManager$Stub;->createVirtualDisplay(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILjava/lang/String;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_e
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->setSaturationLevel(F)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_f
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->requestColorMode(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_10
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_9

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v14, v12}, Landroid/hardware/display/WifiDisplayStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_9
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v12

    :pswitch_11
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->resumeWifiDisplay()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_12
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->pauseWifiDisplay()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_13
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->forgetWifiDisplay(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_14
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/hardware/display/IDisplayManager$Stub;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_15
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->disconnectWifiDisplay()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_16
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->connectWifiDisplay(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_17
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->stopWifiDisplayScan()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_18
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->startWifiDisplayScan()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_19
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/display/IDisplayManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManagerCallback;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->registerCallback(Landroid/hardware/display/IDisplayManagerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1a
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayIds()[I

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return v12

    :pswitch_1b
    move v12, v10

    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/hardware/display/IDisplayManager$Stub;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_a

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v14, v12}, Landroid/view/DisplayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    :cond_a
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_b
    return v12

    :cond_b
    move v12, v10

    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_data_0
    .packed-switch 0x1
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
