.class public abstract Landroid/location/IGeocodeProvider$Stub;
.super Landroid/os/Binder;
.source "IGeocodeProvider.java"

# interfaces
.implements Landroid/location/IGeocodeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGeocodeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGeocodeProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IGeocodeProvider"

.field static final TRANSACTION_getFromLocation:I = 0x1

.field static final TRANSACTION_getFromLocationName:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.location.IGeocodeProvider"

    invoke-virtual {p0, p0, v0}, Landroid/location/IGeocodeProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.location.IGeocodeProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/IGeocodeProvider;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/location/IGeocodeProvider;

    return-object v1

    :cond_1
    new-instance v1, Landroid/location/IGeocodeProvider$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/IGeocodeProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "android.location.IGeocodeProvider"

    const v4, 0x5f4e5446

    const/4 v5, 0x1

    if-eq v0, v4, :cond_2

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v4, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GeocoderParams;

    :goto_0
    move-object/from16 v17, v4

    goto :goto_1

    :cond_0
    goto :goto_0

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, p0

    move-object/from16 v7, v19

    move-wide/from16 v8, v20

    move-wide/from16 v10, v22

    move-wide/from16 v12, v24

    move-wide/from16 v14, v26

    move/from16 v16, v28

    move-object/from16 v18, v4

    invoke-virtual/range {v6 .. v18}, Landroid/location/IGeocodeProvider$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v5

    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    sget-object v4, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GeocoderParams;

    :goto_2
    move-object v13, v4

    goto :goto_3

    :cond_1
    goto :goto_2

    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, p0

    move-wide v8, v15

    move-wide/from16 v10, v17

    move v12, v6

    move-object v14, v4

    invoke-virtual/range {v7 .. v14}, Landroid/location/IGeocodeProvider$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v5

    :cond_2
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
