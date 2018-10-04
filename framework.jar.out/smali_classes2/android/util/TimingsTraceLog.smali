.class public Landroid/util/TimingsTraceLog;
.super Ljava/lang/Object;
.source "TimingsTraceLog.java"


# static fields
.field private static final DEBUG_BOOT_TIME:Z


# instance fields
.field private final mStartTimes:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mThreadId:J

.field private mTraceTag:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    sget-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:Ljava/util/Deque;

    iput-object p1, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    iput-wide p2, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    return-void
.end method

.method private assertSameThread()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iget-wide v3, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instance of TimingsTraceLog can only be called from the thread it was created on (tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/util/TimingsTraceLog;->mThreadId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "), but was from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (tid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public logDuration(Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " took to complete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public traceBegin(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->assertSameThread()V

    iget-wide v0, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:Ljava/util/Deque;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public traceEnd()V
    .locals 6

    invoke-direct {p0}, Landroid/util/TimingsTraceLog;->assertSameThread()V

    iget-wide v0, p0, Landroid/util/TimingsTraceLog;->mTraceTag:J

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    sget-boolean v0, Landroid/util/TimingsTraceLog;->DEBUG_BOOT_TIME:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "traceEnd called more times than traceBegin"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Landroid/util/TimingsTraceLog;->mStartTimes:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    return-void
.end method
