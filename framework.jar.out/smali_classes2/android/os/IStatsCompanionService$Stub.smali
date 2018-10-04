.class public abstract Landroid/os/IStatsCompanionService$Stub;
.super Landroid/os/Binder;
.source "IStatsCompanionService.java"

# interfaces
.implements Landroid/os/IStatsCompanionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IStatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IStatsCompanionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IStatsCompanionService"

.field static final TRANSACTION_cancelAlarmForSubscriberTriggering:I = 0x7

.field static final TRANSACTION_cancelAnomalyAlarm:I = 0x3

.field static final TRANSACTION_cancelPullingAlarm:I = 0x5

.field static final TRANSACTION_pullData:I = 0x8

.field static final TRANSACTION_sendDataBroadcast:I = 0x9

.field static final TRANSACTION_sendSubscriberBroadcast:I = 0xa

.field static final TRANSACTION_setAlarmForSubscriberTriggering:I = 0x6

.field static final TRANSACTION_setAnomalyAlarm:I = 0x2

.field static final TRANSACTION_setPullingAlarm:I = 0x4

.field static final TRANSACTION_statsdReady:I = 0x1

.field static final TRANSACTION_triggerUidSnapshot:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IStatsCompanionService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IStatsCompanionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IStatsCompanionService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.os.IStatsCompanionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IStatsCompanionService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/os/IStatsCompanionService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/IStatsCompanionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IStatsCompanionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v10, "android.os.IStatsCompanionService"

    const v0, 0x5f4e5446

    const/4 v8, 0x1

    if-eq v13, v0, :cond_1

    packed-switch v13, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IStatsCompanionService$Stub;->triggerUidSnapshot()V

    return v8

    :pswitch_1
    invoke-virtual {v14, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/StatsDimensionsValue;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v14}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/StatsDimensionsValue;

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v0, v12

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move v13, v8

    move-wide/from16 v8, v23

    move-object/from16 v26, v10

    move-object/from16 v10, v25

    invoke-virtual/range {v0 .. v11}, Landroid/os/IStatsCompanionService$Stub;->sendSubscriberBroadcast(Landroid/os/IBinder;JJJJ[Ljava/lang/String;Landroid/os/StatsDimensionsValue;)V

    return v13

    :pswitch_2
    move v13, v8

    move-object/from16 v26, v10

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v12, v1, v2, v3}, Landroid/os/IStatsCompanionService$Stub;->sendDataBroadcast(Landroid/os/IBinder;J)V

    return v13

    :pswitch_3
    move v13, v8

    move-object v0, v10

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v12, v1}, Landroid/os/IStatsCompanionService$Stub;->pullData(I)[Landroid/os/StatsLogEventWrapper;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v15, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v13

    :pswitch_4
    move v13, v8

    move-object v0, v10

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IStatsCompanionService$Stub;->cancelAlarmForSubscriberTriggering()V

    return v13

    :pswitch_5
    move v13, v8

    move-object v0, v10

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Landroid/os/IStatsCompanionService$Stub;->setAlarmForSubscriberTriggering(J)V

    return v13

    :pswitch_6
    move v13, v8

    move-object v0, v10

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IStatsCompanionService$Stub;->cancelPullingAlarm()V

    return v13

    :pswitch_7
    move v13, v8

    move-object v0, v10

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Landroid/os/IStatsCompanionService$Stub;->setPullingAlarm(J)V

    return v13

    :pswitch_8
    move v13, v8

    move-object v0, v10

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IStatsCompanionService$Stub;->cancelAnomalyAlarm()V

    return v13

    :pswitch_9
    move v13, v8

    move-object v0, v10

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {v12, v1, v2}, Landroid/os/IStatsCompanionService$Stub;->setAnomalyAlarm(J)V

    return v13

    :pswitch_a
    move v13, v8

    move-object v0, v10

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/os/IStatsCompanionService$Stub;->statsdReady()V

    return v13

    :cond_1
    move v13, v8

    move-object v0, v10

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
