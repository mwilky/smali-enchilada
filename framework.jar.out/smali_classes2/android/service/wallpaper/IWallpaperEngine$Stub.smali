.class public abstract Landroid/service/wallpaper/IWallpaperEngine$Stub;
.super Landroid/os/Binder;
.source "IWallpaperEngine.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.wallpaper.IWallpaperEngine"

.field static final TRANSACTION_destroy:I = 0x8

.field static final TRANSACTION_dispatchPointer:I = 0x5

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0x6

.field static final TRANSACTION_requestWallpaperColors:I = 0x7

.field static final TRANSACTION_setDesiredSize:I = 0x1

.field static final TRANSACTION_setDisplayPadding:I = 0x2

.field static final TRANSACTION_setInAmbientMode:I = 0x4

.field static final TRANSACTION_setVisibility:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-virtual {p0, p0, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperEngine;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/service/wallpaper/IWallpaperEngine;

    return-object v1

    :cond_1
    new-instance v1, Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.service.wallpaper.IWallpaperEngine"

    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->destroy()V

    return v10

    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->requestWallpaperColors()V

    return v10

    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    move-object v0, v6

    move-object v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V

    return v10

    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/MotionEvent;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move-object v0, v1

    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->dispatchPointer(Landroid/view/MotionEvent;)V

    return v10

    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v10

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    move v0, v10

    nop

    :cond_3
    invoke-virtual {v6, v1, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setInAmbientMode(ZZ)V

    return v10

    :pswitch_5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    move v0, v10

    nop

    :cond_4
    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setVisibility(Z)V

    return v10

    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v8}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_3

    :cond_5
    nop

    :goto_3
    move-object v0, v1

    invoke-virtual {v6, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setDisplayPadding(Landroid/graphics/Rect;)V

    return v10

    :pswitch_7
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setDesiredSize(II)V

    return v10

    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

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
.end method
