.class Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChargingRecord"
.end annotation


# static fields
.field static final DiffLevelThreshold:I

.field public static final TYPE_BATTERY_LOW:I = 0x6

.field public static final TYPE_CONNECTED:I = 0x1

.field public static final TYPE_DISCONNECTED:I = 0x2

.field public static final TYPE_DOZE_MODECHANGED:I = 0x5

.field public static final TYPE_SCREEN_OFF:I = 0x4

.field public static final TYPE_SCREEN_ON:I = 0x3


# instance fields
.field connectedWallTime:J

.field diffLevel:I

.field diffTime:J

.field disconnectedWallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.sys.opcd.threshold"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->DiffLevelThreshold:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedWallTime:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedWallTime:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffLevel:I

    return-void
.end method

.method private handlePauseTimer()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyTimer type:1 |TYPE_CONNECTED && ScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1600()J

    move-result-wide v1

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1800()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1600()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1800()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-string v0, "MyTimer type:1 |TYPE_CONNECTED && ScreenOn ---- MyTimer pauseTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1700()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyTimer type:2 |TYPE_CONNECTED && isIdle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2000()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MyTimer type:2 |TYPE_CONNECTED && ScreenOn ---- MyTimer pauseTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2100()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime()V

    :cond_2
    return-void
.end method

.method private handleResetTimer()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyTimer type:1 |TYPE_DISCONNECTED && ScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1600()J

    move-result-wide v1

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1800()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1700()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->resetTime()V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1600()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1800()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-string v0, "MyTimer type:1 |TYPE_DISCONNECTED && ScreenOn ---- MyTimer startTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1700()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyTimer type:2 |TYPE_DISCONNECTED && isIdle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2000()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2100()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->resetTime()V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MyTimer type:2 |TYPE_DISCONNECTED && idle ---- MyTimer startTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2100()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime()V

    :cond_2
    return-void
.end method

.method private handleUsbConnected()V
    .locals 5

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$400()Landroid/content/Context;

    move-result-object v0

    const-string v1, "D"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$500(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$702(J)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedWallTime:J

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2200()Lcom/android/server/am/BatteryStatsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevelLocked()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2302(I)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRecord # connectedBatLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2300()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedWallTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->handlePauseTimer()V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$600()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->upLoadData()V

    :cond_0
    return-void
.end method

.method private handleUsbDisConnected()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$602(J)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedWallTime:J

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2200()Lcom/android/server/am/BatteryStatsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevelLocked()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$102(I)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRecord # sDisconnectedBatLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$100()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedWallTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->handleResetTimer()V

    return-void
.end method

.method private upLoadData()V
    .locals 14

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$700()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$600()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffTime:J

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$100()I

    move-result v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2300()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffLevel:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRecord # diffLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", diffTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffLevel:I

    if-lez v0, :cond_4

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffTime:J

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1100()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1200()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedWallTime:J

    iget-wide v10, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedWallTime:J

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$100()I

    move-result v12

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2300()I

    move-result v13

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;-><init>(JJJJJII)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRecord # bingo # mTotalScreenOnTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1100()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    const-wide v1, 0x3fb999999999999aL    # 0.1

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2400(D)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->toMDM()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    nop

    :cond_0
    move v3, v4

    const/4 v4, 0x0

    const-string v5, "\"pns\":["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;

    invoke-virtual {v6}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->toMDM()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v3, :cond_1

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "OPCD"

    const-string/jumbo v4, "statistic"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mdmData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2600(Ljava/lang/String;)Z

    :cond_4
    return-void
.end method


# virtual methods
.method public updateRecord(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRecord # type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->handleUsbDisConnected()V

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Broadcast conflict TYPE_CONNECTED, return"

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1502(Z)Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->handleUsbConnected()V

    goto/16 :goto_1

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyTimer type:1 |TYPE_SCREEN_ON && Charging:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$600()J

    move-result-wide v3

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$700()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_3

    move v0, v1

    nop

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1602(J)J

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$600()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$700()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    const-string v0, "MyTimer type:1 |TYPE_SCREEN_ON && notCharging ---- MyTimer startTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1700()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime()V

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x4

    if-ne p1, v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyTimer type:1 |TYPE_SCREEN_OFF Charging:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$600()J

    move-result-wide v3

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$700()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_5

    move v0, v1

    nop

    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1802(J)J

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$600()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$700()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    const-string v0, "MyTimer type:1 |TYPE_SCREEN_OFF && notCharging ---- MyTimer pauseTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1700()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime()V

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x5

    if-ne p1, v2, :cond_a

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1900()Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyTimer type:2 |DozeIdle Charging:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$600()J

    move-result-wide v3

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$700()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_7

    move v0, v1

    nop

    :cond_7
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2002(Z)Z

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$600()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$700()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    const-string v0, "MyTimer type:2 |DozeIdle && notCharging ---- MyTimer startTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2100()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime()V

    goto :goto_1

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyTimer type:2 |DozeActive Charging:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$600()J

    move-result-wide v3

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$700()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_9

    goto :goto_0

    :cond_9
    move v1, v0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2002(Z)Z

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$600()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$700()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    const-string v0, "MyTimer type:2 |DozeActive && notCharging ---- MyTimer pauseTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$2100()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime()V

    goto :goto_1

    :cond_a
    const/4 v2, 0x6

    if-ne p1, v2, :cond_d

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1500()Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "handle low power scene start"

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1502(Z)Z

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->handleUsbConnected()V

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1500()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->handleUsbDisConnected()V

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1502(Z)Z

    :cond_b
    const-string/jumbo v0, "handle low power scene end"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    const-string v0, "Broadcast conflict TYPE_BATTERY_LOW, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    return-void

    :cond_d
    :goto_1
    return-void
.end method
