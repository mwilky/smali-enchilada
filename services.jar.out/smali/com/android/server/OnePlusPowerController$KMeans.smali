.class public Lcom/android/server/OnePlusPowerController$KMeans;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KMeans"
.end annotation


# instance fields
.field private final mCenters:[[D

.field private final mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$KMeans;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, D

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/OnePlusPowerController$Cluster;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    return-void
.end method

.method private IsDouble(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsDouble: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method static synthetic access$3500(Lcom/android/server/OnePlusPowerController$KMeans;[[DIIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/OnePlusPowerController$KMeans;->processKMeans([[DIIII)V

    return-void
.end method

.method private clearCenters()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v2

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    aget-object v3, v3, v1

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clusterOfDataSet([[D[DI)I
    .locals 7

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/OnePlusPowerController$KMeans;->getDistXY([D[D)D

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ge v3, p3, :cond_1

    aget-object v4, p1, v3

    invoke-direct {p0, v4, p2}, Lcom/android/server/OnePlusPowerController$KMeans;->getDistXY([D[D)D

    move-result-wide v4

    cmpg-double v6, v4, v0

    if-gez v6, :cond_0

    move-wide v0, v4

    move v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "label="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method private getCenter(Lcom/android/server/OnePlusPowerController$Cluster;I)[D
    .locals 10

    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v0

    new-array v1, p2, [D

    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, p2, :cond_0

    aget-wide v6, v1, v5

    aget-object v8, v2, v4

    aget-wide v8, v8, v5

    add-double/2addr v6, v8

    aput-wide v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_2
    if-ge v3, p2, :cond_2

    aget-wide v4, v1, v3

    int-to-double v6, v0

    div-double/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object v1
.end method

.method private getDistXY([D[D)D
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-wide v3, p1, v2

    aget-wide v5, p2, v2

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method private getVar([Lcom/android/server/OnePlusPowerController$Cluster;[[D)D
    .locals 9

    const-wide/16 v0, 0x0

    array-length v2, p1

    const/4 v3, 0x0

    move-wide v4, v0

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v1

    move-wide v5, v4

    move v4, v3

    :goto_1
    aget-object v7, p1, v0

    invoke-virtual {v7}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v7

    if-ge v4, v7, :cond_0

    aget-object v7, v1, v4

    aget-object v8, p2, v0

    invoke-direct {p0, v7, v8}, Lcom/android/server/OnePlusPowerController$KMeans;->getDistXY([D[D)D

    move-result-wide v7

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move-wide v4, v5

    goto :goto_0

    :cond_1
    return-wide v4
.end method

.method private printClustery(Lcom/android/server/OnePlusPowerController$Cluster;)V
    .locals 7

    const-string v0, "OnePlusPowerController"

    const-string v1, "Cluster:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v3

    move v4, v0

    :goto_1
    aget-object v5, v3, v0

    array-length v5, v5

    if-ge v4, v5, :cond_1

    aget-object v5, v3, v1

    aget-wide v5, v5, v4

    double-to-long v5, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    aget-object v5, v3, v0

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_0

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v4, "OnePlusPowerController"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private printTwoDimensionalArray([[D)V
    .locals 6

    const-string v0, "OnePlusPowerController"

    const-string v1, "Array:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v0

    :goto_1
    aget-object v4, p1, v0

    array-length v4, v4

    if-ge v3, v4, :cond_1

    aget-object v4, p1, v1

    aget-wide v4, v4, v3

    double-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    aget-object v4, p1, v0

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "OnePlusPowerController"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private processKMeans([[DIIII)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct/range {p0 .. p1}, Lcom/android/server/OnePlusPowerController$KMeans;->printTwoDimensionalArray([[D)V

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    array-length v6, v6

    if-ge v5, v6, :cond_0

    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    new-instance v7, Lcom/android/server/OnePlusPowerController$Cluster;

    iget-object v8, v0, Lcom/android/server/OnePlusPowerController$KMeans;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {v7, v8, v1, v2}, Lcom/android/server/OnePlusPowerController$Cluster;-><init>(Lcom/android/server/OnePlusPowerController;II)V

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    new-instance v6, Ljava/util/Random;

    move/from16 v7, p5

    int-to-long v8, v7

    invoke-direct {v6, v8, v9}, Ljava/util/Random;-><init>(J)V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    :goto_1
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    if-gt v9, v3, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v10

    if-ne v10, v3, :cond_1

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    :goto_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_4

    const-string v10, "OnePlusPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The choosen data set is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v2, :cond_3

    iget-object v11, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    aget-object v11, v11, v5

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v12, p1, v12

    aget-wide v12, v12, v10

    aput-wide v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "OnePlusPowerController"

    const-string v11, "Centroids: "

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    invoke-direct {v0, v10}, Lcom/android/server/OnePlusPowerController$KMeans;->printTwoDimensionalArray([[D)V

    :cond_5
    const/4 v10, 0x0

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v1, :cond_7

    iget-object v11, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    aget-object v12, p1, v5

    invoke-direct {v0, v11, v12, v3}, Lcom/android/server/OnePlusPowerController$KMeans;->clusterOfDataSet([[D[DI)I

    move-result v10

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v2, :cond_6

    iget-object v12, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v12, v12, v10

    invoke-virtual {v12}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v14

    aget-object v15, v13, v14

    aget-object v16, p1, v5

    aget-wide v16, v16, v11

    aput-wide v16, v15, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_6
    iget-object v11, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v11, v11, v10

    iget-object v12, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v12, v12, v10

    invoke-virtual {v12}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/server/OnePlusPowerController$Cluster;->setSize(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_7
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    iget-object v13, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    iget-object v14, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    invoke-direct {v0, v13, v14}, Lcom/android/server/OnePlusPowerController$KMeans;->getVar([Lcom/android/server/OnePlusPowerController$Cluster;[[D)D

    move-result-wide v13

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v15

    if-eqz v15, :cond_8

    const-string v4, "OnePlusPowerController"

    move/from16 v19, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v6

    const-string v6, "Initial sum of squre difference is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_8
    move/from16 v19, v5

    move-object/from16 v20, v6

    :goto_7
    const/4 v4, 0x0

    :goto_8
    sub-double v5, v13, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3000()I

    move-result v7

    move-object/from16 v21, v8

    int-to-double v7, v7

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_10

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Iteration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    :cond_9
    const/4 v5, 0x0

    :goto_9
    if-ge v5, v3, :cond_a

    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    iget-object v7, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v7, v7, v5

    invoke-direct {v0, v7, v2}, Lcom/android/server/OnePlusPowerController$KMeans;->getCenter(Lcom/android/server/OnePlusPowerController$Cluster;I)[D

    move-result-object v7

    aput-object v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_a
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "OnePlusPowerController"

    const-string v7, "Centroids: "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    invoke-direct {v0, v6}, Lcom/android/server/OnePlusPowerController$KMeans;->printTwoDimensionalArray([[D)V

    :cond_b
    move-wide v11, v13

    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    iget-object v7, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    invoke-direct {v0, v6, v7}, Lcom/android/server/OnePlusPowerController$KMeans;->getVar([Lcom/android/server/OnePlusPowerController$Cluster;[[D)D

    move-result-wide v13

    const/4 v5, 0x0

    :goto_a
    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    array-length v6, v6

    if-ge v5, v6, :cond_c

    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v6, v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/OnePlusPowerController$Cluster;->setSize(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_c
    const/4 v7, 0x0

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v1, :cond_e

    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    aget-object v8, p1, v5

    invoke-direct {v0, v6, v8, v3}, Lcom/android/server/OnePlusPowerController$KMeans;->clusterOfDataSet([[D[DI)I

    move-result v10

    move v6, v7

    :goto_c
    if-ge v6, v2, :cond_d

    iget-object v8, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v15

    invoke-virtual {v8}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v16

    aget-object v17, v15, v16

    aget-object v18, p1, v5

    aget-wide v18, v18, v6

    aput-wide v18, v17, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_d
    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v6, v6, v10

    iget-object v8, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Lcom/android/server/OnePlusPowerController$Cluster;->setSize(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_e
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "After this iteration, the sum of squre difference is "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move/from16 v19, v5

    move-object/from16 v8, v21

    move/from16 v7, p5

    goto/16 :goto_8

    :cond_10
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$3700()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "OnePlusPowerController"

    const-string v6, "The result is:"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v3, :cond_11

    const-string v6, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cluster "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v6, v6, v5

    invoke-direct {v0, v6}, Lcom/android/server/OnePlusPowerController$KMeans;->printClustery(Lcom/android/server/OnePlusPowerController$Cluster;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_11
    move/from16 v19, v5

    :cond_12
    return-void
.end method


# virtual methods
.method public getClusterAverage(II)D
    .locals 7

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    if-ltz p1, :cond_5

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v2

    if-le p1, v2, :cond_0

    goto :goto_2

    :cond_0
    if-ltz p2, :cond_4

    const/4 v2, 0x2

    if-le p2, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v2

    if-gtz v2, :cond_2

    return-wide v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v0

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v5, v0, v1

    aget-wide v5, v5, p2

    add-double/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    int-to-double v5, v2

    div-double v5, v3, v5

    return-wide v5

    :cond_4
    :goto_1
    return-wide v0

    :cond_5
    :goto_2
    return-wide v0
.end method

.method public getClusterCenterX(I)J
    .locals 2

    if-ltz p1, :cond_1

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    double-to-long v0, v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getClusterCenterY(I)J
    .locals 2

    if-ltz p1, :cond_1

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    double-to-long v0, v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getClusterCoefVar(II)D
    .locals 6

    invoke-virtual {p0, p1, p2}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterVariance(II)D

    move-result-wide v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterAverage(II)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v4, v2

    return-wide v4

    :cond_0
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    return-wide v4
.end method

.method public getClusterSize(I)I
    .locals 2

    const/4 v0, -0x1

    if-ltz p1, :cond_2

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v1, v1, p1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v0

    return v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public getClusterVariance(II)D
    .locals 11

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    if-ltz p1, :cond_5

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$2400()I

    move-result v2

    if-le p1, v2, :cond_0

    goto :goto_2

    :cond_0
    if-ltz p2, :cond_4

    const/4 v2, 0x2

    if-le p2, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v2

    if-gtz v2, :cond_2

    return-wide v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/OnePlusPowerController$KMeans;->getClusterAverage(II)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v7, v0, v1

    aget-wide v7, v7, p2

    sub-double/2addr v7, v3

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    int-to-double v7, v2

    div-double v7, v5, v7

    return-wide v7

    :cond_4
    :goto_1
    return-wide v0

    :cond_5
    :goto_2
    return-wide v0
.end method
