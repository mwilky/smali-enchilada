.class public abstract Landroid/hardware/location/IGeofenceHardwareCallback$Stub;
.super Landroid/os/Binder;
.source "IGeofenceHardwareCallback.java"

# interfaces
.implements Landroid/hardware/location/IGeofenceHardwareCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IGeofenceHardwareCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IGeofenceHardwareCallback"

.field static final TRANSACTION_onGeofenceAdd:I = 0x2

.field static final TRANSACTION_onGeofencePause:I = 0x4

.field static final TRANSACTION_onGeofenceRemove:I = 0x3

.field static final TRANSACTION_onGeofenceResume:I = 0x5

.field static final TRANSACTION_onGeofenceTransition:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.hardware.location.IGeofenceHardwareCallback"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IGeofenceHardwareCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.hardware.location.IGeofenceHardwareCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/location/IGeofenceHardwareCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/hardware/location/IGeofenceHardwareCallback;

    return-object v1

    :cond_1
    new-instance v1, Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "android.hardware.location.IGeofenceHardwareCallback"

    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v8, v0, :cond_1

    packed-switch v8, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceResume(II)V

    return v11

    :pswitch_1
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofencePause(II)V

    return v11

    :pswitch_2
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceRemove(II)V

    return v11

    :pswitch_3
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceAdd(II)V

    return v11

    :pswitch_4
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object v0, v7

    move v1, v12

    move v2, v13

    move-wide v4, v14

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/location/IGeofenceHardwareCallback$Stub;->onGeofenceTransition(IILandroid/location/Location;JI)V

    return v11

    :cond_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
