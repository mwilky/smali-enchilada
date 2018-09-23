.class Lcom/android/server/AppStateTracker$MyHandler;
.super Landroid/os/Handler;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field private static final MSG_ALL_UNWHITELISTED:I = 0x4

.field private static final MSG_ALL_WHITELIST_CHANGED:I = 0x5

.field private static final MSG_EXEMPT_CHANGED:I = 0xa

.field private static final MSG_FORCE_ALL_CHANGED:I = 0x7

.field private static final MSG_FORCE_APP_STANDBY_FEATURE_FLAG_CHANGED:I = 0x9

.field private static final MSG_ON_UID_ACTIVE:I = 0xc

.field private static final MSG_ON_UID_GONE:I = 0xd

.field private static final MSG_ON_UID_IDLE:I = 0xe

.field private static final MSG_ON_UID_STATE_CHANGED:I = 0xb

.field private static final MSG_RUN_ANY_CHANGED:I = 0x3

.field private static final MSG_TEMP_WHITELIST_CHANGED:I = 0x6

.field private static final MSG_UID_ACTIVE_STATE_CHANGED:I = 0x0

.field private static final MSG_UID_FG_STATE_CHANGED:I = 0x1

.field private static final MSG_USER_REMOVED:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/AppStateTracker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private removeUid(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1, p2}, Lcom/android/server/AppStateTracker;->access$1800(Landroid/util/SparseBooleanArray;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidActiveStateChanged(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1, p2}, Lcom/android/server/AppStateTracker;->access$1800(Landroid/util/SparseBooleanArray;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidForegroundStateChanged(I)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public doUserRemoved(I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v2, v2, Lcom/android/server/AppStateTracker;->mStarted:Z

    if-nez v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v2, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v2}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v2

    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    move v5, v6

    nop

    :cond_1
    invoke-virtual {p0, v1, v5}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidIdle(IZ)V

    return-void

    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    move v5, v6

    nop

    :cond_2
    invoke-virtual {p0, v1, v5}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidGone(IZ)V

    return-void

    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidActive(I)V

    return-void

    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, v4}, Lcom/android/server/AppStateTracker$MyHandler;->handleUidStateChanged(II)V

    return-void

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v1, v5

    invoke-static {v6, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1600(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    return-void

    :pswitch_6
    iget-object v4, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v4}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v7, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v7, v7, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-boolean v7, v7, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    move v6, v5

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v4, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v4}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v4

    array-length v7, v4

    :goto_2
    if-ge v5, v7, :cond_6

    aget-object v8, v4, v5

    invoke-virtual {v8}, Lcom/android/server/AppStateTracker$Listener;->updateAllJobs()V

    if-eqz v6, :cond_5

    invoke-virtual {v8}, Lcom/android/server/AppStateTracker$Listener;->unblockAllUnrestrictedAlarms()V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v4}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :pswitch_7
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v4}, Lcom/android/server/AppStateTracker;->handleUserRemoved(I)V

    return-void

    :pswitch_8
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_3
    if-ge v5, v4, :cond_7

    aget-object v6, v1, v5

    invoke-static {v6, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1700(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x7

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    return-void

    :pswitch_9
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_4
    if-ge v5, v4, :cond_8

    aget-object v6, v1, v5

    invoke-static {v6, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1500(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    return-void

    :pswitch_a
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_5
    if-ge v5, v4, :cond_9

    aget-object v6, v1, v5

    invoke-static {v6, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1400(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    return-void

    :pswitch_b
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_6
    if-ge v5, v4, :cond_a

    aget-object v6, v1, v5

    invoke-static {v6, v0}, Lcom/android/server/AppStateTracker$Listener;->access$1300(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    return-void

    :pswitch_c
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_7
    if-ge v5, v4, :cond_b

    aget-object v6, v1, v5

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v0, v7, v8}, Lcom/android/server/AppStateTracker$Listener;->access$1200(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    return-void

    :pswitch_d
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    move v6, v5

    :goto_8
    if-ge v6, v4, :cond_c

    aget-object v7, v1, v6

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v0, v8}, Lcom/android/server/AppStateTracker$Listener;->access$1100(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_c
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    return-void

    :pswitch_e
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;

    move-result-object v1

    array-length v4, v1

    :goto_9
    if-ge v5, v4, :cond_d

    aget-object v7, v1, v5

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v0, v8}, Lcom/android/server/AppStateTracker$Listener;->access$1000(Lcom/android/server/AppStateTracker$Listener;Lcom/android/server/AppStateTracker;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_d
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;

    move-result-object v1

    invoke-virtual {v1, v6, v2, v3}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_e
    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/AppStateTracker;->handleUserRemoved(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
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
    .end packed-switch
.end method

.method public handleUidActive(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1}, Lcom/android/server/AppStateTracker;->access$1900(Landroid/util/SparseBooleanArray;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidActiveStateChanged(I)V

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

.method public handleUidGone(IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeUid(IZ)V

    return-void
.end method

.method public handleUidIdle(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeUid(IZ)V

    return-void
.end method

.method public handleUidStateChanged(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v0}, Lcom/android/server/AppStateTracker;->access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x5

    if-le p2, v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/server/AppStateTracker;->access$1800(Landroid/util/SparseBooleanArray;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidForegroundStateChanged(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    iget-object v1, v1, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-static {v1, p1}, Lcom/android/server/AppStateTracker;->access$1900(Landroid/util/SparseBooleanArray;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/AppStateTracker$MyHandler;->this$0:Lcom/android/server/AppStateTracker;

    invoke-static {v1}, Lcom/android/server/AppStateTracker;->access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyUidForegroundStateChanged(I)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyAllUnwhitelisted()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyAllWhitelistChanged()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyExemptChanged()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyForceAllAppsStandbyChanged()V
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyForcedAppStandbyFeatureFlagChanged()V
    .locals 1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyRunAnyAppOpsChanged(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyTempWhitelistChanged()V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyUidActiveStateChanged(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyUidForegroundStateChanged(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidActive(I)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 1

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidStateChanged(II)V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/AppStateTracker$MyHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
