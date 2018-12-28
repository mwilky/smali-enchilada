.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DozeFragmentTimer"
.end annotation


# instance fields
.field fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

.field isTiming:Z

.field lock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->isTiming:Z

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->startTiming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->stopTiming(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->clear()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->getCacheDozeFragment()Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    move-result-object v0

    return-object v0
.end method

.method private clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->access$7400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->isTiming:Z

    const-string v1, "DozeFragmentTimer clear"

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

.method private getCacheDozeFragment()Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->isTiming:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    iput v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    iget-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    iget-wide v4, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    const-string v2, "StillContinuing"

    iput-object v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DozeFragmentTimer getCacheDozeFragment relativeBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |relativeEndTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |realBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |beginPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |endPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |exitReason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :cond_0
    const-string v1, "DozeFragmentTimer getCacheDozeFragment not Timing , return null"

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

.method private startTiming()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->isTiming:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->isTiming:Z

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->access$7400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DozeFragmentTimer startTiming startRelativeTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |realBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |beginPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

.method private stopTiming(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->isTiming:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->isTiming:Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v4, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iput-object p1, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    new-instance v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DozeFragmentTimer stopTiming relativeEndTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |endPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |exitReason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
