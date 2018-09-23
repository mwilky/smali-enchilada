.class public final Lcom/android/server/am/BroadcastStats;
.super Ljava/lang/Object;
.source "BroadcastStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastStats$ViolationEntry;,
        Lcom/android/server/am/BroadcastStats$PackageEntry;,
        Lcom/android/server/am/BroadcastStats$ActionEntry;
    }
.end annotation


# static fields
.field static final ACTIONS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/BroadcastStats$ActionEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "BroadcastStats"


# instance fields
.field final mActions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/BroadcastStats$ActionEntry;",
            ">;"
        }
    .end annotation
.end field

.field mEndRealtime:J

.field mEndUptime:J

.field final mStartRealtime:J

.field final mStartUptime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/BroadcastStats$1;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastStats$1;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastStats;->ACTIONS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    return-void
.end method


# virtual methods
.method public addBackgroundCheckViolation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastStats$ActionEntry;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/am/BroadcastStats$ActionEntry;

    invoke-direct {v1, p1}, Lcom/android/server/am/BroadcastStats$ActionEntry;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    if-nez v1, :cond_1

    new-instance v2, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    invoke-direct {v2}, Lcom/android/server/am/BroadcastStats$ViolationEntry;-><init>()V

    move-object v1, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v2, v1, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    return-void
.end method

.method public addBroadcast(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastStats$ActionEntry;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/am/BroadcastStats$ActionEntry;

    invoke-direct {v1, p1}, Lcom/android/server/am/BroadcastStats$ActionEntry;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BroadcastStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while adding action entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    add-int/2addr v1, p3

    iput v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    iget v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    add-int/2addr v1, p4

    iput v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    iget-wide v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    add-long/2addr v1, p5

    iput-wide v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    iget-wide v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    cmp-long v1, v1, p5

    if-gez v1, :cond_1

    iput-wide p5, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    :cond_1
    iget-object v1, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastStats$PackageEntry;

    if-nez v1, :cond_2

    new-instance v2, Lcom/android/server/am/BroadcastStats$PackageEntry;

    invoke-direct {v2}, Lcom/android/server/am/BroadcastStats$PackageEntry;-><init>()V

    move-object v1, v2

    iget-object v2, v0, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget v2, v1, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    return-void
.end method

.method public dumpCheckinStats(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    const-string v0, "broadcast-stats,1,"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    :goto_1
    iget-wide v2, p0, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    iget-object v0, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastStats$ActionEntry;

    if-eqz p2, :cond_2

    iget-object v2, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v2, "a,"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v2, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_3

    const-string/jumbo v3, "p,"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastStats$PackageEntry;

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_3
    iget-object v2, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_4
    if-ltz v2, :cond_4

    const-string/jumbo v3, "v,"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    :cond_5
    return-void
.end method

.method public dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/BroadcastStats;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastStats$ActionEntry;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/am/BroadcastStats;->ACTIONS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/BroadcastStats$ActionEntry;

    if-eqz p3, :cond_1

    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Number received: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mReceiveCount:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ", skipped: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mSkipCount:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Total dispatch time: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mTotalDispatchTime:J

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v4, ", max: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mMaxDispatchTime:J

    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_2
    if-ltz v4, :cond_2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Package "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastStats$PackageEntry;

    iget v6, v5, Lcom/android/server/am/BroadcastStats$PackageEntry;->mSendCount:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " times"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    iget-object v4, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_3
    if-ltz v4, :cond_3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Bg Check Violation "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/server/am/BroadcastStats$ActionEntry;->mBackgroundCheckViolations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastStats$ViolationEntry;

    iget v6, v5, Lcom/android/server/am/BroadcastStats$ViolationEntry;->mCount:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " times"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    :cond_4
    return v0
.end method
