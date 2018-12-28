.class final Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreloadHitStatistics"
.end annotation


# instance fields
.field private mHighUsageResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictionResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/preload/OneplusAppPreload;


# direct methods
.method public constructor <init>(Lcom/android/server/preload/OneplusAppPreload;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public addOldRecord(ZLjava/lang/String;)V
    .locals 20

    move-object/from16 v1, p0

    :try_start_0
    const-string v0, "\\s+"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v2, p2

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1

    const-string v3, "OneplusAppPreload"

    const-string v4, "addOldRecord error format :"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v4, v0, v5

    const-string v6, "OneplusAppPreload"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addOldRecord\uff1a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    array-length v3, v0

    move v4, v5

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v6, v0, v4

    const-string v7, "OneplusAppPreload"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addOldRecord\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    aget-object v3, v0, v5

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide v15, v4

    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    move-wide/from16 v17, v4

    const-wide/16 v4, 0x0

    cmp-long v8, v15, v4

    if-nez v8, :cond_3

    cmp-long v4, v17, v4

    if-nez v4, :cond_3

    const-string v4, "OneplusAppPreload"

    const-string v5, "This record is dismissed due to system may be reboot abnormally."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz p1, :cond_5

    iget-object v5, v1, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v5}, Lcom/android/server/preload/OneplusAppPreload;->access$1700(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    iget-object v5, v1, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v5}, Lcom/android/server/preload/OneplusAppPreload;->access$1700(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    new-instance v8, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-direct {v8, v3}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v5, v1, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v5}, Lcom/android/server/preload/OneplusAppPreload;->access$1700(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-static {v5}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    move-object v5, v13

    move-wide v8, v15

    move-wide/from16 v10, v17

    invoke-direct/range {v5 .. v11}, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;-><init>(JJJ)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v5, v1, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v5}, Lcom/android/server/preload/OneplusAppPreload;->access$1700(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    iget-object v5, v1, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v5}, Lcom/android/server/preload/OneplusAppPreload;->access$1700(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    new-instance v8, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-direct {v8, v3}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v5, v1, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v5}, Lcom/android/server/preload/OneplusAppPreload;->access$1700(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-static {v5}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v13, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    move-object v8, v13

    move-wide v9, v6

    move-wide v11, v15

    move-object/from16 v19, v0

    move-object v0, v13

    move-wide/from16 v13, v17

    invoke-direct/range {v8 .. v14}, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;-><init>(JJJ)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v2, p2

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public addRecord(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)V
    .locals 3

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload$7;->$SwitchMap$com$android$server$preload$OneplusAppPreload$PreloadSource:[I

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1800(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$700(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$700(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$700(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$700(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-virtual {v0}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->addPreloadCount()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$700(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$700(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$700(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$700(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-virtual {v0}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->addPreloadCount()V

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1800(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/preload/OneplusAppPreload;->access$1902(Lcom/android/server/preload/OneplusAppPreload;Lcom/android/server/preload/OneplusAppPreload$PreloadSource;)Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clearAllResult()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "%1$50s  %2$20s  %3$20s  %4$20s  %5$5s  %6$25s  %7$5s  %8$20s"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Package Name"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "PreloadTime"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "StartTime"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "DeadTime"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "Hit"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "DurationInBackground(ms)"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "Label"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "UsedElectricalCurrent"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Prediction Statistics :"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-virtual {v3}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "High Usage Statistics :"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-virtual {v3}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public handleShutdown()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-static {v4}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    iget-boolean v7, v6, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    if-nez v7, :cond_0

    iput-wide v0, v6, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-static {v4}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    iget-boolean v7, v6, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    if-nez v7, :cond_3

    iput-wide v0, v6, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    :cond_3
    goto :goto_3

    :cond_4
    goto :goto_2

    :cond_5
    return-void
.end method

.method public hitPreload(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "OneplusAppPreload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find PackagePreloadResult for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " when hit."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->addHitCount()V

    return-void
.end method

.method public notifyProcessDie(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mPredictionResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    iget-boolean v3, v2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    if-nez v3, :cond_0

    iput-boolean v1, v2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->mHighUsageResult:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    iget-boolean v3, v2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    if-nez v3, :cond_2

    iput-boolean v1, v2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    return-void

    :cond_2
    :goto_0
    return-void
.end method
