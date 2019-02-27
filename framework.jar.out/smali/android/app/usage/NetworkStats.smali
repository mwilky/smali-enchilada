.class public final Landroid/app/usage/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/NetworkStats$Bucket;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkStats"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mEndTimeStamp:J

.field private mEnumerationIndex:I

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

.field private mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private final mStartTimeStamp:J

.field private mState:I

.field private mSummary:Landroid/net/NetworkStats;

.field private mTag:I

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidOrUidIndex:I

.field private mUids:[I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/NetworkTemplate;IJJLandroid/net/INetworkStatsService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # Landroid/net/NetworkTemplate;
    .param p3, "flags"    # I
    .param p4, "startTimestamp"    # J
    .param p6, "endTimestamp"    # J
    .param p8, "statsService"    # Landroid/net/INetworkStatsService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mTag:I

    .line 73
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/usage/NetworkStats;->mState:I

    .line 85
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 90
    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 95
    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 100
    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 101
    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p8, p3, v0}, Landroid/net/INetworkStatsService;->openSessionForUsageStats(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    .line 109
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 110
    iput-object p2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    .line 111
    iput-wide p4, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    .line 112
    iput-wide p6, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    .line 113
    return-void
.end method

.method private fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V
    .locals 2
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .line 609
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$200(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$102(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 610
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->tag:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$400(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$302(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 611
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->set:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$600(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$502(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 612
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$800(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$702(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 614
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->metered:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$1000(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$902(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 615
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget v0, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$1200(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$1102(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 616
    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1302(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 617
    iget-wide v0, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1402(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 618
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1502(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 619
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1602(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 620
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1702(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 621
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1802(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 622
    return-void
.end method

.method private getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 4
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .line 657
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_1

    .line 658
    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 659
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    .line 661
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$200(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$102(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 662
    iget v0, p0, Landroid/app/usage/NetworkStats;->mTag:I

    invoke-static {v0}, Landroid/app/usage/NetworkStats$Bucket;->access$400(I)I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$302(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 663
    iget v0, p0, Landroid/app/usage/NetworkStats;->mState:I

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$502(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 664
    const/4 v0, -0x1

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$702(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 665
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$902(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 666
    invoke-static {p1, v0}, Landroid/app/usage/NetworkStats$Bucket;->access$1102(Landroid/app/usage/NetworkStats$Bucket;I)I

    .line 667
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1302(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 668
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v2, v2, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1402(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 670
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1502(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 671
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1602(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 672
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1702(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 673
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledHistoryEntry:Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-static {p1, v0, v1}, Landroid/app/usage/NetworkStats$Bucket;->access$1802(Landroid/app/usage/NetworkStats$Bucket;J)J

    .line 674
    const/4 v0, 0x1

    return v0

    .line 675
    :cond_0
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 676
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    .line 677
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v0

    return v0

    .line 680
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 3
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .line 630
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 631
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    iget v1, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 632
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    .line 633
    const/4 v0, 0x1

    return v0

    .line 635
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getUid()I
    .locals 3

    .line 695
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->isUidEnumeration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 700
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    iget v1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    aget v0, v0, v1

    return v0

    .line 697
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mUids.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_1
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    return v0
.end method

.method private hasNextUid()Z
    .locals 3

    .line 690
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->isUidEnumeration()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    add-int/2addr v0, v1

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isUidEnumeration()Z
    .locals 1

    .line 686
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setSingleUidTagState(III)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "tag"    # I
    .param p3, "state"    # I

    .line 707
    iput p1, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 708
    iput p2, p0, Landroid/app/usage/NetworkStats;->mTag:I

    .line 709
    iput p3, p0, Landroid/app/usage/NetworkStats;->mState:I

    .line 710
    return-void
.end method

.method private stepHistory()V
    .locals 11

    .line 593
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepUid()V

    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 597
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->getUid()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    iget-wide v7, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v9, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    invoke-interface/range {v1 .. v10}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 606
    :cond_0
    return-void
.end method

.method private stepUid()V
    .locals 1

    .line 713
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    if-eqz v0, :cond_0

    .line 714
    iget v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 716
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 505
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 507
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    .line 514
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 517
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 118
    :try_start_0
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 124
    nop

    .line 125
    return-void

    .line 123
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getDeviceSummaryForNetwork()Landroid/app/usage/NetworkStats$Bucket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v4, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getDeviceSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 530
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    move-result v0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 532
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    return-object v0
.end method

.method public getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z
    .locals 1
    .param p1, "bucketOut"    # Landroid/app/usage/NetworkStats$Bucket;

    .line 479
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    if-eqz v0, :cond_0

    .line 480
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextSummaryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v0

    return v0

    .line 482
    :cond_0
    invoke-direct {p0, p1}, Landroid/app/usage/NetworkStats;->getNextHistoryBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v0

    return v0
.end method

.method getSummaryAggregate()Landroid/app/usage/NetworkStats$Bucket;
    .locals 3

    .line 639
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    if-nez v0, :cond_0

    .line 640
    const/4 v0, 0x0

    return-object v0

    .line 642
    :cond_0
    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 643
    .local v0, "bucket":Landroid/app/usage/NetworkStats$Bucket;
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    if-nez v1, :cond_1

    .line 644
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput-object v1, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    .line 646
    :cond_1
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mRecycledSummaryEntry:Landroid/net/NetworkStats$Entry;

    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 647
    invoke-direct {p0, v0}, Landroid/app/usage/NetworkStats;->fillBucketFromSummaryEntry(Landroid/app/usage/NetworkStats$Bucket;)V

    .line 648
    return-object v0
.end method

.method public hasNextBucket()Z
    .locals 4

    .line 491
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 492
    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v3, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 493
    :cond_1
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_4

    .line 494
    iget v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    iget-object v3, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 495
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->hasNextUid()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 494
    :cond_2
    move v1, v2

    goto :goto_2

    .line 495
    :cond_3
    :goto_1
    nop

    .line 494
    :goto_2
    return v1

    .line 497
    :cond_4
    return v2
.end method

.method startHistoryEnumeration(III)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "tag"    # I
    .param p3, "state"    # I

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 551
    :try_start_0
    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v2, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    .line 552
    invoke-static {p3}, Landroid/app/usage/NetworkStats$Bucket;->access$000(I)I

    move-result v4

    const/4 v6, -0x1

    iget-wide v7, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v9, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    .line 551
    move v3, p1

    move v5, p2

    invoke-interface/range {v1 .. v10}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 554
    invoke-direct {p0, p1, p2, p3}, Landroid/app/usage/NetworkStats;->setSingleUidTagState(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 559
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 560
    return-void
.end method

.method startSummaryEnumeration()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v1, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    iget-wide v2, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v4, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/NetworkStats;->mSummary:Landroid/net/NetworkStats;

    .line 542
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/NetworkStats;->mEnumerationIndex:I

    .line 543
    return-void
.end method

.method startUserUidEnumeration()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->getRelevantUids()[I

    move-result-object v0

    .line 571
    .local v0, "uids":[I
    new-instance v1, Landroid/util/IntArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/IntArray;-><init>(I)V

    .line 572
    .local v1, "filteredUids":Landroid/util/IntArray;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 574
    .local v4, "uid":I
    :try_start_0
    iget-object v5, p0, Landroid/app/usage/NetworkStats;->mSession:Landroid/net/INetworkStatsSession;

    iget-object v6, p0, Landroid/app/usage/NetworkStats;->mTemplate:Landroid/net/NetworkTemplate;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    iget-wide v11, p0, Landroid/app/usage/NetworkStats;->mStartTimeStamp:J

    iget-wide v13, p0, Landroid/app/usage/NetworkStats;->mEndTimeStamp:J

    move v7, v4

    invoke-interface/range {v5 .. v14}, Landroid/net/INetworkStatsSession;->getHistoryIntervalForUid(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    .line 577
    .local v5, "history":Landroid/net/NetworkStatsHistory;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 578
    invoke-virtual {v1, v4}, Landroid/util/IntArray;->add(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .end local v5    # "history":Landroid/net/NetworkStatsHistory;
    :cond_0
    goto :goto_1

    .line 580
    :catch_0
    move-exception v5

    .line 581
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "NetworkStats"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while getting history of uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    .end local v4    # "uid":I
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 584
    :cond_1
    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/app/usage/NetworkStats;->mUids:[I

    .line 585
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/usage/NetworkStats;->mUidOrUidIndex:I

    .line 586
    invoke-direct {p0}, Landroid/app/usage/NetworkStats;->stepHistory()V

    .line 587
    return-void
.end method
