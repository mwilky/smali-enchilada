.class public abstract Landroid/app/usage/IUsageStatsManager$Stub;
.super Landroid/os/Binder;
.source "IUsageStatsManager.java"

# interfaces
.implements Landroid/app/usage/IUsageStatsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/IUsageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/IUsageStatsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.usage.IUsageStatsManager"

.field static final TRANSACTION_getAppStandbyBucket:I = 0xd

.field static final TRANSACTION_getAppStandbyBuckets:I = 0xf

.field static final TRANSACTION_isAppInactive:I = 0x9

.field static final TRANSACTION_onCarrierPrivilegedAppsChanged:I = 0xb

.field static final TRANSACTION_queryConfigurationStats:I = 0x2

.field static final TRANSACTION_queryEventStats:I = 0x3

.field static final TRANSACTION_queryEvents:I = 0x4

.field static final TRANSACTION_queryEventsForPackage:I = 0x5

.field static final TRANSACTION_queryEventsForPackageForUser:I = 0x7

.field static final TRANSACTION_queryEventsForUser:I = 0x6

.field static final TRANSACTION_queryUsageStats:I = 0x1

.field static final TRANSACTION_registerAppUsageObserver:I = 0x11

.field static final TRANSACTION_reportChooserSelection:I = 0xc

.field static final TRANSACTION_setAppInactive:I = 0x8

.field static final TRANSACTION_setAppStandbyBucket:I = 0xe

.field static final TRANSACTION_setAppStandbyBuckets:I = 0x10

.field static final TRANSACTION_unregisterAppUsageObserver:I = 0x12

.field static final TRANSACTION_whitelistAppTemporarily:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.usage.IUsageStatsManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/usage/IUsageStatsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.app.usage.IUsageStatsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/usage/IUsageStatsManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/usage/IUsageStatsManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.app.usage.IUsageStatsManager"

    const v0, 0x5f4e5446

    const/4 v13, 0x1

    if-eq v9, v0, :cond_b

    const/4 v0, 0x0

    const/4 v14, 0x0

    packed-switch v9, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterAppUsageObserver(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    goto :goto_0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move v1, v7

    move-object v2, v14

    move-wide v3, v15

    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    goto :goto_2

    :cond_1
    nop

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v11, v13}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_2
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v13

    :pswitch_4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppStandbyBucket(Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v8

    move-object v1, v6

    move v2, v7

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_7
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/IUsageStatsManager$Stub;->onCarrierPrivilegedAppsChanged()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_8
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->whitelistAppTemporarily(Ljava/lang/String;JI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_9
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v8, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->isAppInactive(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v13

    :pswitch_a
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v14, v13

    nop

    :cond_3
    move v1, v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppInactive(Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v13

    :pswitch_b
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    move-object v0, v8

    move-wide v1, v15

    move-wide/from16 v3, v17

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    invoke-virtual/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v13}, Landroid/app/usage/UsageEvents;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v13

    :pswitch_c
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move-wide v1, v15

    move-wide/from16 v3, v17

    move v5, v7

    move-object/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v13}, Landroid/app/usage/UsageEvents;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v13

    :pswitch_d
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move-wide v1, v6

    move-wide v3, v15

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_6

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v13}, Landroid/app/usage/UsageEvents;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_6
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    return v13

    :pswitch_e
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move-wide v1, v6

    move-wide v3, v15

    move-object/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_7

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v13}, Landroid/app/usage/UsageEvents;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_7
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v13

    :pswitch_f
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move v1, v7

    move-wide v2, v15

    move-wide/from16 v4, v17

    move-object/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_8

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v13}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8

    :cond_8
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    :goto_8
    return v13

    :pswitch_10
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move v1, v7

    move-wide v2, v15

    move-wide/from16 v4, v17

    move-object/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_9

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v13}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_9
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    :goto_9
    return v13

    :pswitch_11
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move v1, v7

    move-wide v2, v15

    move-wide/from16 v4, v17

    move-object/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_a

    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v11, v13}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_a
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeInt(I)V

    :goto_a
    return v13

    :cond_b
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
