.class Landroid/location/IGeocodeProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGeocodeProvider.java"

# interfaces
.implements Landroid/location/IGeocodeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGeocodeProvider$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.location.IGeocodeProvider"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p6, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p6, v0, v3}, Landroid/location/GeocoderParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v4, p0, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p7, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    nop

    return-object v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p11

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v3, v0

    :try_start_0
    const-string v0, "android.location.IGeocodeProvider"

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    move-object/from16 v4, p1

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-wide/from16 v5, p2

    :try_start_2
    invoke-virtual {v2, v5, v6}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-wide/from16 v7, p4

    :try_start_3
    invoke-virtual {v2, v7, v8}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-wide/from16 v9, p6

    :try_start_4
    invoke-virtual {v2, v9, v10}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-wide/from16 v11, p8

    :try_start_5
    invoke-virtual {v2, v11, v12}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v13, p10

    :try_start_6
    invoke-virtual {v2, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v2, v0}, Landroid/location/GeocoderParams;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_0
    move-object/from16 v14, p0

    :try_start_7
    iget-object v15, v14, Landroid/location/IGeocodeProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    invoke-interface {v15, v1, v2, v3, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v15, p12

    :try_start_8
    invoke-virtual {v3, v15, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    nop

    nop

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_2

    :catchall_7
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_1

    :catchall_8
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p1

    :goto_1
    move-wide/from16 v5, p2

    :goto_2
    move-wide/from16 v7, p4

    :goto_3
    move-wide/from16 v9, p6

    :goto_4
    move-wide/from16 v11, p8

    :goto_5
    move/from16 v13, p10

    :goto_6
    move-object/from16 v15, p12

    :goto_7
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.location.IGeocodeProvider"

    return-object v0
.end method
