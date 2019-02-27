.class public abstract Landroid/app/IWallpaperManager$Stub;
.super Landroid/os/Binder;
.source "IWallpaperManager.java"

# interfaces
.implements Landroid/app/IWallpaperManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IWallpaperManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IWallpaperManager"

.field static final TRANSACTION_clearWallpaper:I = 0x7

.field static final TRANSACTION_getHeightHint:I = 0xb

.field static final TRANSACTION_getName:I = 0xd

.field static final TRANSACTION_getWaitingForUnLock:I = 0x17

.field static final TRANSACTION_getWallpaper:I = 0x4

.field static final TRANSACTION_getWallpaperColors:I = 0x13

.field static final TRANSACTION_getWallpaperIdForUser:I = 0x5

.field static final TRANSACTION_getWallpaperInfo:I = 0x6

.field static final TRANSACTION_getWidthHint:I = 0xa

.field static final TRANSACTION_hasNamedWallpaper:I = 0x8

.field static final TRANSACTION_isSetWallpaperAllowed:I = 0x10

.field static final TRANSACTION_isWallpaperBackupEligible:I = 0x11

.field static final TRANSACTION_isWallpaperSupported:I = 0xf

.field static final TRANSACTION_registerWallpaperColorsCallback:I = 0x14

.field static final TRANSACTION_setDimensionHints:I = 0x9

.field static final TRANSACTION_setDisplayPadding:I = 0xc

.field static final TRANSACTION_setInAmbientMode:I = 0x16

.field static final TRANSACTION_setLockWallpaperCallback:I = 0x12

.field static final TRANSACTION_setWallpaper:I = 0x1

.field static final TRANSACTION_setWallpaperComponent:I = 0x3

.field static final TRANSACTION_setWallpaperComponentChecked:I = 0x2

.field static final TRANSACTION_settingsRestored:I = 0xe

.field static final TRANSACTION_unregisterWallpaperColorsCallback:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IWallpaperManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IWallpaperManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.app.IWallpaperManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/IWallpaperManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/app/IWallpaperManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IWallpaperManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "android.app.IWallpaperManager"

    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v10, v0, :cond_b

    const/4 v0, 0x0

    const/4 v15, 0x0

    packed-switch v10, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWaitingForUnLock()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v14

    goto :goto_0

    :cond_0
    move v0, v15

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v15, v14

    nop

    :cond_1
    move v1, v15

    invoke-virtual {v9, v0, v1}, Landroid/app/IWallpaperManager$Stub;->setInAmbientMode(ZZ)V

    return v14

    :pswitch_2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/IWallpaperManager$Stub;->unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/IWallpaperManager$Stub;->registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperColors(II)Landroid/app/WallpaperColors;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v12, v14}, Landroid/app/WallpaperColors;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v14

    :pswitch_5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/IWallpaperManager$Stub;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/IWallpaperManager$Stub;->isWallpaperBackupEligible(II)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/IWallpaperManager$Stub;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/IWallpaperManager$Stub;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->settingsRestored()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_2

    :cond_3
    nop

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/app/IWallpaperManager$Stub;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getHeightHint()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IWallpaperManager$Stub;->getWidthHint()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->setDimensionHints(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/IWallpaperManager$Stub;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_10
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->clearWallpaper(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_11
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/app/IWallpaperManager$Stub;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_4

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v14}, Landroid/app/WallpaperInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v14

    :pswitch_12
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/app/IWallpaperManager$Stub;->getWallpaperIdForUser(II)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_13
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v9

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v5

    move-object/from16 v17, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IWallpaperManager$Stub;->getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v12, v14}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    nop

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v1, v17

    invoke-virtual {v1, v12, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return v14

    :pswitch_14
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_5

    :cond_6
    nop

    :goto_5
    invoke-virtual {v9, v0}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponent(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_15
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_6

    :cond_7
    nop

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v9, v0, v1, v2}, Landroid/app/IWallpaperManager$Stub;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_16
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    :goto_7
    move-object v3, v0

    goto :goto_8

    :cond_8
    goto :goto_7

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    move v4, v14

    goto :goto_9

    :cond_9
    move v4, v15

    :goto_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManagerCallback;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object v5, v8

    move/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v21, v8

    move/from16 v8, v20

    invoke-virtual/range {v0 .. v8}, Landroid/app/IWallpaperManager$Stub;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v12, v14}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_a
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    nop

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v1, v21

    invoke-virtual {v1, v12, v14}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return v14

    :cond_b
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_data_0
    .packed-switch 0x1
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
