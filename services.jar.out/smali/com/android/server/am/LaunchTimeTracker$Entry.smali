.class Lcom/android/server/am/LaunchTimeTracker$Entry;
.super Ljava/lang/Object;
.source "LaunchTimeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LaunchTimeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field mFullyDrawnStartTime:J

.field mLaunchStartTime:J

.field mPerf:Landroid/util/BoostFramework;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mPerf:Landroid/util/BoostFramework;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/LaunchTimeTracker$Entry;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/LaunchTimeTracker$Entry;->stopFullyDrawnTraceIfNeeded()V

    return-void
.end method

.method private startLaunchTraces(Ljava/lang/String;)V
    .locals 5

    iget-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-wide/16 v2, 0x40

    if-eqz v0, :cond_0

    const-string v0, "drawing"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launching: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string v0, "drawing"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method private stopFullyDrawnTraceIfNeeded()V
    .locals 6

    iget-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x40

    const-string v4, "drawing"

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iput-wide v2, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    :cond_0
    return-void
.end method


# virtual methods
.method setLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 8

    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/16 v4, 0x1081

    const/4 v5, -0x1

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v6, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    iget-wide v6, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mPerf:Landroid/util/BoostFramework;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v5, v1}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/LaunchTimeTracker$Entry;->startLaunchTraces(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    goto :goto_0

    :cond_1
    iget-wide v6, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mPerf:Landroid/util/BoostFramework;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v2, v5, v1}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/LaunchTimeTracker$Entry;->startLaunchTraces(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    :cond_3
    :goto_0
    return-void
.end method
