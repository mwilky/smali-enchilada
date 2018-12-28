.class final Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackagePreloadResult"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/preload/OneplusAppPreload$SingleRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getLabel(J)Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0x493e0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-string v0, "A"

    return-object v0

    :cond_0
    const-wide/32 v0, 0x927c0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-string v0, "B"

    return-object v0

    :cond_1
    const-wide/32 v0, 0x1b7740

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    const-string v0, "c"

    return-object v0

    :cond_2
    const-wide/32 v0, 0x36ee80

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    const-string v0, "D"

    return-object v0

    :cond_3
    const-wide/32 v0, 0x6ddd00

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    const-string v0, "E"

    return-object v0

    :cond_4
    const-string v0, "F"

    return-object v0
.end method

.method private getRecordToString(Lcom/android/server/preload/OneplusAppPreload$SingleRecord;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v7, 0x0

    const-string v9, "NULL"

    const-string v10, "FALSE"

    const-wide/16 v11, 0x0

    if-eqz v2, :cond_1

    iget-wide v4, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    iget-wide v13, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    sub-long v7, v4, v13

    invoke-direct {v0, v7, v8}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->getLabel(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "TRUE"

    goto :goto_1

    :cond_1
    iget-wide v13, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    cmp-long v4, v13, v4

    if-eqz v4, :cond_2

    iget-wide v4, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    iget-wide v13, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    sub-long v7, v4, v13

    const-string v10, "FALSE"

    goto :goto_1

    :cond_2
    iget-boolean v4, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    if-nez v4, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v13, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    sub-long v7, v4, v13

    const-string v10, "FALSE"

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$2000()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v13

    move-object v15, v4

    long-to-double v3, v7

    mul-double/2addr v13, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v13, v3

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    div-double/2addr v13, v3

    div-double v11, v13, v3

    goto :goto_2

    :cond_4
    move-object v15, v4

    :goto_2
    const-string v3, "%1$50s  %2$20d  %3$20d  %4$20d  %5$5s  %6$25d  %7$5s  %8$5.2f\n"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mPackageName:Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v4, v13

    iget-wide v13, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x2

    iget-wide v13, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-wide v13, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    aput-object v10, v4, v5

    const/4 v5, 0x5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    aput-object v9, v4, v5

    const/4 v5, 0x7

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addHitCount()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    iget-wide v0, v0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    iput-boolean v2, v0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    :cond_0
    return-void
.end method

.method public addPreloadCount()V
    .locals 3

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    invoke-direct {v0}, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    invoke-direct {p0, v2}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->getRecordToString(Lcom/android/server/preload/OneplusAppPreload$SingleRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
