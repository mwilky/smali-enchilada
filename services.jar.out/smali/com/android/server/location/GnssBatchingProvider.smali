.class public Lcom/android/server/location/GnssBatchingProvider;
.super Ljava/lang/Object;
.source "GnssBatchingProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssBatchingProvider"


# instance fields
.field private mEnabled:Z

.field private final mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

.field private mPeriodNanos:J

.field private mStarted:Z

.field private mWakeOnFifoFull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GnssBatchingProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssBatchingProvider;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssBatchingProvider;-><init>(Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->native_get_batch_size()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(JZ)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/server/location/GnssBatchingProvider;->native_start_batch(JZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()V
    .locals 0

    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->native_flush_batch()V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->native_stop_batch()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->native_init_batching()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()V
    .locals 0

    invoke-static {}, Lcom/android/server/location/GnssBatchingProvider;->native_cleanup_batching()V

    return-void
.end method

.method private static native native_cleanup_batching()V
.end method

.method private static native native_flush_batch()V
.end method

.method private static native native_get_batch_size()I
.end method

.method private static native native_init_batching()Z
.end method

.method private static native native_start_batch(JZ)Z
.end method

.method private static native native_stop_batch()Z
.end method


# virtual methods
.method public disable()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/location/GnssBatchingProvider;->stop()Z

    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->cleanupBatching()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mEnabled:Z

    return-void
.end method

.method public enable()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->initBatching()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mEnabled:Z

    if-nez v0, :cond_0

    const-string v0, "GnssBatchingProvider"

    const-string v1, "Failed to initialize GNSS batching"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    if-nez v0, :cond_0

    const-string v0, "GnssBatchingProvider"

    const-string v1, "Cannot flush since GNSS batching has not started."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->flushBatch()V

    return-void
.end method

.method public getBatchSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->getBatchSize()I

    move-result v0

    return v0
.end method

.method resumeIfStarted()V
    .locals 4

    sget-boolean v0, Lcom/android/server/location/GnssBatchingProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssBatchingProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    iget-wide v1, p0, Lcom/android/server/location/GnssBatchingProvider;->mPeriodNanos:J

    iget-boolean v3, p0, Lcom/android/server/location/GnssBatchingProvider;->mWakeOnFifoFull:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->startBatch(JZ)Z

    :cond_1
    return-void
.end method

.method public start(JZ)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mEnabled:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-string v0, "GnssBatchingProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid periodNanos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " in batching request, not started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->startBatch(JZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    if-eqz v0, :cond_1

    iput-wide p1, p0, Lcom/android/server/location/GnssBatchingProvider;->mPeriodNanos:J

    iput-boolean p3, p0, Lcom/android/server/location/GnssBatchingProvider;->mWakeOnFifoFull:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public stop()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssBatchingProvider;->mNative:Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider$GnssBatchingProviderNative;->stopBatch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/GnssBatchingProvider;->mStarted:Z

    :cond_0
    return v0
.end method
