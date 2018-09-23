.class public Lcom/android/server/utils/ManagedApplicationService;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/ManagedApplicationService$EventCallback;,
        Lcom/android/server/utils/ManagedApplicationService$PendingEvent;,
        Lcom/android/server/utils/ManagedApplicationService$BinderChecker;,
        Lcom/android/server/utils/ManagedApplicationService$LogEvent;,
        Lcom/android/server/utils/ManagedApplicationService$LogFormattable;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x4

.field private static final MAX_RETRY_DURATION_MS:J = 0x3e80L

.field private static final MIN_RETRY_DURATION_MS:J = 0x7d0L

.field public static final RETRY_BEST_EFFORT:I = 0x3

.field public static final RETRY_FOREVER:I = 0x1

.field public static final RETRY_NEVER:I = 0x2

.field private static final RETRY_RESET_TIME_MS:J = 0xfa00L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBoundInterface:Landroid/os/IInterface;

.field private final mChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

.field private final mClientLabel:I

.field private final mComponent:Landroid/content/ComponentName;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mEventCb:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsImportant:Z

.field private mLastRetryTimeMs:J

.field private final mLock:Ljava/lang/Object;

.field private mNextRetryDurationMs:J

.field private mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

.field private mRetryCount:I

.field private final mRetryRunnable:Ljava/lang/Runnable;

.field private final mRetryType:I

.field private mRetrying:Z

.field private final mSettingsAction:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$TUtdiUHqGW7Fae8jX7ATvPxzdeM;

    invoke-direct {v0, p0}, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$TUtdiUHqGW7Fae8jX7ATvPxzdeM;-><init>(Lcom/android/server/utils/ManagedApplicationService;)V

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    iput p4, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    iput-object p5, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    iput-boolean p7, p0, Lcom/android/server/utils/ManagedApplicationService;->mIsImportant:Z

    iput p8, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryType:I

    iput-object p9, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    iput-object p10, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$EventCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/utils/ManagedApplicationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/utils/ManagedApplicationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->stopRetriesLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/utils/ManagedApplicationService;Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)Lcom/android/server/utils/ManagedApplicationService;
    .locals 12

    new-instance v11, Lcom/android/server/utils/ManagedApplicationService;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/utils/ManagedApplicationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)V

    return-object v11
.end method

.method private checkAndDeliverServiceDiedCbLocked()Z
    .locals 4

    iget v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has died too much, not retrying."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$7a-sAFwcUuC9yt8nXYlr0jScFcs;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/utils/-$$Lambda$ManagedApplicationService$7a-sAFwcUuC9yt8nXYlr0jScFcs;-><init>(Lcom/android/server/utils/ManagedApplicationService;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private doRetry()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to reconnect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->checkAndDeliverServiceDiedCbLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->queueRetryLocked()V

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$TUtdiUHqGW7Fae8jX7ATvPxzdeM(Lcom/android/server/utils/ManagedApplicationService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->doRetry()V

    return-void
.end method

.method public static synthetic lambda$checkAndDeliverServiceDiedCbLocked$0(Lcom/android/server/utils/ManagedApplicationService;J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    const/4 v3, 0x4

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(JLandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Lcom/android/server/utils/ManagedApplicationService$EventCallback;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void
.end method

.method private matches(Landroid/content/ComponentName;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private queueRetryLocked()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mLastRetryTimeMs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xfa00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    :cond_0
    iput-wide v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLastRetryTimeMs:J

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v2, 0x2

    iget-wide v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e80

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    iget v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    return-void
.end method

.method private startRetriesLocked()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->checkAndDeliverServiceDiedCbLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->queueRetryLocked()V

    return-void
.end method

.method private stopRetriesLocked()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    if-eqz v2, :cond_1

    const-string v2, "android.intent.extra.client_label"

    iget v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, "android.intent.extra.client_intent"

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    new-instance v2, Lcom/android/server/utils/ManagedApplicationService$1;

    invoke-direct {v2, p0}, Lcom/android/server/utils/ManagedApplicationService$1;-><init>(Lcom/android/server/utils/ManagedApplicationService;)V

    iput-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    const v2, 0x4000001

    iget-boolean v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mIsImportant:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x40

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to bind service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public disconnect()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnectIfNotMatching(Landroid/content/ComponentName;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/ManagedApplicationService;->matches(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    const/4 v0, 0x1

    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    return v0
.end method

.method public sendEvent(Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/server/utils/ManagedApplicationService$PendingEvent;->runEvent(Landroid/os/IInterface;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    const-string v3, "Received exception from user service: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
