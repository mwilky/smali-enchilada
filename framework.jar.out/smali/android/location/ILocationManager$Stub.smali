.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final TRANSACTION_addGnssBatchingCallback:I = 0x13

.field static final TRANSACTION_addGnssMeasurementsListener:I = 0xc

.field static final TRANSACTION_addGnssNavigationMessageListener:I = 0xe

.field static final TRANSACTION_addTestProvider:I = 0x23

.field static final TRANSACTION_clearAllPendingBroadcastsLocked:I = 0x30

.field static final TRANSACTION_clearTestProviderEnabled:I = 0x28

.field static final TRANSACTION_clearTestProviderLocation:I = 0x26

.field static final TRANSACTION_clearTestProviderStatus:I = 0x2a

.field static final TRANSACTION_flushGnssBatch:I = 0x16

.field static final TRANSACTION_geocoderIsPresent:I = 0x8

.field static final TRANSACTION_getAllProviders:I = 0x19

.field static final TRANSACTION_getBackgroundThrottlingWhitelist:I = 0x2f

.field static final TRANSACTION_getBestProvider:I = 0x1b

.field static final TRANSACTION_getCurrentProviderPackageList:I = 0x32

.field static final TRANSACTION_getCurrentProviderPackageListsForInteger:I = 0x33

.field static final TRANSACTION_getFromLocation:I = 0x9

.field static final TRANSACTION_getFromLocationName:I = 0xa

.field static final TRANSACTION_getGnssBatchSize:I = 0x12

.field static final TRANSACTION_getGnssHardwareModelName:I = 0x11

.field static final TRANSACTION_getGnssYearOfHardware:I = 0x10

.field static final TRANSACTION_getLastKnownLocation:I = 0x31

.field static final TRANSACTION_getLastLocation:I = 0x5

.field static final TRANSACTION_getNetworkProviderPackage:I = 0x1e

.field static final TRANSACTION_getProviderProperties:I = 0x1d

.field static final TRANSACTION_getProviders:I = 0x1a

.field static final TRANSACTION_injectLocation:I = 0x18

.field static final TRANSACTION_isLocationEnabledForUser:I = 0x21

.field static final TRANSACTION_isProviderEnabledForUser:I = 0x1f

.field static final TRANSACTION_locationCallbackFinished:I = 0x2e

.field static final TRANSACTION_providerMeetsCriteria:I = 0x1c

.field static final TRANSACTION_registerGnssStatusCallback:I = 0x6

.field static final TRANSACTION_removeGeofence:I = 0x4

.field static final TRANSACTION_removeGnssBatchingCallback:I = 0x14

.field static final TRANSACTION_removeGnssMeasurementsListener:I = 0xd

.field static final TRANSACTION_removeGnssNavigationMessageListener:I = 0xf

.field static final TRANSACTION_removeTestProvider:I = 0x24

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_reportLocation:I = 0x2c

.field static final TRANSACTION_reportLocationBatch:I = 0x2d

.field static final TRANSACTION_requestGeofence:I = 0x3

.field static final TRANSACTION_requestLocationUpdates:I = 0x1

.field static final TRANSACTION_sendExtraCommand:I = 0x2b

.field static final TRANSACTION_sendNiResponse:I = 0xb

.field static final TRANSACTION_setLocationEnabledForUser:I = 0x22

.field static final TRANSACTION_setProviderEnabledForUser:I = 0x20

.field static final TRANSACTION_setTestProviderEnabled:I = 0x27

.field static final TRANSACTION_setTestProviderLocation:I = 0x25

.field static final TRANSACTION_setTestProviderStatus:I = 0x29

.field static final TRANSACTION_startGnssBatch:I = 0x15

.field static final TRANSACTION_stopGnssBatch:I = 0x17

.field static final TRANSACTION_unregisterGnssStatusCallback:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.location.ILocationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/location/ILocationManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/location/ILocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v10, "android.location.ILocationManager"

    const v0, 0x5f4e5446

    const/4 v8, 0x1

    if-eq v14, v0, :cond_1f

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch v14, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->getCurrentProviderPackageListsForInteger(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v8

    :pswitch_1
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->getCurrentProviderPackageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v8

    :pswitch_2
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_0

    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v8}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v8

    :pswitch_3
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->clearAllPendingBroadcastsLocked()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_4
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getBackgroundThrottlingWhitelist()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v8

    :pswitch_5
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->locationCallbackFinished(Landroid/location/ILocationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_6
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->reportLocationBatch(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_7
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v8

    nop

    :cond_2
    invoke-virtual {v13, v1, v0}, Landroid/location/ILocationManager$Stub;->reportLocation(Landroid/location/Location;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_8
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_2

    :cond_3
    nop

    :goto_2
    invoke-virtual {v13, v2, v3, v1}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v1, :cond_4

    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, v12, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v8

    :pswitch_9
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_a
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    move-object v3, v0

    goto :goto_4

    :cond_5
    move-object v3, v1

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v13

    move-object v1, v7

    move v2, v9

    move-wide/from16 v4, v16

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_b
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_c
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    move v0, v8

    nop

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v0, v2}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_d
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_e
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    goto :goto_5

    :cond_7
    nop

    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_f
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_10
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    sget-object v1, Lcom/android/internal/location/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/location/ProviderProperties;

    goto :goto_6

    :cond_8
    nop

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_11
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    move v0, v8

    nop

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->setLocationEnabledForUser(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_12
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->isLocationEnabledForUser(I)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_13
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    move v0, v8

    nop

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v13, v1, v0, v2}, Landroid/location/ILocationManager$Stub;->setProviderEnabledForUser(Ljava/lang/String;ZI)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_14
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_15
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getNetworkProviderPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :pswitch_16
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_b

    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v12, v8}, Lcom/android/internal/location/ProviderProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_b
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v8

    :pswitch_17
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c

    sget-object v1, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Criteria;

    goto :goto_8

    :cond_c
    nop

    :goto_8
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_18
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    sget-object v1, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Criteria;

    goto :goto_9

    :cond_d
    nop

    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e

    move v0, v8

    nop

    :cond_e
    invoke-virtual {v13, v1, v0}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :pswitch_19
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f

    sget-object v1, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Criteria;

    goto :goto_a

    :cond_f
    nop

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    move v0, v8

    nop

    :cond_10
    invoke-virtual {v13, v1, v0}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v8

    :pswitch_1a
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v8

    :pswitch_1b
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/location/Location;

    goto :goto_b

    :cond_11
    nop

    :goto_b
    move-object v0, v1

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->injectLocation(Landroid/location/Location;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_1c
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->stopGnssBatch()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_1d
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->flushGnssBatch(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_1e
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_12

    move v0, v8

    nop

    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v1, v2, v0, v3}, Landroid/location/ILocationManager$Stub;->startGnssBatch(JZLjava/lang/String;)Z

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_1f
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->removeGnssBatchingCallback()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_20
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IBatchedLocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IBatchedLocationCallback;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_21
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->getGnssBatchSize(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_22
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :pswitch_23
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssYearOfHardware()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_24
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_25
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_26
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :pswitch_27
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->addGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_28
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->sendNiResponse(II)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :pswitch_29
    invoke-virtual {v15, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GeocoderParams;

    move-object v11, v0

    goto :goto_c

    :cond_13
    move-object v11, v1

    :goto_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    move-object v0, v13

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move v14, v8

    move-object/from16 v26, v9

    move-wide/from16 v8, v23

    move-object/from16 v27, v10

    move/from16 v10, v25

    move-object/from16 v12, v26

    invoke-virtual/range {v0 .. v12}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v1, v26

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v14

    :pswitch_2a
    move v14, v8

    move-object/from16 v27, v10

    move-object v8, v12

    move-object/from16 v9, v27

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GeocoderParams;

    move-object v6, v0

    goto :goto_d

    :cond_14
    move-object v6, v1

    :goto_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    move-object v0, v13

    move-wide v1, v10

    move-wide/from16 v3, v16

    move v5, v12

    move-object/from16 v28, v7

    invoke-virtual/range {v0 .. v7}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v1, v28

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v14

    :pswitch_2b
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->geocoderIsPresent()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_2c
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2d
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_2e
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_15

    sget-object v1, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationRequest;

    goto :goto_e

    :cond_15
    nop

    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/location/ILocationManager$Stub;->getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_16

    invoke-virtual {v8, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v8, v14}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_f

    :cond_16
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_f
    return v14

    :pswitch_2f
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Geofence;

    goto :goto_10

    :cond_17
    move-object v0, v1

    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_18

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_11

    :cond_18
    nop

    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_30
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationRequest;

    goto :goto_12

    :cond_19
    move-object v0, v1

    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Geofence;

    goto :goto_13

    :cond_1a
    move-object v2, v1

    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1b

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_14

    :cond_1b
    nop

    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v0, v2, v1, v3}, Landroid/location/ILocationManager$Stub;->requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_31
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_15

    :cond_1c
    nop

    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_32
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationRequest;

    goto :goto_16

    :cond_1d
    move-object v0, v1

    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v15}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    goto :goto_17

    :cond_1e
    nop

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v0, v2, v1, v3}, Landroid/location/ILocationManager$Stub;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :cond_1f
    move v14, v8

    move-object v9, v10

    move-object v8, v12

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
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
