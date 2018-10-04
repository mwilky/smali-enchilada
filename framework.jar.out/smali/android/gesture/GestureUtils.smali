.class public final Landroid/gesture/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# static fields
.field private static final NONUNIFORM_SCALE:F

.field private static final SCALING_THRESHOLD:F = 0.26f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static closeStream(Ljava/io/Closeable;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Gestures"

    const-string v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static computeCentroid([F)[F
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v1

    move v1, v0

    move v0, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v0, v2, :cond_0

    aget v6, p0, v0

    add-float/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    aget v6, p0, v0

    add-float/2addr v4, v6

    add-int/2addr v0, v5

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v6, v1

    int-to-float v8, v2

    div-float/2addr v7, v8

    aput v7, v0, v3

    mul-float/2addr v6, v4

    int-to-float v3, v2

    div-float/2addr v6, v3

    aput v6, v0, v5

    return-object v0
.end method

.method private static computeCoVariance([F)[[F
    .locals 10

    const/4 v0, 0x2

    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput v3, v2, v1

    aget-object v2, v0, v1

    const/4 v4, 0x1

    aput v3, v2, v4

    aget-object v2, v0, v4

    aput v3, v2, v1

    aget-object v2, v0, v4

    aput v3, v2, v4

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget v5, p0, v3

    add-int/lit8 v3, v3, 0x1

    aget v6, p0, v3

    aget-object v7, v0, v1

    aget v8, v7, v1

    mul-float v9, v5, v5

    add-float/2addr v8, v9

    aput v8, v7, v1

    aget-object v7, v0, v1

    aget v8, v7, v4

    mul-float v9, v5, v6

    add-float/2addr v8, v9

    aput v8, v7, v4

    aget-object v7, v0, v4

    aget-object v8, v0, v1

    aget v8, v8, v4

    aput v8, v7, v1

    aget-object v7, v0, v4

    aget v8, v7, v4

    mul-float v9, v6, v6

    add-float/2addr v8, v9

    aput v8, v7, v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    aget-object v3, v0, v1

    aget v5, v3, v1

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v3, v1

    aget-object v3, v0, v1

    aget v5, v3, v4

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v3, v4

    aget-object v3, v0, v4

    aget v5, v3, v1

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v3, v1

    aget-object v1, v0, v4

    aget v3, v1, v4

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    div-float/2addr v3, v5

    aput v3, v1, v4

    return-object v0
.end method

.method private static computeOrientation([[F)[F
    .locals 12

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget-object v2, p0, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    aget-object v2, p0, v3

    aget v2, v2, v1

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    aput v5, v0, v1

    aput v4, v0, v3

    :cond_1
    aget-object v2, p0, v1

    aget v2, v2, v1

    neg-float v2, v2

    aget-object v6, p0, v3

    aget v6, v6, v3

    sub-float/2addr v2, v6

    aget-object v6, p0, v1

    aget v6, v6, v1

    aget-object v7, p0, v3

    aget v7, v7, v3

    mul-float/2addr v6, v7

    aget-object v7, p0, v1

    aget v7, v7, v3

    aget-object v8, p0, v3

    aget v8, v8, v1

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float v7, v2, v7

    float-to-double v8, v7

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v10, v6

    sub-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    neg-float v9, v7

    add-float/2addr v9, v8

    neg-float v10, v7

    sub-float/2addr v10, v8

    cmpl-float v11, v9, v10

    if-nez v11, :cond_2

    aput v4, v0, v1

    aput v4, v0, v3

    goto :goto_1

    :cond_2
    cmpl-float v4, v9, v10

    if-lez v4, :cond_3

    move v4, v9

    goto :goto_0

    :cond_3
    move v4, v10

    :goto_0
    aput v5, v0, v1

    aget-object v5, p0, v1

    aget v5, v5, v1

    sub-float v5, v4, v5

    aget-object v1, p0, v1

    aget v1, v1, v3

    div-float/2addr v5, v1

    aput v5, v0, v3

    :goto_1
    return-object v0
.end method

.method public static computeOrientedBoundingBox(Ljava/util/ArrayList;)Landroid/gesture/OrientedBoundingBox;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;)",
            "Landroid/gesture/OrientedBoundingBox;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GesturePoint;

    mul-int/lit8 v4, v2, 0x2

    iget v5, v3, Landroid/gesture/GesturePoint;->x:F

    aput v5, v1, v4

    add-int/lit8 v5, v4, 0x1

    iget v6, v3, Landroid/gesture/GesturePoint;->y:F

    aput v6, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object v2

    invoke-static {v1, v2}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v3

    return-object v3
.end method

.method public static computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;
    .locals 4

    array-length v0, p0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object v2

    invoke-static {v1, v2}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v3

    return-object v3
.end method

.method private static computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget v2, p1, v1

    neg-float v2, v2

    const/4 v3, 0x1

    aget v4, p1, v3

    neg-float v4, v4

    invoke-static {v0, v2, v4}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    invoke-static/range {p0 .. p0}, Landroid/gesture/GestureUtils;->computeCoVariance([F)[[F

    move-result-object v2

    invoke-static {v2}, Landroid/gesture/GestureUtils;->computeOrientation([[F)[F

    move-result-object v4

    aget v5, v4, v1

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    aget v5, v4, v3

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    const v5, -0x4036f025

    goto :goto_0

    :cond_0
    aget v5, v4, v3

    float-to-double v5, v5

    aget v7, v4, v1

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v6, v5

    invoke-static {v0, v6}, Landroid/gesture/GestureUtils;->rotate([FF)[F

    :goto_0
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, 0x1

    const/4 v9, 0x1

    array-length v10, v0

    move v11, v7

    move v7, v6

    move v6, v1

    :goto_1
    if-ge v6, v10, :cond_5

    aget v12, v0, v6

    cmpg-float v12, v12, v7

    if-gez v12, :cond_1

    aget v7, v0, v6

    :cond_1
    aget v12, v0, v6

    cmpl-float v12, v12, v8

    if-lez v12, :cond_2

    aget v8, v0, v6

    :cond_2
    add-int/lit8 v6, v6, 0x1

    aget v12, v0, v6

    cmpg-float v12, v12, v11

    if-gez v12, :cond_3

    aget v11, v0, v6

    :cond_3
    aget v12, v0, v6

    cmpl-float v12, v12, v9

    if-lez v12, :cond_4

    aget v9, v0, v6

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    new-instance v6, Landroid/gesture/OrientedBoundingBox;

    const/high16 v12, 0x43340000    # 180.0f

    mul-float/2addr v12, v5

    float-to-double v12, v12

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v12, v14

    double-to-float v13, v12

    aget v14, p1, v1

    aget v15, p1, v3

    sub-float v16, v8, v7

    sub-float v17, v9, v11

    move-object v12, v6

    invoke-direct/range {v12 .. v17}, Landroid/gesture/OrientedBoundingBox;-><init>(FFFFF)V

    return-object v6
.end method

.method static computeStraightness([F)F
    .locals 7

    invoke-static {p0}, Landroid/gesture/GestureUtils;->computeTotalLength([F)F

    move-result v0

    const/4 v1, 0x2

    aget v1, p0, v1

    const/4 v2, 0x0

    aget v2, p0, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x3

    aget v2, p0, v2

    const/4 v3, 0x1

    aget v3, p0, v3

    sub-float/2addr v2, v3

    float-to-double v3, v1

    float-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v3, v0

    return v3
.end method

.method static computeStraightness([FF)F
    .locals 6

    const/4 v0, 0x2

    aget v0, p0, v0

    const/4 v1, 0x0

    aget v1, p0, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x3

    aget v1, p0, v1

    const/4 v2, 0x1

    aget v2, p0, v2

    sub-float/2addr v1, v2

    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v2, p1

    return v2
.end method

.method static computeTotalLength([F)F
    .locals 11

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int/lit8 v3, v2, 0x2

    aget v3, p0, v3

    aget v4, p0, v2

    sub-float/2addr v3, v4

    add-int/lit8 v4, v2, 0x3

    aget v4, p0, v4

    add-int/lit8 v5, v2, 0x1

    aget v5, p0, v5

    sub-float/2addr v4, v5

    float-to-double v5, v0

    float-to-double v7, v3

    float-to-double v9, v4

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v0, v5

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return v0
.end method

.method static cosineDistance([F[F)F
    .locals 5

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    aget v4, p1, v2

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method static minimumCosineDistance([F[FI)F
    .locals 16

    move-object/from16 v0, p0

    move/from16 v2, p2

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    aget v7, v0, v6

    aget v8, p1, v6

    mul-float/2addr v7, v8

    add-int/lit8 v8, v6, 0x1

    aget v8, v0, v8

    add-int/lit8 v9, v6, 0x1

    aget v9, p1, v9

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    add-float/2addr v4, v7

    aget v7, v0, v6

    add-int/lit8 v8, v6, 0x1

    aget v8, p1, v8

    mul-float/2addr v7, v8

    add-int/lit8 v8, v6, 0x1

    aget v8, v0, v8

    aget v9, p1, v6

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    add-float/2addr v5, v7

    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_2

    div-float v6, v5, v4

    float-to-double v7, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    const/4 v9, 0x2

    if-le v2, v9, :cond_1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    int-to-double v13, v2

    div-double/2addr v11, v13

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_1

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    double-to-float v9, v9

    return v9

    :cond_1
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    float-to-double v11, v6

    mul-double/2addr v11, v9

    float-to-double v13, v4

    mul-double/2addr v13, v9

    float-to-double v0, v5

    mul-double/2addr v0, v11

    add-double/2addr v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_2
    const v0, 0x3fc90fdb

    return v0
.end method

.method private static plot(FF[FI)V
    .locals 22

    const/4 v0, 0x0

    cmpg-float v2, p0, v0

    if-gez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move/from16 v2, p0

    :goto_0
    move v1, v2

    cmpg-float v3, p1, v0

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v0, p1

    :goto_1
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    int-to-float v6, v2

    cmpl-float v6, v1, v6

    if-nez v6, :cond_3

    int-to-float v6, v4

    cmpl-float v6, v0, v6

    if-nez v6, :cond_3

    mul-int v6, v5, p3

    add-int/2addr v6, v3

    aget v7, p2, v6

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    aput v8, p2, v6

    :cond_2
    nop

    move/from16 v17, v0

    move/from16 v16, v1

    move/from16 v18, v2

    move/from16 v19, v3

    goto/16 :goto_2

    :cond_3
    int-to-float v6, v2

    sub-float/2addr v6, v1

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-float v10, v4

    sub-float/2addr v10, v0

    float-to-double v10, v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    int-to-float v12, v3

    sub-float/2addr v12, v1

    float-to-double v12, v12

    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    int-to-float v8, v5

    sub-float/2addr v8, v0

    float-to-double v8, v8

    move/from16 v17, v0

    move/from16 v16, v1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double v8, v6, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    move/from16 v18, v2

    move/from16 v19, v3

    add-double v2, v12, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    move-wide/from16 v20, v10

    add-double v9, v6, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v3, v9

    add-double v9, v12, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    add-float v10, v8, v2

    add-float/2addr v10, v3

    add-float/2addr v10, v9

    div-float v11, v8, v10

    mul-int v14, v4, p3

    add-int v14, v14, v18

    aget v15, p2, v14

    cmpl-float v15, v11, v15

    if-lez v15, :cond_4

    aput v11, p2, v14

    :cond_4
    div-float v11, v2, v10

    mul-int v15, v4, p3

    add-int v15, v15, v19

    aget v14, p2, v15

    cmpl-float v14, v11, v14

    if-lez v14, :cond_5

    aput v11, p2, v15

    :cond_5
    div-float v11, v3, v10

    mul-int v14, v5, p3

    add-int v14, v14, v18

    aget v15, p2, v14

    cmpl-float v15, v11, v15

    if-lez v15, :cond_6

    aput v11, p2, v14

    :cond_6
    div-float v11, v9, v10

    mul-int v15, v5, p3

    add-int v15, v15, v19

    aget v14, p2, v15

    cmpl-float v14, v11, v14

    if-lez v14, :cond_7

    aput v11, p2, v15

    :cond_7
    :goto_2
    return-void
.end method

.method static rotate([FF)[F
    .locals 7

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p0, v3

    mul-float/2addr v4, v0

    add-int/lit8 v5, v3, 0x1

    aget v5, p0, v5

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    aget v5, p0, v3

    mul-float/2addr v5, v1

    add-int/lit8 v6, v3, 0x1

    aget v6, p0, v6

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    aput v4, p0, v3

    add-int/lit8 v6, v3, 0x1

    aput v5, p0, v6

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method static scale([FFF)[F
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    mul-float/2addr v2, p1

    aput v2, p0, v1

    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v2

    mul-float/2addr v3, p2

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static spatialSampling(Landroid/gesture/Gesture;I)[F
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/gesture/GestureUtils;->spatialSampling(Landroid/gesture/Gesture;IZ)[F

    move-result-object v0

    return-object v0
.end method

.method public static spatialSampling(Landroid/gesture/Gesture;IZ)[F
    .locals 33

    move/from16 v0, p1

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    mul-int v2, v0, v0

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([FF)V

    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->getBoundingBox()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v7, v1, v5

    div-float v8, v1, v6

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    cmpg-float v11, v7, v8

    if-gez v11, :cond_0

    move v11, v7

    goto :goto_0

    :cond_0
    move v11, v8

    :goto_0
    move v7, v11

    move v8, v11

    goto :goto_2

    :cond_1
    div-float v11, v5, v6

    cmpl-float v12, v11, v9

    if-lez v12, :cond_2

    div-float v11, v9, v11

    :cond_2
    const v12, 0x3e851eb8    # 0.26f

    cmpg-float v12, v11, v12

    if-gez v12, :cond_4

    cmpg-float v12, v7, v8

    if-gez v12, :cond_3

    move v12, v7

    goto :goto_1

    :cond_3
    move v12, v8

    :goto_1
    move v7, v12

    move v8, v12

    goto :goto_2

    :cond_4
    cmpl-float v12, v7, v8

    if-lez v12, :cond_6

    sget v12, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    mul-float/2addr v12, v8

    cmpg-float v13, v12, v7

    if-gez v13, :cond_5

    move v7, v12

    :cond_5
    goto :goto_2

    :cond_6
    sget v12, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    mul-float/2addr v12, v7

    cmpg-float v13, v12, v8

    if-gez v13, :cond_7

    move v8, v12

    :cond_7
    :goto_2
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    neg-float v11, v11

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    neg-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float v14, v1, v13

    div-float v13, v1, v13

    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v17, 0x0

    move/from16 v18, v17

    :goto_3
    move/from16 v19, v18

    move/from16 v3, v19

    if-ge v3, v9, :cond_15

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v21, v4

    move-object/from16 v4, v18

    check-cast v4, Landroid/gesture/GestureStroke;

    move/from16 v22, v5

    iget-object v5, v4, Landroid/gesture/GestureStroke;->points:[F

    move-object/from16 v23, v4

    array-length v4, v5

    move/from16 v24, v6

    new-array v6, v4, [F

    move/from16 v18, v17

    :goto_4
    move/from16 v25, v18

    move/from16 v26, v9

    move/from16 v9, v25

    if-ge v9, v4, :cond_8

    aget v18, v5, v9

    add-float v18, v18, v11

    mul-float v18, v18, v7

    add-float v18, v18, v14

    aput v18, v6, v9

    add-int/lit8 v25, v9, 0x1

    add-int/lit8 v18, v9, 0x1

    aget v18, v5, v18

    add-float v18, v18, v12

    mul-float v18, v18, v8

    add-float v18, v18, v13

    aput v18, v6, v25

    add-int/lit8 v18, v9, 0x2

    move/from16 v9, v26

    goto :goto_4

    :cond_8
    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v18, -0x40800000    # -1.0f

    move-object/from16 v27, v5

    move/from16 v28, v7

    move v5, v9

    move/from16 v9, v17

    move/from16 v7, v18

    :goto_5
    if-ge v9, v4, :cond_14

    aget v18, v6, v9

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_9

    const/16 v18, 0x0

    goto :goto_6

    :cond_9
    aget v18, v6, v9

    :goto_6
    add-int/lit8 v19, v9, 0x1

    aget v19, v6, v19

    const/16 v20, 0x0

    cmpg-float v19, v19, v20

    if-gez v19, :cond_a

    move/from16 v19, v20

    goto :goto_7

    :cond_a
    add-int/lit8 v19, v9, 0x1

    aget v19, v6, v19

    :goto_7
    cmpl-float v25, v18, v1

    if-lez v25, :cond_b

    move/from16 v18, v1

    :cond_b
    move/from16 v29, v4

    move/from16 v4, v18

    cmpl-float v18, v19, v1

    if-lez v18, :cond_c

    move/from16 v19, v1

    move/from16 v30, v1

    goto :goto_8

    :cond_c
    move/from16 v30, v1

    move/from16 v1, v19

    :goto_8
    invoke-static {v4, v1, v2, v0}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v18, -0x40800000    # -1.0f

    cmpl-float v18, v5, v18

    if-eqz v18, :cond_13

    cmpl-float v18, v5, v4

    if-lez v18, :cond_e

    move/from16 v31, v11

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v10, v10

    sub-float v11, v7, v1

    sub-float v18, v5, v4

    div-float v11, v11, v18

    :goto_9
    cmpg-float v18, v10, v5

    if-gez v18, :cond_d

    sub-float v18, v10, v4

    mul-float v18, v18, v11

    move-object/from16 v32, v6

    add-float v6, v18, v1

    invoke-static {v10, v6, v2, v0}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v10, v10, v16

    move-object/from16 v6, v32

    goto :goto_9

    :cond_d
    move-object/from16 v32, v6

    goto :goto_b

    :cond_e
    move-object/from16 v32, v6

    move/from16 v31, v11

    cmpg-float v6, v5, v4

    if-gez v6, :cond_f

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v6, v10

    sub-float v10, v7, v1

    sub-float v11, v5, v4

    div-float/2addr v10, v11

    :goto_a
    cmpg-float v11, v6, v4

    if-gez v11, :cond_f

    sub-float v11, v6, v4

    mul-float/2addr v11, v10

    add-float/2addr v11, v1

    invoke-static {v6, v11, v2, v0}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v6, v6, v16

    goto :goto_a

    :cond_f
    :goto_b
    cmpl-float v6, v7, v1

    if-lez v6, :cond_11

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v6, v10

    sub-float v10, v5, v4

    sub-float v11, v7, v1

    div-float/2addr v10, v11

    :goto_c
    cmpg-float v11, v6, v7

    if-gez v11, :cond_10

    sub-float v11, v6, v1

    mul-float/2addr v11, v10

    add-float/2addr v11, v4

    invoke-static {v11, v6, v2, v0}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v6, v6, v16

    goto :goto_c

    :cond_10
    goto :goto_e

    :cond_11
    cmpg-float v6, v7, v1

    if-gez v6, :cond_12

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v6, v10

    sub-float v10, v5, v4

    sub-float v11, v7, v1

    div-float/2addr v10, v11

    :goto_d
    cmpg-float v11, v6, v1

    if-gez v11, :cond_12

    sub-float v11, v6, v1

    mul-float/2addr v11, v10

    add-float/2addr v11, v4

    invoke-static {v11, v6, v2, v0}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v6, v6, v16

    goto :goto_d

    :cond_12
    :goto_e
    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_f

    :cond_13
    move-object/from16 v32, v6

    move/from16 v31, v11

    const/high16 v16, 0x3f800000    # 1.0f

    :goto_f
    move v5, v4

    move v7, v1

    add-int/lit8 v9, v9, 0x2

    move/from16 v4, v29

    move/from16 v1, v30

    move/from16 v11, v31

    move-object/from16 v6, v32

    goto/16 :goto_5

    :cond_14
    move/from16 v30, v1

    move/from16 v29, v4

    move/from16 v31, v11

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    add-int/lit8 v18, v3, 0x1

    move/from16 v3, v20

    move-object/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v24

    move/from16 v9, v26

    move/from16 v7, v28

    goto/16 :goto_3

    :cond_15
    move/from16 v30, v1

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v24, v6

    move/from16 v28, v7

    move/from16 v26, v9

    move/from16 v31, v11

    return-object v2
.end method

.method static squaredEuclideanDistance([F[F)F
    .locals 5

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    mul-float v4, v3, v3

    add-float/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-float v2, v1

    div-float v2, v0, v2

    return v2
.end method

.method public static temporalSampling(Landroid/gesture/GestureStroke;I)[F
    .locals 19

    move-object/from16 v0, p0

    iget v2, v0, Landroid/gesture/GestureStroke;->length:F

    add-int/lit8 v3, p1, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-int/lit8 v3, p1, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    iget-object v6, v0, Landroid/gesture/GestureStroke;->points:[F

    const/4 v7, 0x0

    aget v7, v6, v7

    const/4 v8, 0x1

    aget v9, v6, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    aput v7, v4, v10

    add-int/2addr v10, v8

    aput v9, v4, v10

    add-int/2addr v10, v8

    const/4 v13, 0x0

    array-length v14, v6

    div-int/lit8 v14, v14, 0x2

    :goto_0
    if-ge v13, v14, :cond_3

    const/4 v15, 0x1

    cmpl-float v15, v11, v15

    if-nez v15, :cond_1

    add-int/lit8 v13, v13, 0x1

    if-lt v13, v14, :cond_0

    nop

    move/from16 v17, v14

    goto :goto_2

    :cond_0
    mul-int/lit8 v15, v13, 0x2

    aget v11, v6, v15

    mul-int/lit8 v15, v13, 0x2

    add-int/2addr v15, v8

    aget v12, v6, v15

    :cond_1
    sub-float v15, v11, v7

    sub-float v8, v12, v9

    float-to-double v0, v15

    move/from16 v18, v13

    move/from16 v17, v14

    float-to-double v13, v8

    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    add-float v1, v5, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    sub-float v1, v2, v5

    div-float/2addr v1, v0

    mul-float v13, v1, v15

    add-float/2addr v13, v7

    mul-float v14, v1, v8

    add-float/2addr v14, v9

    aput v13, v4, v10

    add-int/lit8 v10, v10, 0x1

    aput v14, v4, v10

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    move v7, v13

    move v9, v14

    const/4 v1, 0x0

    nop

    move v5, v1

    goto :goto_1

    :cond_2
    const/16 v16, 0x1

    move v1, v11

    move v7, v12

    const/4 v9, 0x1

    const/4 v11, 0x1

    add-float/2addr v5, v0

    move v12, v11

    move v11, v9

    move v9, v7

    move v7, v1

    :goto_1
    move/from16 v8, v16

    move/from16 v14, v17

    move/from16 v13, v18

    move-object/from16 v0, p0

    goto :goto_0

    :cond_3
    move/from16 v17, v14

    :goto_2
    move v0, v10

    :goto_3
    if-ge v0, v3, :cond_4

    aput v7, v4, v0

    add-int/lit8 v1, v0, 0x1

    aput v9, v4, v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_4
    return-object v4
.end method

.method static translate([FFF)[F
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    add-float/2addr v2, p1

    aput v2, p0, v1

    add-int/lit8 v2, v1, 0x1

    aget v3, p0, v2

    add-float/2addr v3, p2

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object p0
.end method
