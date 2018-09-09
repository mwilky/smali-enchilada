.class public Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidSippermAhInfo"
.end annotation


# instance fields
.field private cur_type:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

.field private mBg_mAh:D

.field private mDayOfAbn_Handled_Count:I

.field private mDayOfBg_mAh:D

.field private mDayOfFg_mAh:D

.field private mEverDayOfForceStoped:Z

.field private mFg_mAh:D

.field private mNeedReliefBudget:Z

.field private mUid:I

.field private recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusBGController$mAhRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "type"    # Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    .param p3, "mAh"    # D

    .line 1683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mNeedReliefBudget:Z

    .line 1672
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mEverDayOfForceStoped:Z

    .line 1684
    iput p1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    .line 1685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    .line 1686
    monitor-enter p0

    .line 1688
    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_0

    .line 1689
    :try_start_0
    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cur_type:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 1690
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    new-instance v7, Lcom/android/server/am/OnePlusBGController$mAhRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v1, v7

    move-object v2, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusBGController$mAhRecord;-><init>(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;JD)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1692
    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    .line 1693
    return-void

    .line 1692
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isAudioActive(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 1724
    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$2800()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1728
    .local v0, "strUid":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$2800()Landroid/media/AudioManager;

    move-result-object v1

    const-string v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1729
    .local v1, "uids":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1730
    const/4 v2, 0x1

    return v2

    .line 1733
    .end local v0    # "strUid":Ljava/lang/String;
    .end local v1    # "uids":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addAbnHandledCount()V
    .locals 1

    .line 1707
    iget v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfAbn_Handled_Count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfAbn_Handled_Count:I

    .line 1708
    return-void
.end method

.method public cleanUp(Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;)V
    .locals 6
    .param p1, "type"    # Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    .line 1857
    monitor-enter p0

    .line 1858
    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$CLEAN_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1883
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1861
    :pswitch_1
    iput v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfAbn_Handled_Count:I

    .line 1863
    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mEverDayOfForceStoped:Z

    .line 1865
    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mNeedReliefBudget:Z

    .line 1868
    :pswitch_2
    sget-object v0, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->HANDLED_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    const/4 v4, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->ifNotoriousAbn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mark uid "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " as ever day-of-force-stopped"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1871
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mEverDayOfForceStoped:Z

    .line 1875
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 1876
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1879
    :cond_1
    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    .line 1880
    nop

    .line 1886
    :goto_0
    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBg_mAh:D

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    .line 1887
    monitor-exit p0

    .line 1888
    return-void

    .line 1887
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public dumpRecords()V
    .locals 2

    .line 1911
    monitor-enter p0

    .line 1912
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1913
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1914
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusBGController$mAhRecord;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$mAhRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1913
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1917
    .end local v0    # "i":I
    :cond_0
    monitor-exit p0

    .line 1918
    return-void

    .line 1917
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDayOfBgmAh()D
    .locals 2

    .line 1701
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    return-wide v0
.end method

.method public getDayOfFgmAh()D
    .locals 2

    .line 1698
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    return-wide v0
.end method

.method public getTotoalDayOfmAh()D
    .locals 4

    .line 1704
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .line 1695
    iget v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    return v0
.end method

.method public ifNeedReliefBudget()Z
    .locals 1

    .line 1720
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mNeedReliefBudget:Z

    return v0
.end method

.method public ifNotoriousAbn()Z
    .locals 2

    .line 1711
    iget v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfAbn_Handled_Count:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public informChgToFg()V
    .locals 1

    .line 1715
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mEverDayOfForceStoped:Z

    if-eqz v0, :cond_0

    .line 1716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mNeedReliefBudget:Z

    .line 1718
    :cond_0
    return-void
.end method

.method public insert(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V
    .locals 8
    .param p1, "type"    # Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    .param p2, "mAh"    # D

    .line 1740
    monitor-enter p0

    .line 1741
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cur_type:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 1748
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1750
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$mAhRecord;

    .line 1753
    .local v0, "pre_Record":Lcom/android/server/am/OnePlusBGController$mAhRecord;
    const-wide/16 v1, 0x0

    cmpg-double v3, p2, v1

    if-gez v3, :cond_0

    .line 1754
    iget-wide v3, v0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mmAh:D

    move-wide p2, v3

    .line 1757
    :cond_0
    sget-object v3, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p1, v3, :cond_1

    .line 1758
    const-string/jumbo v3, "oops!! why insert type with PROC_TYPE.B_RECONFIRM"

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1773
    :cond_1
    if-eqz v0, :cond_9

    .line 1775
    iget-object v3, v0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-eq v3, p1, :cond_6

    .line 1776
    iget-wide v3, v0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mmAh:D

    sub-double v3, p2, v3

    .line 1777
    .local v3, "diff":D
    cmpg-double v1, v3, v1

    if-gez v1, :cond_2

    .line 1781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1.oops, diff is negative:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", just cleanUp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1782
    sget-object v1, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->NEGATIVE_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cleanUp(Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;)V

    goto :goto_0

    .line 1784
    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p1, v1, :cond_3

    .line 1787
    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    .line 1788
    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    goto :goto_0

    .line 1789
    :cond_3
    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p1, v1, :cond_5

    .line 1797
    iget v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->isAudioActive(I)Z

    move-result v1

    .line 1799
    .local v1, "isAudioActive":Z
    if-eqz v1, :cond_4

    .line 1801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### Due to audio-active, uid:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", add into Fg instead."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1802
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    add-double/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    .line 1803
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    add-double/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    goto :goto_0

    .line 1806
    :cond_4
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBg_mAh:D

    add-double/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBg_mAh:D

    .line 1807
    iget-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    .line 1812
    .end local v1    # "isAudioActive":Z
    .end local v3    # "diff":D
    :cond_5
    :goto_0
    goto :goto_1

    .line 1814
    :cond_6
    iget-wide v3, v0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mmAh:D

    sub-double v3, p2, v3

    .line 1815
    .restart local v3    # "diff":D
    cmpg-double v1, v3, v1

    if-gez v1, :cond_7

    .line 1819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2.oops, diff is negative:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", just cleanUp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1820
    sget-object v1, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->NEGATIVE_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cleanUp(Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;)V

    goto :goto_1

    .line 1823
    :cond_7
    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p1, v1, :cond_8

    .line 1825
    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBg_mAh:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBg_mAh:D

    .line 1826
    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    goto :goto_1

    .line 1830
    :cond_8
    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    .line 1831
    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    .line 1836
    .end local v3    # "diff":D
    :cond_9
    :goto_1
    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$2900()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1839
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1841
    .end local v0    # "pre_Record":Lcom/android/server/am/OnePlusBGController$mAhRecord;
    :cond_a
    nop

    .line 1849
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cur_type:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    .line 1850
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    new-instance v7, Lcom/android/server/am/OnePlusBGController$mAhRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v1, v7

    move-object v2, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusBGController$mAhRecord;-><init>(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;JD)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1851
    monitor-exit p0

    .line 1852
    return-void

    .line 1846
    :cond_b
    monitor-exit p0

    return-void

    .line 1851
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1891
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v0, v2

    .line 1892
    .local v0, "sumUp":D
    const/4 v2, 0x0

    .line 1893
    .local v2, "bg_Percentage":F
    const/4 v3, 0x0

    .line 1894
    .local v3, "fg_Percentage":F
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-eqz v4, :cond_0

    .line 1895
    iget-wide v4, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    div-double/2addr v4, v0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-float v3, v4

    .line 1896
    new-instance v4, Ljava/math/BigDecimal;

    float-to-double v5, v3

    invoke-direct {v4, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1897
    .local v4, "b":Ljava/math/BigDecimal;
    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    .line 1898
    const/high16 v5, 0x42c80000    # 100.0f

    sub-float v2, v5, v3

    .line 1901
    .end local v4    # "b":Ljava/math/BigDecimal;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# UidSippermAhInfo ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "], ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " %), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    .line 1903
    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " %)] [AbnHandled_Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfAbn_Handled_Count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] [NeedRelief: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mNeedReliefBudget:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "][DayOfForceStoped: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mEverDayOfForceStoped:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    iget-wide v7, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v5, v7

    .line 1908
    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1901
    return-object v4
.end method
