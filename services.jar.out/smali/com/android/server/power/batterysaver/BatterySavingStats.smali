.class public Lcom/android/server/power/batterysaver/BatterySavingStats;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final STATE_CHARGING:I = -0x2

.field private static final STATE_NOT_INITIALIZED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BatterySavingStats"


# instance fields
.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatterySaverEnabledCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCurrentState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mIsBatterySaverEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLastBatterySaverDisabledTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLastBatterySaverEnabledTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mMetricsLoggerHelper:Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;

.field private mSendTronLog:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mStats:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;-><init>(Ljava/lang/Object;Lcom/android/internal/logging/MetricsLogger;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/internal/logging/MetricsLogger;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    iput-wide v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    new-instance v0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;-><init>(Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mMetricsLoggerHelper:Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/batterysaver/BatterySavingStats;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mSendTronLog:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/internal/logging/MetricsLogger;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method private dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v4, p6

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, ": "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v0, v6, v2, v3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(III)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v0, v8, v2, v3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(III)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v9

    const-string v10, "%6dm %6dmAh(%3d%%) %8.1fmAh/h     %6dm %6dmAh(%3d%%) %8.1fmAh/h"

    const/16 v11, 0x8

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v6

    iget v6, v7, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v8

    iget v6, v7, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v11, v8

    invoke-virtual {v7}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v11, v8

    invoke-virtual {v9}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v8, 0x4

    aput-object v6, v11, v8

    iget v6, v9, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x5

    aput-object v6, v11, v8

    iget v6, v9, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x6

    aput-object v6, v11, v8

    invoke-virtual {v9}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide v12

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v8, 0x7

    aput-object v6, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private endLastStateLocked(JII)V
    .locals 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-gez v1, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v1

    move/from16 v2, p3

    iput v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryLevel:I

    move/from16 v3, p4

    iput v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryPercent:I

    move-wide/from16 v4, p1

    iput-wide v4, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    iget-wide v6, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    iget-wide v8, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    sub-long/2addr v6, v8

    iget v8, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    iget v9, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryLevel:I

    sub-int/2addr v8, v9

    iget v9, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    iget v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryPercent:I

    sub-int/2addr v9, v10

    iget-wide v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    add-long/2addr v10, v6

    iput-wide v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    iget v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    add-int/2addr v10, v8

    iput v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    iget v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    add-int/2addr v10, v9

    iput v10, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    iget v10, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-static {v10}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v10

    iget v11, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-static {v11}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result v11

    iget v12, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-static {v12}, Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;->fromIndex(I)I

    move-result v12

    iget-wide v13, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    iget v15, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    iget v0, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    move-wide/from16 v17, v13

    move-wide v13, v6

    move/from16 v19, v15

    move v15, v8

    move/from16 v16, v9

    move/from16 v20, v0

    invoke-static/range {v10 .. v20}, Lcom/android/server/EventLogTags;->writeBatterySavingStats(IIIJIIJII)V

    return-void
.end method

.method private getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_0

    const-string v0, "BatterySavingStats"

    const-string v1, "BatteryManagerInternal not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method private getStat(III)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(III)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v0

    return-object v0
.end method

.method private startNewStateLocked(IJII)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v0

    iput p4, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    iput p5, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    iput-wide p2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    return-void
.end method

.method static stateToString(I)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",D="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "NotInitialized"

    return-object v0

    :pswitch_1
    const-string v0, "Charging"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static statesToIndex(III)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    and-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p1, 0x1

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    and-int/lit8 v1, p2, 0x3

    shl-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    return v0
.end method

.method private transitionStateLocked(I)V
    .locals 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v7

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryLevel()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryPercent()I

    move-result v9

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-static {v1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v10, v1

    nop

    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    if-eqz v1, :cond_2

    move v2, v3

    nop

    :cond_2
    move v11, v2

    if-eq v10, v11, :cond_4

    iput-boolean v11, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mIsBatterySaverEnabled:Z

    if-eqz v11, :cond_3

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    :cond_4
    :goto_1
    invoke-direct {p0, v7, v8, v0, v9}, Lcom/android/server/power/batterysaver/BatterySavingStats;->endLastStateLocked(JII)V

    move-object v1, p0

    move v2, p1

    move-wide v3, v7

    move v5, v0

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->startNewStateLocked(IJII)V

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mMetricsLoggerHelper:Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->transitionStateLocked(IJII)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v10, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Battery saving stats:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v1, p2

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v12, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v0

    move-wide v14, v0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Battery Saver is currently: "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mIsBatterySaverEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "ON"

    goto :goto_0

    :cond_0
    const-string v1, "OFF"

    :goto_0
    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-wide v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Last ON time: "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    sub-long v5, v12, v14

    iget-wide v3, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    add-long/2addr v5, v3

    invoke-direct {v1, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    invoke-static {v1, v2, v14, v15, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_1
    iget-wide v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Last OFF time: "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    sub-long v2, v12, v14

    iget-wide v4, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    add-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    invoke-static {v1, v2, v14, v15, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_2
    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Times enabled: "

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v8, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Drain stats:"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "                   Battery saver OFF                          ON"

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "NonIntr"

    const/4 v6, 0x0

    const-string v7, "NonDoze"

    move-object v1, v8

    move-object v2, v9

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x1

    const-string v5, "   Intr"

    const/4 v6, 0x0

    const-string v7, "       "

    move-object v1, v8

    move-object v2, v9

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "NonIntr"

    const/4 v6, 0x2

    const-string v7, "Deep   "

    move-object v1, v8

    move-object v2, v9

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x1

    const-string v5, "   Intr"

    const/4 v6, 0x2

    const-string v7, "       "

    move-object v1, v8

    move-object v2, v9

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "NonIntr"

    const/4 v6, 0x1

    const-string v7, "Light  "

    move-object v1, v8

    move-object v2, v9

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x1

    const-string v5, "   Intr"

    const/4 v6, 0x1

    const-string v7, "       "

    move-object v1, v8

    move-object v2, v9

    move-object v3, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v1, p2

    :goto_1
    move-object v11, v1

    :goto_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    if-nez v1, :cond_0

    new-instance v2, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    invoke-direct {v2}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method injectBatteryLevel()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryChargeCounter()I

    move-result v1

    return v1
.end method

.method injectBatteryPercent()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v1

    return v1
.end method

.method injectCurrentTime()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public setSendTronLog(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mSendTronLog:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startCharging()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionStateLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public transitionState(III)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(III)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionStateLocked(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
