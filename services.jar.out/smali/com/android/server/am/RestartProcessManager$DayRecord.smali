.class final Lcom/android/server/am/RestartProcessManager$DayRecord;
.super Ljava/lang/Object;
.source "RestartProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestartProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DayRecord"
.end annotation


# instance fields
.field private isFinished:Z

.field private mCurForegroundTime:J

.field private mLastLaunchTime:J

.field private mOldForegroundTime:J

.field private mPackageName:Ljava/lang/String;

.field private mScoreFGDuration:D

.field private mScoreLRU:D

.field private mScoreLaunchTimes:D

.field private mStartCountTime:J

.field private mTotalForegroundTime:J

.field private mTotalLaunchTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1530
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLaunchTimes:D

    .line 1531
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreFGDuration:D

    .line 1532
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLRU:D

    .line 1533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->isFinished:Z

    .line 1536
    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mPackageName:Ljava/lang/String;

    .line 1537
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/RestartProcessManager$DayRecord;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1522
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mLastLaunchTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "x1"    # J

    .line 1522
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mLastLaunchTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/server/am/RestartProcessManager$DayRecord;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1522
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "x1"    # J

    .line 1522
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/am/RestartProcessManager$DayRecord;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1522
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mStartCountTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "x1"    # J

    .line 1522
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mStartCountTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/am/RestartProcessManager$DayRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1522
    iget-boolean v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->isFinished:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/am/RestartProcessManager$DayRecord;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "x1"    # Z

    .line 1522
    iput-boolean p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->isFinished:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/am/RestartProcessManager$DayRecord;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1522
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLaunchTimes:D

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "x1"    # D

    .line 1522
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLaunchTimes:D

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/server/am/RestartProcessManager$DayRecord;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1522
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreFGDuration:D

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "x1"    # D

    .line 1522
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreFGDuration:D

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/server/am/RestartProcessManager$DayRecord;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1522
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLRU:D

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "x1"    # D

    .line 1522
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLRU:D

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/server/am/RestartProcessManager$DayRecord;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1522
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/RestartProcessManager$DayRecord;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1522
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalForegroundTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "x1"    # J

    .line 1522
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalForegroundTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/server/am/RestartProcessManager$DayRecord;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1522
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mCurForegroundTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/am/RestartProcessManager$DayRecord;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1522
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mOldForegroundTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p1, "x1"    # J

    .line 1522
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mOldForegroundTime:J

    return-wide p1
.end method


# virtual methods
.method public decreaseLaunchTime()V
    .locals 4

    .line 1548
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    .line 1549
    return-void
.end method

.method public increaseFgTime(J)V
    .locals 2
    .param p1, "duration"    # J

    .line 1540
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mCurForegroundTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mCurForegroundTime:J

    .line 1541
    return-void
.end method

.method public increaseForegroundTime(JLjava/lang/String;)V
    .locals 3
    .param p1, "duration"    # J
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 1567
    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "increase duration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mCurForegroundTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mCurForegroundTime:J

    .line 1569
    return-void
.end method

.method public increaseLaunchTime()V
    .locals 4

    .line 1544
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    .line 1545
    return-void
.end method

.method public resetScore()V
    .locals 2

    .line 1578
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLaunchTimes:D

    .line 1579
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreFGDuration:D

    .line 1580
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLRU:D

    .line 1581
    return-void
.end method

.method public setFinish(Z)V
    .locals 0
    .param p1, "finish"    # Z

    .line 1584
    iput-boolean p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->isFinished:Z

    .line 1585
    return-void
.end method

.method public setFinishTime(JLjava/lang/String;)V
    .locals 4
    .param p1, "duration"    # J
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 1556
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mLastLaunchTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    .line 1557
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/RestartProcessManager$DayRecord;->increaseForegroundTime(JLjava/lang/String;)V

    goto :goto_0

    .line 1560
    :cond_0
    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abnormal duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", launch time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mLastLaunchTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :goto_0
    return-void
.end method

.method public setTotalLaunchTimes(J)V
    .locals 0
    .param p1, "times"    # J

    .line 1552
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    .line 1553
    return-void
.end method

.method public toRecord()Ljava/lang/String;
    .locals 4

    .line 1572
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mStartCountTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalLaunchTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mTotalForegroundTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mLastLaunchTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->isFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLaunchTimes:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreFGDuration:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$DayRecord;->mScoreLRU:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
