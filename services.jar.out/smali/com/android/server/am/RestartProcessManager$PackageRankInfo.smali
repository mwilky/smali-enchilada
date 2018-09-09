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
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isNewAdd"    # Z
    .param p3, "hasRecord"    # Z

    .line 1337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    .line 1331
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    .line 1334
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->isFinishLaunch:Z

    .line 1335
    iput-boolean v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->hasAddLaunchTimes:Z

    .line 1338
    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    .line 1340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1341
    .local v2, "now":J
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3100()J

    move-result-wide v4

    rem-long v4, v2, v4

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    .line 1343
    if-eqz p2, :cond_0

    .line 1344
    nop

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3200()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v0, v4, :cond_0

    .line 1345
    new-instance v4, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    .line 1346
    .local v4, "record":Lcom/android/server/am/RestartProcessManager$DayRecord;
    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    .end local v4    # "record":Lcom/android/server/am/RestartProcessManager$DayRecord;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1349
    .end local v0    # "i":I
    :cond_0
    if-nez p3, :cond_1

    .line 1350
    new-instance v0, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    .line 1351
    .local v0, "record":Lcom/android/server/am/RestartProcessManager$DayRecord;
    iget-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    invoke-static {v0, v4, v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1302(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 1352
    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1354
    .end local v0    # "record":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_1
    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p1, "x1"    # J

    .line 1318
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 1318
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p1, "x1"    # J

    .line 1318
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 1318
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 1318
    iget-boolean v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->isFinishLaunch:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p1, "x1"    # Z

    .line 1318
    iput-boolean p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->isFinishLaunch:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 1318
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalForegroundTime:J

    return-wide v0
.end method

.method static synthetic access$2914(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p1, "x1"    # J

    .line 1318
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalForegroundTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalForegroundTime:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 1318
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    return-wide v0
.end method

.method static synthetic access$3014(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p1, "x1"    # J

    .line 1318
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 1318
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getIndexOfRecord(J)I
    .locals 16
    .param p1, "curTime"    # J

    move-object/from16 v0, p0

    .line 1489
    iget-object v1, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    .line 1490
    .local v1, "size":J
    iget-wide v3, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    sub-long v3, p1, v3

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3100()J

    move-result-wide v5

    div-long/2addr v3, v5

    .line 1491
    .local v3, "days":J
    iget-object v5, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3400()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1492
    .local v5, "daysToDelete":I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_0

    .line 1493
    iget-object v8, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1492
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1495
    .end local v7    # "i":I
    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_2

    .line 1496
    move v7, v6

    .restart local v7    # "i":I
    :goto_1
    int-to-long v8, v7

    cmp-long v8, v8, v3

    if-gez v8, :cond_2

    .line 1497
    new-instance v8, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v9, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v8, v9}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    .line 1498
    .local v8, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    iget-wide v9, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3100()J

    move-result-wide v11

    add-int/lit8 v13, v7, 0x1

    move v14, v7

    int-to-long v6, v13

    .end local v7    # "i":I
    .local v14, "i":I
    mul-long/2addr v11, v6

    add-long/2addr v9, v11

    invoke-static {v8, v9, v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1302(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 1499
    iget-object v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3400()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 1500
    iget-object v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1501
    :cond_1
    const/4 v7, 0x0

    :goto_2
    iget-object v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1496
    .end local v8    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    add-int/lit8 v6, v14, 0x1

    .end local v14    # "i":I
    .local v6, "i":I
    move v15, v7

    move v7, v6

    move v6, v15

    goto :goto_1

    .line 1504
    .end local v6    # "i":I
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

    .line 1505
    iget-object v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iput v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    .line 1506
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3200()I

    move-result v6

    iget-object v7, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 1507
    iget-object v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager;->access$3202(I)I

    .line 1509
    :cond_3
    iget v6, v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    return v6
.end method


# virtual methods
.method public cleanData(J)V
    .locals 7
    .param p1, "now"    # J

    .line 1357
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/RestartProcessManager;->access$1002(Z)Z

    .line 1358
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/am/RestartProcessManager;->access$302(Z)Z

    .line 1359
    invoke-static {p1, p2}, Lcom/android/server/am/RestartProcessManager;->access$402(J)J

    .line 1360
    const-string v2, ""

    invoke-static {v2}, Lcom/android/server/am/RestartProcessManager;->access$3302(Ljava/lang/String;)Ljava/lang/String;

    .line 1362
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    .line 1363
    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    .line 1364
    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    .line 1366
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3100()J

    move-result-wide v2

    rem-long v2, p1, v2

    sub-long v2, p1, v2

    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    .line 1367
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    .line 1368
    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalForegroundTime:J

    .line 1369
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1371
    new-instance v4, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    .line 1372
    .local v4, "record":Lcom/android/server/am/RestartProcessManager$DayRecord;
    iget-wide v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    invoke-static {v4, v5, v6}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1302(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 1373
    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    iput v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    .line 1375
    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    .line 1376
    iput-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTempLastLaunchTime:J

    .line 1377
    iput-boolean v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->isFinishLaunch:Z

    .line 1378
    return-void
.end method

.method public dump()V
    .locals 4

    .line 1513
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

    .line 1515
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1475
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public increaseLaunchTime(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1460
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-virtual {v0}, Lcom/android/server/am/RestartProcessManager$DayRecord;->increaseLaunchTime()V

    .line 1461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->hasAddLaunchTimes:Z

    .line 1463
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

    .line 1464
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

    .line 1463
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    return-void
.end method

.method public resetOldRecord()V
    .locals 2

    .line 1422
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    .line 1423
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalForegroundTime:J

    .line 1424
    return-void
.end method

.method public resetScore()V
    .locals 2

    .line 1427
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    .line 1428
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    .line 1429
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    .line 1430
    return-void
.end method

.method public setCluster(I)V
    .locals 0
    .param p1, "id"    # I

    .line 1518
    iput p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->clusterID:I

    .line 1519
    return-void
.end method

.method public setFinishTime(J)V
    .locals 10
    .param p1, "finishTime"    # J

    .line 1437
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    sub-long v0, p1, v0

    .line 1438
    .local v0, "duration":J
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3500()J

    move-result-wide v2

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-gez v2, :cond_2

    .line 1439
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

    .line 1440
    iget-wide v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTempLastLaunchTime:J

    iput-wide v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    .line 1441
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

    .line 1442
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTempLastLaunchTime:J

    invoke-static {v2, v4, v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1102(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    goto :goto_0

    .line 1444
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v2, v4, v5}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1102(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 1446
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->hasAddLaunchTimes:Z

    if-eqz v2, :cond_1

    .line 1447
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$DayRecord;->decreaseLaunchTime()V

    .line 1448
    const-string v2, ""

    invoke-static {v2}, Lcom/android/server/am/RestartProcessManager;->access$3302(Ljava/lang/String;)Ljava/lang/String;

    .line 1450
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->hasAddLaunchTimes:Z

    .line 1451
    return-void

    .line 1453
    :cond_2
    iget-wide v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    cmp-long v2, v6, v4

    if-eqz v2, :cond_3

    .line 1454
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v4}, Lcom/android/server/am/RestartProcessManager$DayRecord;->setFinishTime(JLjava/lang/String;)V

    .line 1456
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->hasAddLaunchTimes:Z

    .line 1457
    return-void
.end method

.method public setLastLaunchTime(J)V
    .locals 2
    .param p1, "time"    # J

    .line 1468
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTempLastLaunchTime:J

    .line 1469
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastLaunchTime:J

    .line 1470
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->updateSelf(J)Z

    .line 1471
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1102(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 1472
    return-void
.end method

.method public setTotalLaunchTimes(J)V
    .locals 0
    .param p1, "times"    # J

    .line 1433
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTime:J

    .line 1434
    return-void
.end method

.method public toRecord()[B
    .locals 4

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1480
    .local v0, "sb":Ljava/lang/StringBuilder;
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

    .line 1481
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

    .line 1482
    .local v2, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$DayRecord;->toRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    .end local v2    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    goto :goto_0

    .line 1485
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public updateSelf(J)Z
    .locals 13
    .param p1, "now"    # J

    .line 1381
    const/4 v0, 0x0

    .line 1382
    .local v0, "hasChangedMaxRecord":Z
    iget-wide v1, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    sub-long v1, p1, v1

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3100()J

    move-result-wide v3

    div-long/2addr v1, v3

    .line 1383
    .local v1, "days":J
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3400()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1385
    .local v3, "daysToDelete":I
    const/4 v4, 0x0

    move v5, v4

    .line 1385
    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 1386
    iget-object v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1385
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1389
    .end local v5    # "i":I
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_2

    .line 1390
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

    .line 1391
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3200()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1390
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    move v5, v4

    .line 1392
    .restart local v5    # "i":I
    :goto_1
    int-to-long v6, v5

    cmp-long v6, v6, v1

    if-gez v6, :cond_2

    .line 1393
    new-instance v6, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    .line 1394
    .local v6, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    iget-wide v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mLastCountTime:J

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3100()J

    move-result-wide v9

    add-int/lit8 v11, v5, 0x1

    int-to-long v11, v11

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    invoke-static {v6, v7, v8}, Lcom/android/server/am/RestartProcessManager$DayRecord;->access$1302(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 1395
    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3400()I

    move-result v8

    if-lt v7, v8, :cond_1

    .line 1396
    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1397
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    .end local v6    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1400
    .end local v5    # "i":I
    :cond_2
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3200()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 1401
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

    .line 1402
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3200()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1401
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3200()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1405
    .local v5, "diff":I
    nop

    .line 1405
    .local v4, "j":I
    :goto_2
    if-ge v4, v5, :cond_3

    .line 1406
    new-instance v6, Lcom/android/server/am/RestartProcessManager$DayRecord;

    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    .line 1407
    .restart local v6    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    iget-object v7, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1405
    .end local v6    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1411
    .end local v4    # "j":I
    .end local v5    # "diff":I
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

    .line 1412
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mCurRecordIndex:I

    .line 1413
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->access$3200()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1414
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mDayRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/RestartProcessManager;->access$3202(I)I

    .line 1415
    const/4 v0, 0x1

    .line 1417
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

    .line 1418
    return v0
.end method
