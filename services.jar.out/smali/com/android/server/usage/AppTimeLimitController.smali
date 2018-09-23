.class public Lcom/android/server/usage/AppTimeLimitController;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppTimeLimitController$MyHandler;,
        Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;,
        Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;,
        Lcom/android/server/usage/AppTimeLimitController$UserData;,
        Lcom/android/server/usage/AppTimeLimitController$Lock;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_OBSERVER_PER_UID:J = 0x3e8L

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "AppTimeLimitController"


# instance fields
.field private final mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

.field private mListener:Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;

.field private final mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/AppTimeLimitController$UserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$Lock;-><init>(Lcom/android/server/usage/AppTimeLimitController$1;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;-><init>(Lcom/android/server/usage/AppTimeLimitController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->informListener(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    return-void
.end method

.method private addGroupToPackageMapLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;[Ljava/lang/String;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/usage/AppTimeLimitController$UserData;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/usage/AppTimeLimitController$UserData;-><init>(ILcom/android/server/usage/AppTimeLimitController$1;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private static inPackageList([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private informListener(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;

    iget v2, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->observerId:I

    iget v3, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->userId:I

    iget-wide v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeLimit:J

    iget-wide v6, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeLimit:J

    iget-wide v8, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    sub-long/2addr v6, v8

    iget-object v8, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->callbackIntent:Landroid/app/PendingIntent;

    invoke-interface/range {v1 .. v8}, Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;->onLimitReached(IIJJLandroid/app/PendingIntent;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    iget v2, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->requestingUid:I

    iget v3, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->observerId:I

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/usage/AppTimeLimitController;->removeObserverLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;IIZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeWatchForPackageLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Ljava/lang/String;J)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    iget-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iput-wide p3, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    iput-object p2, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->currentPackage:Ljava/lang/String;

    iget-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/usage/AppTimeLimitController;->postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;J)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private postInformListenerLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private removeGroupFromPackageMapLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeObserverLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;IIZ)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->requestingUid:I

    if-ne v1, p2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/AppTimeLimitController;->removeGroupFromPackageMapLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-gt v1, v2, :cond_0

    if-nez p4, :cond_0

    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p7}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/usage/AppTimeLimitController;->removeObserverLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;IIZ)V

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    int-to-long v3, v2

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getObserverPerUidLimit()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    invoke-direct {v3}, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;-><init>()V

    iput p2, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->observerId:I

    iput-object p6, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->callbackIntent:Landroid/app/PendingIntent;

    iput-object p3, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->packages:[Ljava/lang/String;

    iput-wide p4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeLimit:J

    iget-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeLimit:J

    iput-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRequested:J

    iput p1, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->requestingUid:I

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    iput p7, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->userId:I

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-direct {p0, v1, p3, v3}, Lcom/android/server/usage/AppTimeLimitController;->addGroupToPackageMapLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;[Ljava/lang/String;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->packages:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/usage/AppTimeLimitController;->inPackageList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRequested:J

    iput-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->currentPackage:Ljava/lang/String;

    iget-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-wide v4, v3, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/usage/AppTimeLimitController;->postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;J)V

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many observers added by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time limit must be >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkTimeout(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->observerId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-wide v2, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v2, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->packages:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/usage/AppTimeLimitController;->inPackageList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const-string v2, "AppTimeLimitController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startTime was not set correctly for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    sub-long/2addr v2, v4

    iget-wide v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_3

    iget-wide v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    sub-long/2addr v4, v2

    iput-wide v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->postInformListenerLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    const-wide/16 v4, -0x1

    iput-wide v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->currentPackage:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-wide v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    sub-long/2addr v4, v2

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/usage/AppTimeLimitController;->postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;J)V

    :cond_4
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

.method dump(Ljava/io/PrintWriter;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    :try_start_0
    const-string v1, "\n  App Time Limits"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppTimeLimitController$UserData;

    const-string v5, "   User "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$800(Lcom/android/server/usage/AppTimeLimitController$UserData;)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    invoke-static {v4}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    invoke-static {v4}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    const-string v8, "    Group id="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->observerId:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " timeLimit="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeLimit:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, " remaining="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, " currentPackage="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->currentPackage:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, " timeCurrentPkgStarted="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    const-string v8, " packages="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->packages:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v6, "    currentForegroundedPackage="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

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

.method protected getMinTimeLimit()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method getObserverGroup(II)Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getObserverPerUidLimit()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method protected getUptimeMillis()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public moveToBackground(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v3

    move/from16 v4, p3

    :try_start_0
    invoke-direct {v1, v4}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "AppTimeLimitController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eh? Last foregrounded package = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and now backgrounded = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v5

    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_3

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    iget-wide v12, v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gtz v12, :cond_1

    move/from16 v16, v9

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$600(Lcom/android/server/usage/AppTimeLimitController$UserData;)J

    move-result-wide v12

    move/from16 v16, v9

    iget-wide v8, v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRequested:J

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    sub-long v12, v5, v8

    iget-wide v14, v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    sub-long/2addr v14, v12

    iput-wide v14, v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    iget-wide v14, v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    const-wide/16 v17, 0x0

    cmp-long v14, v14, v17

    if-gtz v14, :cond_2

    invoke-direct {v1, v11}, Lcom/android/server/usage/AppTimeLimitController;->postInformListenerLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    :cond_2
    const/4 v14, 0x0

    iput-object v14, v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->currentPackage:Ljava/lang/String;

    const-wide/16 v14, -0x1

    iput-wide v14, v11, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    iget-object v14, v1, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15, v11}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v16

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$502(Lcom/android/server/usage/AppTimeLimitController$UserData;Ljava/lang/String;)Ljava/lang/String;

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public moveToForeground(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$502(Lcom/android/server/usage/AppTimeLimitController$UserData;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$602(Lcom/android/server/usage/AppTimeLimitController$UserData;J)J

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$600(Lcom/android/server/usage/AppTimeLimitController$UserData;)J

    move-result-wide v2

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/usage/AppTimeLimitController;->maybeWatchForPackageLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Ljava/lang/String;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeObserver(III)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/usage/AppTimeLimitController;->removeObserverLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;IIZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
