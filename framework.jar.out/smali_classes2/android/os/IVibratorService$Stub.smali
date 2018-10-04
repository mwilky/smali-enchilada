.class public abstract Landroid/os/IVibratorService$Stub;
.super Landroid/os/Binder;
.source "IVibratorService.java"

# interfaces
.implements Landroid/os/IVibratorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVibratorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVibratorService"

.field static final TRANSACTION_cancelVibrate:I = 0x4

.field static final TRANSACTION_hasAmplitudeControl:I = 0x2

.field static final TRANSACTION_hasVibrator:I = 0x1

.field static final TRANSACTION_vibrate:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IVibratorService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVibratorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.os.IVibratorService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVibratorService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/os/IVibratorService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/IVibratorService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVibratorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "android.os.IVibratorService"

    const v4, 0x5f4e5446

    const/4 v5, 0x1

    if-eq v0, v4, :cond_1

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v12, p0

    invoke-virtual {v12, v4}, Landroid/os/IVibratorService$Stub;->cancelVibrate(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :pswitch_1
    move-object/from16 v12, p0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/os/VibrationEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/VibrationEffect;

    :goto_0
    move-object v9, v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    move-object v6, v12

    move v7, v4

    move-object v8, v13

    move v10, v14

    move-object v11, v15

    invoke-virtual/range {v6 .. v11}, Landroid/os/IVibratorService$Stub;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :pswitch_2
    move-object/from16 v12, p0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVibratorService$Stub;->hasAmplitudeControl()Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :pswitch_3
    move-object/from16 v12, p0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IVibratorService$Stub;->hasVibrator()Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :cond_1
    move-object/from16 v12, p0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
