.class public Lcom/android/internal/os/BinderCallsStats;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BinderCallsStats$UidEntry;,
        Lcom/android/internal/os/BinderCallsStats$CallSession;,
        Lcom/android/internal/os/BinderCallsStats$CallStat;
    }
.end annotation


# static fields
.field private static final CALL_SESSIONS_POOL_SIZE:I = 0x64

.field private static final sInstance:Lcom/android/internal/os/BinderCallsStats;


# instance fields
.field private final mCallSessionsPool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/android/internal/os/BinderCallsStats$CallSession;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDetailedTracking:Z

.field private final mLock:Ljava/lang/Object;

.field private mStartTime:J

.field private final mUidEntries:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/BinderCallsStats$UidEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/os/BinderCallsStats;

    invoke-direct {v0}, Lcom/android/internal/os/BinderCallsStats;-><init>()V

    sput-object v0, Lcom/android/internal/os/BinderCallsStats;->sInstance:Lcom/android/internal/os/BinderCallsStats;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BinderCallsStats;->mStartTime:J

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BinderCallsStats;->mStartTime:J

    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    return-void
.end method

.method private callStarted(Ljava/lang/String;I)Lcom/android/internal/os/BinderCallsStats$CallSession;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BinderCallsStats$CallSession;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/os/BinderCallsStats$CallSession;

    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats$CallSession;-><init>()V

    move-object v0, v1

    :cond_0
    iget-object v1, v0, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallStat:Lcom/android/internal/os/BinderCallsStats$CallStat;

    iput-object p1, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->className:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallStat:Lcom/android/internal/os/BinderCallsStats$CallStat;

    iput p2, v1, Lcom/android/internal/os/BinderCallsStats$CallStat;->msg:I

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/BinderCallsStats$CallSession;->mStarted:J

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/os/BinderCallsStats;
    .locals 1

    sget-object v0, Lcom/android/internal/os/BinderCallsStats;->sInstance:Lcom/android/internal/os/BinderCallsStats;

    return-object v0
.end method

.method private getThreadTimeMicro()J
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method static synthetic lambda$dump$0(Lcom/android/internal/os/BinderCallsStats$UidEntry;Lcom/android/internal/os/BinderCallsStats$UidEntry;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    iget-wide v2, p1, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    iget-wide v2, p1, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$dump$1(Lcom/android/internal/os/BinderCallsStats$CallStat;Lcom/android/internal/os/BinderCallsStats$CallStat;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->time:J

    iget-wide v2, p1, Lcom/android/internal/os/BinderCallsStats$CallStat;->time:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BinderCallsStats$CallStat;->time:J

    iget-wide v2, p1, Lcom/android/internal/os/BinderCallsStats$CallStat;->time:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$dump$2(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$dump$3(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public callEnded(Lcom/android/internal/os/BinderCallsStats$CallSession;)V
    .locals 10

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/os/BinderCallsStats;->getThreadTimeMicro()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mStarted:J

    sub-long/2addr v3, v5

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallingUId:I

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    iget v6, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallingUId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    if-nez v5, :cond_1

    new-instance v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    iget v7, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallingUId:I

    invoke-direct {v6, v7}, Lcom/android/internal/os/BinderCallsStats$UidEntry;-><init>(I)V

    move-object v5, v6

    iget-object v6, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    iget v7, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallingUId:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Ljava/util/Map;

    iget-object v7, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallStat:Lcom/android/internal/os/BinderCallsStats$CallStat;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BinderCallsStats$CallStat;

    if-nez v6, :cond_2

    new-instance v7, Lcom/android/internal/os/BinderCallsStats$CallStat;

    iget-object v8, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallStat:Lcom/android/internal/os/BinderCallsStats$CallStat;

    iget-object v8, v8, Lcom/android/internal/os/BinderCallsStats$CallStat;->className:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/internal/os/BinderCallsStats$CallSession;->mCallStat:Lcom/android/internal/os/BinderCallsStats$CallStat;

    iget v9, v9, Lcom/android/internal/os/BinderCallsStats$CallStat;->msg:I

    invoke-direct {v7, v8, v9}, Lcom/android/internal/os/BinderCallsStats$CallStat;-><init>(Ljava/lang/String;I)V

    move-object v6, v7

    iget-object v7, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Ljava/util/Map;

    invoke-interface {v7, v6, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-wide v7, v6, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    add-long/2addr v7, v1

    iput-wide v7, v6, Lcom/android/internal/os/BinderCallsStats$CallStat;->callCount:J

    iget-wide v7, v6, Lcom/android/internal/os/BinderCallsStats$CallStat;->time:J

    add-long/2addr v7, v3

    iput-wide v7, v6, Lcom/android/internal/os/BinderCallsStats$CallStat;->time:J

    :cond_3
    iget-wide v6, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    add-long/2addr v6, v3

    iput-wide v6, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    iget-wide v6, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v6, v1

    iput-wide v6, v5, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mCallSessionsPool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public callStarted(Landroid/os/Binder;I)Lcom/android/internal/os/BinderCallsStats$CallSession;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/os/BinderCallsStats;->callStarted(Ljava/lang/String;I)Lcom/android/internal/os/BinderCallsStats$CallSession;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v4, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-string v0, "Start time: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    iget-wide v9, v1, Lcom/android/internal/os/BinderCallsStats;->mStartTime:J

    invoke-static {v0, v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    iget-object v11, v1, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v11

    move-wide v12, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v9, :cond_2

    :try_start_0
    iget-object v6, v1, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v14, v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    add-long/2addr v7, v14

    :try_start_1
    iget v14, v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    iget v15, v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v14, :cond_0

    :try_start_2
    iget-wide v0, v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-wide/from16 v18, v7

    goto :goto_1

    :cond_0
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-wide/from16 v18, v7

    :try_start_4
    iget-wide v7, v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;->time:J

    add-long/2addr v0, v7

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget v1, v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_1

    iget-wide v7, v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    move-object/from16 v20, v14

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v20, v14

    iget-wide v14, v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J

    add-long/2addr v7, v14

    :goto_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v7, v6, Lcom/android/internal/os/BinderCallsStats$UidEntry;->callCount:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-long/2addr v12, v7

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v7, v18

    move-object/from16 v1, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move-wide/from16 v7, v18

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    move-wide/from16 v18, v7

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    goto/16 :goto_8

    :cond_2
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eqz v0, :cond_6

    const-string v0, "Raw data (uid,call_desc,time):"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$JdIS98lVGLAIfkEkC976rVyBc_U;->INSTANCE:Lcom/android/internal/os/-$$Lambda$BinderCallsStats$JdIS98lVGLAIfkEkC976rVyBc_U;

    invoke-interface {v10, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->mCallStats:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v6, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$8JB19VSNkNr7RqU7ZTJ6NGkFXVU;->INSTANCE:Lcom/android/internal/os/-$$Lambda$BinderCallsStats$8JB19VSNkNr7RqU7ZTJ6NGkFXVU;

    invoke-interface {v5, v6}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/android/internal/os/BinderCallsStats$CallStat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/internal/os/BinderCallsStats$UidEntry;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    iget-wide v5, v15, Lcom/android/internal/os/BinderCallsStats$CallStat;->time:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    nop

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v1, p0

    goto :goto_4

    :cond_3
    nop

    move-object/from16 v1, p0

    goto :goto_3

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Per UID Summary(UID: time, % of total_time, calls_count):"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v5, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$BeSOWJ8AoyB7S9CtX-6IPAXHyNQ;->INSTANCE:Lcom/android/internal/os/-$$Lambda$BinderCallsStats$BeSOWJ8AoyB7S9CtX-6IPAXHyNQ;

    invoke-interface {v1, v5}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    const-string v14, "  %7d: %11d %3.0f%% %8d"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    const/16 v18, 0x1

    aput-object v16, v15, v18

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v24, v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v18

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    long-to-double v5, v7

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v15, v1

    const/4 v0, 0x3

    aput-object v11, v15, v0

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v5, v25

    goto :goto_5

    :cond_5
    move-object/from16 v23, v0

    move-object/from16 v24, v1

    const/4 v0, 0x3

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  Summary: total_time=%d, calls_count=%d, avg_call_time=%.0f"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v0, v6

    long-to-double v5, v7

    long-to-double v14, v12

    div-double/2addr v5, v14

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v0, v6

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    goto/16 :goto_7

    :cond_6
    const-string v0, "Per UID Summary(UID: calls_count, % of total calls_count):"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Lcom/android/internal/os/-$$Lambda$BinderCallsStats$jhdszMKzG9FSuIQ4Vz9B0exXKPk;->INSTANCE:Lcom/android/internal/os/-$$Lambda$BinderCallsStats$jhdszMKzG9FSuIQ4Vz9B0exXKPk;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    const-string v11, "    %7d: %8d %3.0f%%"

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const/16 v16, 0x1

    aput-object v6, v15, v16

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    check-cast v14, Ljava/lang/Long;

    move-object/from16 v27, v0

    move-object/from16 v28, v1

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v18

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    long-to-double v3, v7

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v15, v1

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    goto :goto_6

    :cond_7
    move-object/from16 v29, v3

    move-object/from16 v30, v4

    :goto_7
    return-void

    :catchall_3
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    :goto_8
    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_8
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BinderCallsStats;->mUidEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BinderCallsStats;->mStartTime:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDetailedTracking(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats;->mDetailedTracking:Z

    :cond_0
    return-void
.end method
