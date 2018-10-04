.class public Lcom/android/internal/ml/clustering/KMeans;
.super Ljava/lang/Object;
.source "KMeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/ml/clustering/KMeans$Mean;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KMeans"


# instance fields
.field private final mMaxIterations:I

.field private final mRandomState:Ljava/util/Random;

.field private mSqConvergenceEpsilon:F


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 2

    const/16 v0, 0x1e

    const v1, 0x3ba3d70a    # 0.005f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;IF)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;IF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/ml/clustering/KMeans;->mRandomState:Ljava/util/Random;

    iput p2, p0, Lcom/android/internal/ml/clustering/KMeans;->mMaxIterations:I

    mul-float v0, p3, p3

    iput v0, p0, Lcom/android/internal/ml/clustering/KMeans;->mSqConvergenceEpsilon:F

    return-void
.end method

.method public static nearestMean([FLjava/util/List;)Lcom/android/internal/ml/clustering/KMeans$Mean;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;)",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    iget-object v5, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {p0, v5}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_0

    move-object v0, v4

    move v1, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static score(Ljava/util/List;)D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;)D"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move-wide v4, v0

    move v0, v3

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/ml/clustering/KMeans$Mean;

    move-wide v5, v4

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/ml/clustering/KMeans$Mean;

    if-ne v1, v7, :cond_0

    goto :goto_2

    :cond_0
    iget-object v8, v1, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    iget-object v9, v7, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {v8, v9}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v5, v8

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move-wide v4, v5

    goto :goto_0

    :cond_2
    return-wide v4
.end method

.method public static sqDistance([F[F)F
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    aget v4, p0, v2

    aget v5, p1, v2

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private step(Ljava/util/ArrayList;[[F)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;[[F)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/ml/clustering/KMeans$Mean;

    iget-object v2, v1, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    aget-object v1, p2, v0

    invoke-static {v1, p1}, Lcom/android/internal/ml/clustering/KMeans;->nearestMean([FLjava/util/List;)Lcom/android/internal/ml/clustering/KMeans$Mean;

    move-result-object v2

    iget-object v3, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_7

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/ml/clustering/KMeans$Mean;

    iget-object v3, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_6

    :cond_2
    iget-object v3, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    array-length v4, v3

    new-array v4, v4, [F

    iput-object v4, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    const/4 v4, 0x0

    move v5, v4

    :goto_3
    iget-object v6, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    move v6, v4

    :goto_4
    iget-object v7, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    array-length v7, v7

    if-ge v6, v7, :cond_3

    iget-object v7, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    aget v8, v7, v6

    iget-object v9, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    aget v9, v9, v6

    add-float/2addr v8, v9

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    nop

    :goto_5
    iget-object v5, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    array-length v5, v5

    if-ge v4, v5, :cond_5

    iget-object v5, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    aget v6, v5, v4

    iget-object v7, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    iget-object v4, v2, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {v3, v4}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v4

    iget v5, p0, Lcom/android/internal/ml/clustering/KMeans;->mSqConvergenceEpsilon:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    const/4 v0, 0x0

    :cond_6
    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_7
    return v0
.end method


# virtual methods
.method public checkDataSetSanity([[F)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_4

    array-length v0, p1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    aget-object v0, p1, v0

    array-length v0, v0

    array-length v1, p1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    aget-object v3, p1, v2

    array-length v3, v3

    if-ne v3, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Bad data set format."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad data set format."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data set is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data set is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public predict(I[[F)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[F)",
            "Ljava/util/List<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/internal/ml/clustering/KMeans;->checkDataSetSanity([[F)V

    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v1, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    :goto_0
    if-ge v3, p1, :cond_1

    new-instance v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    invoke-direct {v4, v1}, Lcom/android/internal/ml/clustering/KMeans$Mean;-><init>(I)V

    move v5, v0

    :goto_1
    if-ge v5, v1, :cond_0

    iget-object v6, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    iget-object v7, p0, Lcom/android/internal/ml/clustering/KMeans;->mRandomState:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    nop

    :goto_2
    iget v4, p0, Lcom/android/internal/ml/clustering/KMeans;->mMaxIterations:I

    if-ge v0, v4, :cond_3

    invoke-direct {p0, v2, p2}, Lcom/android/internal/ml/clustering/KMeans;->step(Ljava/util/ArrayList;[[F)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    nop

    return-object v2
.end method
