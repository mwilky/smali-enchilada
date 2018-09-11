.class final Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;
.super Lcom/google/common/util/concurrent/SmoothRateLimiter;
.source "SmoothRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SmoothRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SmoothWarmingUp"
.end annotation


# instance fields
.field private halfPermits:D

.field private slope:D

.field private final warmupPeriodMicros:J


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "stopwatch"    # Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;
    .param p2, "warmupPeriod"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/SmoothRateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/SmoothRateLimiter$1;)V

    .line 232
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->warmupPeriodMicros:J

    .line 233
    return-void
.end method

.method private permitsToTime(D)D
    .locals 4
    .param p1, "permits"    # D

    .line 270
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->stableIntervalMicros:D

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->slope:D

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method doSetRate(DD)V
    .locals 8
    .param p1, "permitsPerSecond"    # D
    .param p3, "stableIntervalMicros"    # D

    .line 237
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    .line 238
    .local v0, "oldMaxPermits":D
    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->warmupPeriodMicros:J

    long-to-double v2, v2

    div-double/2addr v2, p3

    iput-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    .line 239
    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->halfPermits:D

    .line 241
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v2, p3

    .line 242
    .local v2, "coldIntervalMicros":D
    sub-double v4, v2, p3

    iget-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->halfPermits:D

    div-double/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->slope:D

    .line 243
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v0, v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    .line 245
    iput-wide v5, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->storedPermits:D

    goto :goto_1

    .line 247
    :cond_0
    cmpl-double v4, v0, v5

    if-nez v4, :cond_1

    .line 248
    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    goto :goto_0

    .line 249
    :cond_1
    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->storedPermits:D

    iget-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->maxPermits:D

    mul-double/2addr v4, v6

    div-double/2addr v4, v0

    :goto_0
    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->storedPermits:D

    .line 251
    :goto_1
    return-void
.end method

.method storedPermitsToWaitTime(DD)J
    .locals 10
    .param p1, "storedPermits"    # D
    .param p3, "permitsToTake"    # D

    .line 255
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->halfPermits:D

    sub-double v0, p1, v0

    .line 256
    .local v0, "availablePermitsAboveHalf":D
    const-wide/16 v2, 0x0

    .line 258
    .local v2, "micros":J
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    .line 259
    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 260
    .local v4, "permitsAboveHalfToTake":D
    invoke-direct {p0, v0, v1}, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->permitsToTime(D)D

    move-result-wide v6

    sub-double v8, v0, v4

    .line 261
    invoke-direct {p0, v8, v9}, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->permitsToTime(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    mul-double/2addr v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    double-to-long v2, v6

    .line 262
    sub-double/2addr p3, v4

    .line 265
    .end local v4    # "permitsAboveHalfToTake":D
    :cond_0
    long-to-double v4, v2

    iget-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;->stableIntervalMicros:D

    mul-double/2addr v6, p3

    add-double/2addr v4, v6

    double-to-long v2, v4

    .line 266
    return-wide v2
.end method
