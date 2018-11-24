.class Lcom/android/server/am/OnePlusBGController$UidStat;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UidStat"
.end annotation


# instance fields
.field mIsBackGround:Z

.field mIsFgBlack:Z

.field mLastUpdate:J

.field mState:I

.field final mStats:Landroid/util/SparseLongArray;

.field private mTraffic:Lcom/android/server/am/OnePlusBGController$Traffic;

.field mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

.field mUid:I

.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBGController;IZI)V
    .locals 8

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mStats:Landroid/util/SparseLongArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsFgBlack:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsBackGround:Z

    iput p2, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mUid:I

    iput p4, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mState:I

    iput-boolean p3, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsFgBlack:Z

    new-instance v1, Lcom/android/server/am/OnePlusBGController$Traffic;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/OnePlusBGController$Traffic;-><init>(Lcom/android/server/am/OnePlusBGController;I)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mTraffic:Lcom/android/server/am/OnePlusBGController$Traffic;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mLastUpdate:J

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mStats:Landroid/util/SparseLongArray;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p4, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq p4, v2, :cond_0

    const/4 v2, 0x3

    if-ne p4, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsFgBlack:Z

    invoke-static {p1, v2, p4}, Lcom/android/server/am/OnePlusBGController;->access$2500(Lcom/android/server/am/OnePlusBGController;ZI)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsBackGround:Z

    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsBackGround:Z

    sget-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsBackGround init to  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsBackGround:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_6

    const v3, 0x101d3

    const-wide/16 v4, 0xbb8

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsBackGround:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    :goto_3
    move-object v7, v0

    goto :goto_4

    :cond_5
    sget-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_3

    :goto_4
    move-object v2, p1

    move-object v6, p0

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/OnePlusBGController;->access$2700(Lcom/android/server/am/OnePlusBGController;IJLcom/android/server/am/OnePlusBGController$UidStat;Lcom/android/server/am/OnePlusBGController$PROC_TYPE;)V

    :cond_6
    return-void
.end method


# virtual methods
.method dump()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController$UidStat;->getTotalTimeInBackground()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController$UidStat;->getTotalTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " IsBackGround= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsBackGround:Z

    if-eqz v1, :cond_0

    const-string v1, "B"

    goto :goto_0

    :cond_0
    const-string v1, "F"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mUid:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusBGController;->access$2800(Lcom/android/server/am/OnePlusBGController;IZ)Z

    return-void
.end method

.method getState()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mState:I

    return v0
.end method

.method getTotalTime()J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method getTotalTimeInBackground()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-boolean v5, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsFgBlack:Z

    invoke-static {v4, v5, v3}, Lcom/android/server/am/OnePlusBGController;->access$2500(Lcom/android/server/am/OnePlusBGController;ZI)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    add-long/2addr v0, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method getTraffic()Lcom/android/server/am/OnePlusBGController$Traffic;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mTraffic:Lcom/android/server/am/OnePlusBGController$Traffic;

    return-object v0
.end method

.method getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mUid:I

    return v0
.end method

.method isBackGround()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsBackGround:Z

    return v0
.end method

.method isFgBgChange(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsBackGround:Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsFgBlack:Z

    invoke-static {v1, v2, p1}, Lcom/android/server/am/OnePlusBGController;->access$2500(Lcom/android/server/am/OnePlusBGController;ZI)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSuspiciousState()Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method update(IZ)V
    .locals 15

    move-object v6, p0

    move/from16 v7, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mState:I

    const-wide/16 v1, 0x0

    const/16 v3, 0x13

    if-ne v0, v3, :cond_0

    iget-object v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v0, v7, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsBackGround:Z

    sget-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    iput-object v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto/16 :goto_4

    :cond_0
    iget-wide v3, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mLastUpdate:J

    sub-long v10, v8, v3

    iget-object v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mStats:Landroid/util/SparseLongArray;

    iget v3, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mState:I

    invoke-virtual {v0, v3}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v3

    add-long v12, v3, v10

    iget-object v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mStats:Landroid/util/SparseLongArray;

    iget v3, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mState:I

    invoke-virtual {v0, v3, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v0, v7, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_1
    if-eqz p2, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusBGController$UidStat;->isFgBgChange(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsBackGround:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsBackGround:Z

    iget-boolean v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsBackGround:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##snapshot of traffic #base :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mTraffic:Lcom/android/server/am/OnePlusBGController$Traffic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/OnePlusBGController$Traffic;->mTimeStamp:J

    iget-object v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mTraffic:Lcom/android/server/am/OnePlusBGController$Traffic;

    iget v1, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mUid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/OnePlusBGController$Traffic;->mTxBytes:J

    iget-object v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mTraffic:Lcom/android/server/am/OnePlusBGController$Traffic;

    iget v1, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mUid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/OnePlusBGController$Traffic;->mRxBytes:J

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eq v7, v1, :cond_5

    const/4 v1, 0x3

    if-ne v7, v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move v14, v0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :goto_2
    iget-boolean v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsBackGround:Z

    if-eqz v0, :cond_7

    if-eqz v14, :cond_6

    sget-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_3

    :cond_7
    if-eqz v14, :cond_8

    sget-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    :goto_3
    iput-object v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    iget-object v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne v0, v1, :cond_9

    const-string/jumbo v0, "oops!! why exist mType == PROC_TYPE.F_RECONFIRM"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsBackGround update to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsBackGround:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->this$0:Lcom/android/server/am/OnePlusBGController;

    const v1, 0x101d3

    const-wide/16 v2, 0xbb8

    iget-object v5, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/OnePlusBGController;->access$2700(Lcom/android/server/am/OnePlusBGController;IJLcom/android/server/am/OnePlusBGController$UidStat;Lcom/android/server/am/OnePlusBGController$PROC_TYPE;)V

    :cond_a
    :goto_4
    iput v7, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mState:I

    iput-wide v8, v6, Lcom/android/server/am/OnePlusBGController$UidStat;->mLastUpdate:J

    return-void
.end method

.method updateIsFgBlack(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController$UidStat;->mIsFgBlack:Z

    return-void
.end method
