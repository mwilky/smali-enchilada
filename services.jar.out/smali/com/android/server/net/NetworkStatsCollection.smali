.class public Lcom/android/server/net/NetworkStatsCollection;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsCollection$Key;
    }
.end annotation


# static fields
.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3

.field private static final VERSION_UNIFIED_INIT:I = 0x10


# instance fields
.field private final mBucketDuration:J

.field private mDirty:Z

.field private mEndMillis:J

.field private mStartMillis:J

.field private mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    iget-object v7, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v13, p6

    invoke-static {v13, v7}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    iget v7, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v8, 0x3e8

    if-lt v7, v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v7, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v8, 0x0

    iget v9, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v10, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v11, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    move-object v14, v7

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkStatsHistory;

    if-nez v7, :cond_2

    new-instance v8, Landroid/net/NetworkStatsHistory;

    invoke-virtual {v6}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    move-object v7, v8

    invoke-virtual {v2, v14, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v15, v7

    move-object v7, v15

    move-object v8, v6

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v13, p6

    :goto_2
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v6

    if-nez v6, :cond_4

    move-object/from16 v6, p7

    goto :goto_3

    :cond_4
    const-string v6, "c,"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v6, p7

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(C)V

    iget v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(C)V

    iget v8, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v8}, Landroid/net/NetworkStats;->setToCheckinString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(C)V

    iget v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v5, v1}, Landroid/net/NetworkStatsHistory;->dumpCheckin(Ljava/io/PrintWriter;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v6, p7

    return-void
.end method

.method private estimateBuckets()I
    .locals 4

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb43e9400L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .locals 7

    new-instance v0, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v3, Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    new-instance v3, Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {v3, v1, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    move-object v2, v3

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_2
    return-object v1
.end method

.method private getSortedKeys()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static multiplySafe(JJJ)J
    .locals 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v4, p4, v0

    if-nez v4, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p4

    :goto_0
    move-wide/from16 v4, p0

    move-wide/from16 v6, p2

    mul-long v8, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    or-long v14, v10, v12

    const/16 v16, 0x1f

    ushr-long v14, v14, v16

    cmp-long v14, v14, v0

    if-eqz v14, :cond_3

    cmp-long v0, v6, v0

    if-eqz v0, :cond_1

    div-long v0, v8, v6

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    :cond_1
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, v4, v0

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_3

    :cond_2
    move-wide/from16 v0, p2

    long-to-double v14, v0

    long-to-double v0, v2

    div-double/2addr v14, v0

    move-wide/from16 v0, p0

    move-wide/from16 v17, v4

    long-to-double v4, v0

    mul-double/2addr v14, v4

    double-to-long v4, v14

    return-wide v4

    :cond_3
    move-wide/from16 v0, p0

    move-wide/from16 v17, v4

    div-long v4, v8, v2

    return-wide v4
.end method

.method private noteRecordedHistory(JJJ)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    iput-wide p3, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    :cond_1
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return-void
.end method

.method private recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    .locals 8

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    if-nez v0, :cond_1

    new-instance v1, Landroid/net/NetworkStatsHistory;

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    return-void
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    invoke-virtual {p0, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsCollection;->reset()V

    return-void
.end method

.method public clearDirty()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    const-string v2, "ident="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " uid="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v2, " set="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v2}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " tag="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v2}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .locals 16

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "cell"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v14

    const-string/jumbo v15, "wifi"

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v8 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "eth"

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateBluetooth()Landroid/net/NetworkTemplate;

    move-result-object v14

    const-string v15, "bt"

    invoke-direct/range {v8 .. v15}, Lcom/android/server/net/NetworkStatsCollection;->dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    return-void
.end method

.method public getEndMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    return-wide v0
.end method

.method public getFirstAtomicBucketMillis()J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;
    .locals 49

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p6

    move/from16 v13, p12

    move/from16 v14, p11

    invoke-static {v1, v13, v14}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v3

    if-eqz v3, :cond_10

    sub-long v3, p9, p7

    iget-wide v5, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long v15, v3, v5

    const-wide/16 v17, 0x0

    const-wide v3, 0x39ef8b000L

    iget-wide v5, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    div-long v19, v3, v5

    invoke-static/range {v15 .. v20}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v3

    long-to-int v15, v3

    new-instance v3, Landroid/net/NetworkStatsHistory;

    iget-wide v4, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    invoke-direct {v3, v4, v5, v15, v2}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    move-object v7, v3

    cmp-long v3, p7, p9

    if-nez v3, :cond_0

    return-object v7

    :cond_0
    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v16

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v5

    :goto_0
    move-wide/from16 v22, v16

    move-wide/from16 v24, p7

    move-wide/from16 v26, p9

    move-wide/from16 v28, v3

    move-wide/from16 v3, v22

    cmp-long v8, v3, v5

    if-eqz v8, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/time/ZonedDateTime;

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v16

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/time/ZonedDateTime;

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v18

    cmp-long v6, v16, v3

    if-gtz v6, :cond_2

    cmp-long v6, v3, v18

    if-gez v6, :cond_2

    move-wide/from16 v32, v16

    move-object/from16 v34, v5

    move-wide/from16 v5, v24

    move-wide/from16 v13, v32

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v24

    move-wide/from16 v5, v26

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v26

    nop

    move-wide/from16 v5, v24

    move-wide/from16 v11, v26

    goto :goto_2

    :cond_2
    move-wide/from16 v5, v24

    move-wide/from16 v13, v26

    move-wide/from16 v24, v5

    move-wide/from16 v26, v13

    const-wide/16 v5, -0x1

    move/from16 v13, p12

    move/from16 v14, p11

    goto :goto_1

    :cond_3
    move-wide/from16 v5, v24

    move-wide/from16 v13, v26

    move-wide v11, v13

    move-wide/from16 v13, v28

    :goto_2
    const-wide/16 v16, -0x1

    cmp-long v8, v13, v16

    if-eqz v8, :cond_4

    invoke-virtual {v0, v13, v14}, Lcom/android/server/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v13

    invoke-virtual {v0, v3, v4}, Lcom/android/server/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v3

    invoke-virtual {v0, v5, v6}, Lcom/android/server/net/NetworkStatsCollection;->roundDown(J)J

    move-result-wide v5

    invoke-virtual {v0, v11, v12}, Lcom/android/server/net/NetworkStatsCollection;->roundUp(J)J

    move-result-wide v11

    :cond_4
    move-wide/from16 v22, v5

    move-wide/from16 v24, v11

    move-wide v11, v3

    const/4 v4, 0x0

    :goto_3
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    iget-object v5, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget v6, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    if-ne v6, v1, :cond_6

    iget v6, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    move/from16 v8, p4

    invoke-static {v8, v6}, Landroid/net/NetworkStats;->setMatches(II)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    move/from16 v1, p5

    if-ne v6, v1, :cond_5

    iget-object v6, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v1, p1

    invoke-static {v1, v6}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    move-object/from16 v16, v7

    move-object/from16 v17, v6

    move-wide/from16 v18, v22

    move-wide/from16 v20, v24

    invoke-virtual/range {v16 .. v21}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    goto :goto_4

    :cond_5
    move-object/from16 v1, p1

    goto :goto_4

    :cond_6
    move-object/from16 v1, p1

    move/from16 v8, p4

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p3

    goto :goto_3

    :cond_8
    move-object/from16 v1, p1

    move/from16 v8, p4

    const-wide/16 v4, -0x1

    cmp-long v4, v13, v4

    if-eqz v4, :cond_f

    const/16 v21, 0x0

    move-object/from16 v16, v7

    move-wide/from16 v17, v13

    move-wide/from16 v19, v11

    invoke-virtual/range {v16 .. v21}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v5

    iget-wide v3, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-eqz v3, :cond_9

    iget-wide v3, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    cmp-long v3, v3, v8

    if-nez v3, :cond_a

    :cond_9
    new-instance v3, Landroid/net/NetworkStats$Entry;

    const-wide/16 v37, 0x1

    const-wide/16 v39, 0x0

    const-wide/16 v41, 0x1

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    move-object/from16 v36, v3

    invoke-direct/range {v36 .. v46}, Landroid/net/NetworkStats$Entry;-><init>(JJJJJ)V

    move-object/from16 v16, v7

    move-wide/from16 v17, v13

    move-wide/from16 v19, v11

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v21}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    move-object/from16 v21, v5

    invoke-virtual/range {v16 .. v21}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    :cond_a
    iget-wide v3, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v8, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v26, v3, v8

    iget-wide v9, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v3, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v28

    move-wide/from16 v16, v28

    move-wide/from16 v18, v9

    move-wide/from16 v20, v26

    invoke-static/range {v16 .. v21}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v30

    move-wide/from16 v18, v3

    invoke-static/range {v16 .. v21}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v32

    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v36

    const/16 v35, 0x0

    :goto_5
    move/from16 v6, v35

    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v8

    if-ge v6, v8, :cond_d

    invoke-virtual {v7, v6, v5}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    iget-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    cmp-long v1, v1, v13

    if-ltz v1, :cond_b

    iget-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-wide/from16 v47, v13

    iget-wide v13, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v1, v13

    cmp-long v1, v1, v11

    if-gtz v1, :cond_c

    iget-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v16, v30

    move-wide/from16 v18, v1

    move-wide/from16 v20, v9

    invoke-static/range {v16 .. v21}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v1

    iput-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v16, v32

    move-wide/from16 v18, v1

    move-wide/from16 v20, v3

    invoke-static/range {v16 .. v21}, Lcom/android/server/net/NetworkStatsCollection;->multiplySafe(JJJ)J

    move-result-wide v1

    iput-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    const-wide/16 v1, 0x0

    iput-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v1, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-virtual {v7, v6, v5}, Landroid/net/NetworkStatsHistory;->setValues(ILandroid/net/NetworkStatsHistory$Entry;)V

    goto :goto_6

    :cond_b
    move-wide/from16 v47, v13

    :cond_c
    :goto_6
    add-int/lit8 v35, v6, 0x1

    move-wide/from16 v13, v47

    move-object/from16 v1, p1

    move/from16 v2, p6

    goto :goto_5

    :cond_d
    move-wide/from16 v47, v13

    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v1

    sub-long v1, v1, v36

    const-wide/16 v13, 0x0

    cmp-long v6, v1, v13

    if-eqz v6, :cond_e

    const-string v6, "NetworkStats"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Augmented network usage by "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " bytes"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance v6, Landroid/net/NetworkStatsHistory;

    iget-wide v13, v0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    move/from16 v8, p6

    invoke-direct {v6, v13, v14, v15, v8}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    move-object v13, v6

    move-wide/from16 v16, v3

    move-object v3, v13

    move-object v4, v7

    move-object v14, v5

    move-wide/from16 v5, p7

    move-object/from16 v18, v7

    move-wide/from16 v7, p9

    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    return-object v13

    :cond_f
    move-object/from16 v18, v7

    move-wide/from16 v47, v13

    return-object v18

    :cond_10
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network stats history of uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is forbidden for caller "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p12

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRelevantUids(I)[I
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/net/NetworkStatsCollection;->getRelevantUids(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getRelevantUids(II)[I
    .locals 5

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v3, p2, p1}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v0, v3}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v3

    if-gez v3, :cond_0

    not-int v3, v3

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v0, v3, v4}, Landroid/util/IntArray;->add(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method public getStartMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    return-wide v0
.end method

.method public getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;
    .locals 18

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v1, Landroid/net/NetworkStats;

    sub-long v2, p4, p2

    const/16 v4, 0x18

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    move-object v12, v1

    cmp-long v1, p2, p4

    if-nez v1, :cond_0

    return-object v12

    :cond_0
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    move-object v8, v1

    const/4 v1, 0x0

    const/4 v13, 0x0

    move-object v14, v1

    move v1, v13

    :goto_0
    move v6, v1

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v6, v1, :cond_4

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget-object v1, v7, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v4, p1

    invoke-static {v4, v1}, Lcom/android/server/net/NetworkStatsCollection;->templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v7, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    move/from16 v5, p6

    move/from16 v2, p7

    invoke-static {v1, v2, v5}, Lcom/android/server/net/NetworkStatsAccess;->isAccessibleToUser(III)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v7, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_3

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/net/NetworkStatsHistory;

    move-object v1, v15

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v16, v6

    move-object v0, v7

    move-wide v6, v10

    move-object v9, v8

    move-object v8, v14

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iput v2, v9, Landroid/net/NetworkStats$Entry;->uid:I

    iget v2, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iput v2, v9, Landroid/net/NetworkStats$Entry;->set:I

    iget v2, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iput v2, v9, Landroid/net/NetworkStats$Entry;->tag:I

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->areAllMembersOnDefaultNetwork()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v13

    :goto_1
    iput v2, v9, Landroid/net/NetworkStats$Entry;->defaultNetwork:I

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->isAnyMemberMetered()Z

    move-result v2

    iput v2, v9, Landroid/net/NetworkStats$Entry;->metered:I

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkIdentitySet;->isAnyMemberRoaming()Z

    move-result v2

    iput v2, v9, Landroid/net/NetworkStats$Entry;->roaming:I

    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v2, v1, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-virtual {v9}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v12, v9}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    :cond_2
    move-object v14, v1

    goto :goto_2

    :cond_3
    move/from16 v16, v6

    move-object v9, v8

    :goto_2
    add-int/lit8 v1, v16, 0x1

    move-object v8, v9

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_4
    move-object v9, v8

    return-object v12
.end method

.method public getTotalBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    return-wide v0
.end method

.method public isDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Ljava/io/DataInputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v1, 0x414e4554

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    new-instance v5, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v5, p1}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    new-instance v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v11, v5, v8, v9, v10}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    new-instance v12, Landroid/net/NetworkStatsHistory;

    invoke-direct {v12, p1}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    invoke-direct {p0, v11, v12}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    nop

    return-void

    :cond_2
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unexpected version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected magic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkStatsCollection;->read(Ljava/io/DataInputStream;)V

    return-void
.end method

.method public readLegacyNetwork(Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const v3, 0x414e4554

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    new-instance v7, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    new-instance v8, Landroid/net/NetworkStatsHistory;

    invoke-direct {v8, v1}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    new-instance v9, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v10, -0x1

    invoke-direct {v9, v7, v10, v10, v5}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    invoke-direct {p0, v9, v8}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unexpected version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected magic: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    :catch_0
    move-exception v2

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void
.end method

.method public readLegacyUid(Ljava/io/File;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/util/AtomicFile;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v2, v0

    const/4 v0, 0x0

    move-object v3, v0

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v4, 0x414e4554

    if-ne v0, v4, :cond_5

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    packed-switch v4, :pswitch_data_0

    move-object/from16 v6, p0

    move/from16 v1, p2

    :try_start_1
    new-instance v5, Ljava/net/ProtocolException;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    :pswitch_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_4

    new-instance v8, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v8, v3}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_3

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    const/4 v12, 0x4

    if-lt v4, v12, :cond_0

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    goto :goto_2

    :cond_0
    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    new-instance v14, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v14, v8, v11, v12, v13}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    new-instance v15, Landroid/net/NetworkStatsHistory;

    invoke-direct {v15, v3}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v13, :cond_1

    const/16 v16, 0x1

    move/from16 v6, v16

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    :goto_3
    move/from16 v1, p2

    if-eq v6, v1, :cond_2

    move-object/from16 v6, p0

    :try_start_3
    invoke-direct {v6, v14, v15}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    goto :goto_4

    :cond_2
    move-object/from16 v6, p0

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_3
    move-object/from16 v6, p0

    move/from16 v1, p2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    goto :goto_0

    :cond_4
    move-object/from16 v6, p0

    move/from16 v1, p2

    goto :goto_7

    :pswitch_1
    move-object/from16 v6, p0

    move/from16 v1, p2

    goto :goto_7

    :pswitch_2
    move-object/from16 v6, p0

    move/from16 v1, p2

    goto :goto_7

    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    move-object/from16 v6, p0

    move/from16 v1, p2

    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected magic: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v1, p2

    :goto_6
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_1
    move-exception v0

    move-object/from16 v6, p0

    move/from16 v1, p2

    :goto_7
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget-object v2, p1, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkStatsCollection;->recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V
    .locals 15

    move-object/from16 v6, p9

    invoke-direct/range {p0 .. p4}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v9

    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v11

    iget-wide v0, v6, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v2, v6, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long v13, v0, v2

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/net/NetworkStatsCollection;->noteRecordedHistory(JJJ)V

    return-void
.end method

.method public removeUids([I)V
    .locals 7

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const/4 v5, -0x4

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v6, v6}, Lcom/android/server/net/NetworkStatsCollection;->findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mStartMillis:J

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mEndMillis:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mTotalBytes:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mDirty:Z

    return-void
.end method

.method public roundDown(J)J
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    sub-long/2addr p1, v0

    :cond_1
    return-wide p1

    :cond_2
    :goto_0
    return-wide p1
.end method

.method public roundUp(J)J
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    sub-long/2addr p1, v0

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsCollection;->mBucketDuration:J

    add-long/2addr p1, v2

    :cond_1
    return-wide p1

    :cond_2
    :goto_0
    return-wide p1
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget-object v3, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const v1, 0x414e4554

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/net/NetworkStatsCollection$Key;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    iget v7, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v7, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v7, v5, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v6, p1}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V

    goto :goto_2

    :cond_2
    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 12

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsCollection;->getSortedKeys()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollection$Key;

    const-wide v4, 0x20b00000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10b00000001L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    iget-object v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v10, p1, v6, v7}, Lcom/android/server/net/NetworkIdentitySet;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v6, 0x10500000002L

    iget v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000003L

    iget v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000004L

    iget v10, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsCollection;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkStatsHistory;

    const-wide v10, 0x10b00000002L

    invoke-virtual {v6, p1, v10, v11}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
