.class Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
.super Ljava/lang/Object;
.source "RestartProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestartProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageRankInfo"
.end annotation


# instance fields
.field public clusterID:I

.field private hasAddLaunchTimes:Z

.field private isFinishLaunch:Z

.field private mCurRecordIndex:I

.field private mDayRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/RestartProcessManager$DayRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLastCountTime:J

.field private mLastLaunchTime:J

.field private mPackageName:Ljava/lang/String;

.field private mTempLastLaunchTime:J

.field public mTotalFGScore:D

.field private mTotalForegroundTime:J

.field private mTotalLaunchTime:J

.field public mTotalLaunchTimesScore:D

.field public mTotalLruScore:D


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->isFinishLaunch:Z

    iput-boolean v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->hasAddLaunchTimes:Z

    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3100()J

    move-result-wide v4

    rem-long v4, v2, v4

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    if-eqz p2, :cond_0

    nop

    :goto_0
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3200()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v0, v4, :cond_0

    new-instance v4, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    invoke-static {v0, v4, v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1302(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->isFinishLaunch:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->isFinishLaunch:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalForegroundTime:J

    return-wide v0
.end method

.method static synthetic access$2914(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalForegroundTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalForegroundTime:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    return-wide v0
.end method

.method static synthetic access$3014(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getIndexOfRecord(J)I
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    sub-long v3, p1, v3

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3100()J

    move-result-wide v5

    div-long/2addr v3, v5

    iget-object v5, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3400()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    iget-object v8, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_2

    move v7, v6

    :goto_1
    int-to-long v8, v7

    cmp-long v8, v8, v3

    if-gez v8, :cond_2

    new-instance v8, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v9, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v8, v9}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    iget-wide v9, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3100()J

    move-result-wide v11

    add-int/lit8 v13, v7, 0x1

    move v14, v7

    int-to-long v6, v13

    mul-long/2addr v11, v6

    add-long/2addr v9, v11

    invoke-static {v8, v9, v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1302(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    iget-object v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3400()I

    move-result v7

    if-lt v6, v7, :cond_1

    iget-object v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    :goto_2
    iget-object v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v14, 0x1

    move v15, v7

    move v7, v6

    move v6, v15

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1300(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    iget-object v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3200()I

    move-result v6

    iget-object v7, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager;->access$3202(I)I

    :cond_3
    iget v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    return v6
.end method


# virtual methods
.method public cleanData(J)V
    .locals 7

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/RestartProcessManager;->access$1002(Z)Z

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/am/RestartProcessManager;->access$302(Z)Z

    invoke-static {p1, p2}, Lcom/android/server/am/RestartProcessManager;->access$402(J)J

    const-string v2, ""

    invoke-static {v2}, Lcom/android/server/am/RestartProcessManager;->access$3302(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3100()J

    move-result-wide v2

    rem-long v2, p1, v2

    sub-long v2, p1, v2

    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalForegroundTime:J

    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    new-instance v4, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1302(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTempLastLaunchTime:J

    iput-boolean v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->isFinishLaunch:Z

    return-void
.end method

.method public dump()V
    .locals 4

    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : X : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", Y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", Z : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public increaseLaunchTime(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-virtual {v0}, Lcom/android/server/am/RestartProcessManager$DayRecord;->increaseLaunchTime()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->hasAddLaunchTimes:Z

    const-string v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Increase Total Launch Time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", times : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v2}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1200(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetOldRecord()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalForegroundTime:J

    return-void
.end method

.method public resetScore()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    return-void
.end method

.method public setCluster(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->clusterID:I

    return-void
.end method

.method public setFinishTime(J)V
    .locals 10

    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    sub-long v0, p1, v0

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3500()J

    move-result-wide v2

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-gez v2, :cond_2

    const-string v2, "RestartProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duration is too short, ignore : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTempLastLaunchTime:J

    iput-wide v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    iget-wide v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTempLastLaunchTime:J

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v2}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1300(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTempLastLaunchTime:J

    invoke-static {v2, v4, v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1102(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v2, v4, v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1102(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->hasAddLaunchTimes:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$DayRecord;->decreaseLaunchTime()V

    const-string v2, ""

    invoke-static {v2}, Lcom/android/server/am/RestartProcessManager;->access$3302(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iput-boolean v3, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->hasAddLaunchTimes:Z

    return-void

    :cond_2
    iget-wide v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v4}, Lcom/android/server/am/RestartProcessManager$DayRecord;->setFinishTime(JLjava/lang/String;)V

    :cond_3
    iput-boolean v3, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->hasAddLaunchTimes:Z

    return-void
.end method

.method public setLastLaunchTime(J)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTempLastLaunchTime:J

    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->updateSelf(J)Z

    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1102(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    return-void
.end method

.method public setTotalLaunchTimes(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    return-void
.end method

.method public toRecord()[B
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$DayRecord;->toRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public updateSelf(J)Z
    .locals 13

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    sub-long v1, p1, v1

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3100()J

    move-result-wide v3

    div-long/2addr v1, v3

    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3400()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    iget-object v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_2

    const-string v5, "RestartProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package record in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  need to add : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", max size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3200()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    :goto_1
    int-to-long v6, v5

    cmp-long v6, v6, v1

    if-gez v6, :cond_2

    new-instance v6, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3100()J

    move-result-wide v9

    add-int/lit8 v11, v5, 0x1

    int-to-long v11, v11

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    invoke-static {v6, v7, v8}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1302(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3400()I

    move-result v8

    if-lt v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3200()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v5, v6, :cond_3

    const-string v5, "RestartProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package record size is abnormal in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", max size is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3200()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3200()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v5, v6

    nop

    :goto_2
    if-ge v4, v5, :cond_3

    new-instance v6, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v4}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1300(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3200()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/RestartProcessManager;->access$3202(I)I

    const/4 v0, 0x1

    :cond_4
    const-string v4, "RestartProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSelf :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
