.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChargeFragmentTimer"
.end annotation


# instance fields
.field ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

.field hasFirstFullTime:Z

.field isTiming:Z

.field lock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->hasFirstFullTime:Z

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const-string v2, "ChargeFragmentTimer_ScreenOn"

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->startTiming(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->stopTiming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->startTiming_ScreenOn()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->pauseTiming_ScreenOn()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->updatePlugTypeFastCharge()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->updateFirstFullTime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->clear()V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->getCacheChargeFragment()Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    move-result-object v0

    return-object v0
.end method

.method private clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->access$7500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->hasFirstFullTime:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    const-string v1, "ChargeFragmentTimer clear"

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCacheChargeFragment()Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    iget-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    iget-wide v4, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    iput v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    invoke-static {v2, v3, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargeFragmentTimer getCacheChargeFragment relativeBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |relativeEndTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |realBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |beginPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |endPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |plugType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |firstFullTimeToRelativeBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |screenOnDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :cond_0
    const-string v1, "ChargeFragmentTimer getCacheChargeFragment not Timing , return null"

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private pauseTiming_ScreenOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startTiming(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->access$7500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;)V

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->hasFirstFullTime:Z

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v3, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    invoke-static {v2, v3, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_2

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->hasFirstFullTime:Z

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargeFragmentTimer startTiming startRelativeTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |realBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |beginPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |plugType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startTiming_ScreenOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopTiming()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v4, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    invoke-static {v2, v3, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    new-instance v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargeFragmentTimer stopTiming relativeEndTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |endPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |screenOnDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateFirstFullTime()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->hasFirstFullTime:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->hasFirstFullTime:Z

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v5, v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargeFragmentTimer updateFirstFullTime firstFullTimeToRelativeBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updatePlugTypeFastCharge()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    const-string v2, "FASTCHARGE"

    iput-object v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    const-string v1, "ChargeFragmentTimer updatePlugType plugType:FASTCHARGE"

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
