.class public abstract Lcom/android/internal/os/KernelUidCpuTimeReaderBase;
.super Ljava/lang/Object;
.source "KernelUidCpuTimeReaderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final DEFAULT_THROTTLE_INTERVAL:J = 0x2710L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mLastTimeReadMs:J

.field private mThrottleInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->TAG:Ljava/lang/String;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->mLastTimeReadMs:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->mThrottleInterval:J

    return-void
.end method


# virtual methods
.method public readDelta(Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->mLastTimeReadMs:J

    iget-wide v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->mThrottleInterval:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->mLastTimeReadMs:J

    return-void
.end method

.method protected abstract readDeltaImpl(Lcom/android/internal/os/KernelUidCpuTimeReaderBase$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setThrottleInterval(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lcom/android/internal/os/KernelUidCpuTimeReaderBase;->mThrottleInterval:J

    :cond_0
    return-void
.end method
