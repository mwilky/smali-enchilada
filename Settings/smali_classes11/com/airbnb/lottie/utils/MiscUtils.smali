.class public Lcom/airbnb/lottie/utils/MiscUtils;
.super Ljava/lang/Object;
.source "MiscUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4
    .param p0, "p1"    # Landroid/graphics/PointF;
    .param p1, "p2"    # Landroid/graphics/PointF;

    .line 12
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "number"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 80
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private static floorDiv(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 71
    div-int v0, p0, p1

    .line 73
    .local v0, "r":I
    xor-int v1, p0, p1

    if-gez v1, :cond_0

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_0

    .line 74
    add-int/lit8 v0, v0, -0x1

    .line 76
    :cond_0
    return v0
.end method

.method public static floorMod(FF)I
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 57
    float-to-int v0, p0

    float-to-int v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->floorMod(II)I

    move-result v0

    return v0
.end method

.method public static floorMod(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 64
    invoke-static {p0, p1}, Lcom/airbnb/lottie/utils/MiscUtils;->floorDiv(II)I

    move-result v0

    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    return v0
.end method

.method public static getPathFromData(Lcom/airbnb/lottie/model/content/ShapeData;Landroid/graphics/Path;)V
    .locals 15
    .param p0, "shapeData"    # Lcom/airbnb/lottie/model/content/ShapeData;
    .param p1, "outPath"    # Landroid/graphics/Path;

    .line 16
    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->reset()V

    .line 17
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v8

    .line 18
    .local v8, "initialPoint":Landroid/graphics/PointF;
    iget v0, v8, Landroid/graphics/PointF;->x:F

    iget v1, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 19
    new-instance v0, Landroid/graphics/PointF;

    iget v1, v8, Landroid/graphics/PointF;->x:F

    iget v2, v8, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v9, v0

    .line 20
    .local v9, "currentPoint":Landroid/graphics/PointF;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 22
    .local v11, "curveData":Lcom/airbnb/lottie/model/CubicCurveData;
    invoke-virtual {v11}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v12

    .line 23
    .local v12, "cp1":Landroid/graphics/PointF;
    invoke-virtual {v11}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v13

    .line 24
    .local v13, "cp2":Landroid/graphics/PointF;
    invoke-virtual {v11}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v14

    .line 26
    .local v14, "vertex":Landroid/graphics/PointF;
    invoke-virtual {v12, v9}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v13, v14}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget v0, v14, Landroid/graphics/PointF;->x:F

    iget v1, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 35
    :cond_0
    iget v1, v12, Landroid/graphics/PointF;->x:F

    iget v2, v12, Landroid/graphics/PointF;->y:F

    iget v3, v13, Landroid/graphics/PointF;->x:F

    iget v4, v13, Landroid/graphics/PointF;->y:F

    iget v5, v14, Landroid/graphics/PointF;->x:F

    iget v6, v14, Landroid/graphics/PointF;->y:F

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 37
    :goto_1
    iget v0, v14, Landroid/graphics/PointF;->x:F

    iget v1, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 20
    .end local v11    # "curveData":Lcom/airbnb/lottie/model/CubicCurveData;
    .end local v12    # "cp1":Landroid/graphics/PointF;
    .end local v13    # "cp2":Landroid/graphics/PointF;
    .end local v14    # "vertex":Landroid/graphics/PointF;
    add-int/lit8 v0, v10, 0x1

    .end local v10    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 39
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    .line 42
    :cond_2
    return-void
.end method

.method public static lerp(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "percentage"    # D
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 49
    sub-double v0, p2, p0

    mul-double/2addr v0, p4

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public static lerp(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "percentage"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 45
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static lerp(IIF)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "percentage"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 53
    int-to-float v0, p0

    sub-int v1, p1, p0

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
