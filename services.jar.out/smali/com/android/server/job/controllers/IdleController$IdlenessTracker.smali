.class final Lcom/android/server/job/controllers/IdleController$IdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "IdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/IdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IdlenessTracker"
.end annotation


# instance fields
.field private mAlarm:Landroid/app/AlarmManager;

.field private mDockIdle:Z

.field private mIdle:Z

.field private mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mScreenOn:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/IdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/IdleController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/android/server/job/controllers/-$$Lambda$IdleController$IdlenessTracker$nTdS-lGBXcES5VWKcJFmQFgU7IU;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/-$$Lambda$IdleController$IdlenessTracker$nTdS-lGBXcES5VWKcJFmQFgU7IU;-><init>(Lcom/android/server/job/controllers/IdleController$IdlenessTracker;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v0, p1, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    iput-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mDockIdle:Z

    return-void
.end method

.method private handleIdleTrigger()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mDockIdle:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/server/job/controllers/IdleController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "JobScheduler.Idle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle trigger fired @ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    iget-object v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    invoke-virtual {v0, v1}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/job/controllers/IdleController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "JobScheduler.Idle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRIGGER_IDLE received but not changing state; idle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " screen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/job/controllers/IdleController$IdlenessTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->handleIdleTrigger()V

    return-void
.end method


# virtual methods
.method public isIdle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    move-object v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "android.intent.action.DOCK_ACTIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.DOCK_IDLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {v0}, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->handleIdleTrigger()V

    goto/16 :goto_4

    :cond_2
    :goto_0
    const-string v2, "android.intent.action.DOCK_IDLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    if-nez v2, :cond_3

    return-void

    :cond_3
    iput-boolean v3, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mDockIdle:Z

    goto :goto_1

    :cond_4
    iput-boolean v4, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    iput-boolean v4, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mDockIdle:Z

    :goto_1
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    invoke-static {v4}, Lcom/android/server/job/controllers/IdleController;->access$100(Lcom/android/server/job/controllers/IdleController;)J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {}, Lcom/android/server/job/controllers/IdleController;->access$000()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "JobScheduler.Idle"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scheduling idle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " now:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " when="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v6, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    iget-object v8, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    invoke-static {v8}, Lcom/android/server/job/controllers/IdleController;->access$200(Lcom/android/server/job/controllers/IdleController;)J

    move-result-wide v10

    const-string v12, "JS idleness"

    iget-object v13, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v14, 0x0

    move-wide v8, v4

    invoke-virtual/range {v6 .. v14}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_4

    :cond_6
    :goto_2
    const-string v2, "android.intent.action.DOCK_ACTIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    if-nez v2, :cond_7

    return-void

    :cond_7
    iput-boolean v4, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mDockIdle:Z

    goto :goto_3

    :cond_8
    iput-boolean v3, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mScreenOn:Z

    iput-boolean v4, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mDockIdle:Z

    :goto_3
    invoke-static {}, Lcom/android/server/job/controllers/IdleController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "JobScheduler.Idle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exiting idle : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v2, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    iget-object v3, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-boolean v2, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    if-eqz v2, :cond_a

    iput-boolean v4, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    iget-object v2, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    iget-boolean v3, v0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->mIdle:Z

    invoke-virtual {v2, v3}, Lcom/android/server/job/controllers/IdleController;->reportNewIdleState(Z)V

    :cond_a
    :goto_4
    return-void
.end method

.method public startTracking()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOCK_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOCK_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/job/controllers/IdleController$IdlenessTracker;->this$0:Lcom/android/server/job/controllers/IdleController;

    iget-object v1, v1, Lcom/android/server/job/controllers/IdleController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
