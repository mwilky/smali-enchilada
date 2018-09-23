.class Lcom/android/server/AlarmManagerService$DeliveryTracker;
.super Landroid/app/IAlarmCompleteListener$Stub;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeliveryTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmCompleteListener$Stub;-><init>()V

    return-void
.end method

.method private removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/AlarmManagerService$InFlight;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No in-flight alarm for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private removeLocked(Landroid/os/IBinder;)Lcom/android/server/AlarmManagerService$InFlight;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$InFlight;->mListener:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No in-flight alarm for listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private updateStatsLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p1, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v3, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    iget v3, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    const/4 v4, 0x0

    if-gtz v3, :cond_0

    iput v4, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    iget-wide v5, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    iget-wide v7, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    sub-long v7, v0, v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    :cond_0
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    iget v5, v3, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    iget v5, v3, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-gtz v5, :cond_1

    iput v4, v3, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    iget-wide v4, v3, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v6, v3, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    :cond_1
    iget-object v4, p1, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v5, p1, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v6, p1, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    iget-object v7, p1, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Landroid/app/ActivityManager;->noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    return-void
.end method

.method private updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateStatsLocked(Lcom/android/server/AlarmManagerService$InFlight;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v1, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_WAKELOCK:Z

    if-eqz v0, :cond_1

    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBroadcastRefCount -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v2, v2, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v2, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished all dispatches with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " remaining inflights"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    nop

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remaining #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v0, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v4, v0, Lcom/android/server/AlarmManagerService$InFlight;->mAlarmType:I

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;IZ)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v1, "Alarm wakelock still held but sent queue empty"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public alarmComplete(Landroid/os/IBinder;)V
    .locals 7

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid alarmComplete: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/AlarmManagerService$InFlight;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-boolean v4, Lcom/android/server/AlarmManagerService;->DEBUG_LISTENER_CALLBACK:Z

    if-eqz v4, :cond_1

    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alarmComplete() from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$3008(Lcom/android/server/AlarmManagerService;)I

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->DEBUG_LISTENER_CALLBACK:Z

    if-eqz v4, :cond_3

    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Late alarmComplete() from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public alarmTimedOut(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/AlarmManagerService$InFlight;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_LISTENER_CALLBACK:Z

    if-eqz v2, :cond_0

    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alarm listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " timed out in delivery"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3008(Lcom/android/server/AlarmManagerService;)I

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->DEBUG_LISTENER_CALLBACK:Z

    if-eqz v2, :cond_2

    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Spurious timeout of listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Spurious timeout of listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deliverLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .locals 17
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v14, p2

    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3208(Lcom/android/server/AlarmManagerService;)I

    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    iget v0, v0, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0, v14, v15}, Lcom/android/server/AlarmManagerService;->access$3302(Lcom/android/server/AlarmManagerService;J)J

    :cond_0
    :try_start_0
    iget-object v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3400(Lcom/android/server/AlarmManagerService;)Landroid/content/Intent;

    move-result-object v0

    const-string v6, "android.intent.extra.ALARM_COUNT"

    iget v7, v2, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v9, 0x0

    if-eqz p4, :cond_1

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mIdleOptions:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v10, v0

    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v4, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    if-ne v3, v4, :cond_2

    const-string v3, "AlarmManager"

    const-string/jumbo v4, "mTimeTickSender canceled"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    :cond_3
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$3108(Lcom/android/server/AlarmManagerService;)I

    return-void

    :cond_4
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3508(Lcom/android/server/AlarmManagerService;)I

    :try_start_1
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_LISTENER_CALLBACK:Z

    if-eqz v0, :cond_5

    const-string v0, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alarm to uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v4}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0, v1}, Landroid/app/IAlarmListener;->doAlarm(Landroid/app/IAlarmCompleteListener;)V

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v4, 0x3

    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v5}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v4, v4, Lcom/android/server/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    nop

    :goto_1
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v0, :cond_6

    const-string v0, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending alarm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_WAKELOCK:Z

    const/4 v12, 0x1

    if-eqz v0, :cond_7

    const-string v0, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBroadcastRefCount -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v4, v4, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/2addr v4, v12

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-nez v0, :cond_9

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v7, v2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-nez v0, :cond_8

    iget v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    :goto_2
    move v8, v0

    goto :goto_3

    :cond_8
    const/4 v0, -0x1

    goto :goto_2

    :goto_3
    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;IZ)V

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v3, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    new-instance v0, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v4, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v7, v2, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-object v11, v2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    move-object v3, v0

    move v2, v12

    move-wide v12, v14

    invoke-direct/range {v3 .. v13}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Landroid/os/WorkSource;ILjava/lang/String;ILjava/lang/String;J)V

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v4, v3, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    if-eqz p4, :cond_c

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    move v4, v2

    move-object/from16 v2, p1

    iget v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v3, v5, v14, v15}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v3

    iget v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v3, v5}, Lcom/android/server/AppStateTracker;->isUidInForeground(I)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    iget v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_5

    :cond_b
    :goto_4
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    iget v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_5

    :cond_c
    move v4, v2

    move-object/from16 v2, p1

    :goto_5
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v3, v2}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    iget-object v5, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$2900(Lcom/android/server/AlarmManagerService;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v5, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/2addr v5, v4

    iput v5, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    iget v5, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v5, :cond_e

    iput v4, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    iput-wide v14, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    goto :goto_6

    :cond_e
    iget v5, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/2addr v5, v4

    iput v5, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    :goto_6
    iget-object v5, v0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    iget v6, v5, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/2addr v6, v4

    iput v6, v5, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    iget v6, v5, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v6, :cond_f

    iput v4, v5, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    iput-wide v14, v5, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    goto :goto_7

    :cond_f
    iget v6, v5, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/2addr v6, v4

    iput v6, v5, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    :goto_7
    iget v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_10

    iget v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v6, :cond_11

    :cond_10
    iget v6, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/2addr v6, v4

    iput v6, v3, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    iget v6, v5, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/2addr v6, v4

    iput v6, v5, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v7, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v4, v6, v7, v8, v9}, Landroid/app/ActivityManager;->noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void

    :catch_1
    move-exception v0

    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_LISTENER_CALLBACK:Z

    if-eqz v3, :cond_12

    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Alarm undeliverable to listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v5}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$3008(Lcom/android/server/AlarmManagerService;)I

    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$3108(Lcom/android/server/AlarmManagerService;)I

    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/AlarmManagerService$InFlight;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
