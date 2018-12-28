.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseTimer"
.end annotation


# instance fields
.field cumulativeTime:J

.field startTime:J

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;JJ)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->startTime:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->cumulativeTime:J

    invoke-static {p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iput-wide p2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->startTime:J

    iput-wide p4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->cumulativeTime:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseTimer _startTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |_cumulativeTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

.method static synthetic access$7300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->getCurrentPoint()J

    move-result-wide v0

    return-wide v0
.end method

.method private getCurrentPoint()J
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->startTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->cumulativeTime:J

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getStartTime()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->cumulativeTime:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
