.class public Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
.super Landroid/os/BatteryStats$Uid$Sensor;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl$Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sensor"
.end annotation


# instance fields
.field protected mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field final mHandle:I

.field mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

.field protected mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Sensor;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    return-void
.end method

.method private readTimersFromParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;
    .locals 11

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mUid:Lcom/android/internal/os/BatteryStatsImpl$Uid;

    const/4 v6, 0x0

    move-object v3, v1

    move-object v7, v0

    move-object v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    return-object v1
.end method


# virtual methods
.method public getHandle()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mHandle:I

    return v0
.end method

.method public bridge synthetic getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->getSensorBackgroundTime()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getSensorBackgroundTime()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->getSubTimer()Lcom/android/internal/os/BatteryStatsImpl$DurationTimer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSensorTime()Landroid/os/BatteryStats$Timer;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->getSensorTime()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getSensorTime()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-object v0
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readTimersFromParcel(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return-void
.end method

.method reset()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$DualTimer;->reset(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$DualTimer;

    invoke-static {p1, v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    return-void
.end method
