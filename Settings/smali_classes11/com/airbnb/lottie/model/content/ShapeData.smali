.class public Lcom/airbnb/lottie/model/content/ShapeData;
.super Ljava/lang/Object;
.source "ShapeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/ShapeData$Factory;
    }
.end annotation


# instance fields
.field private closed:Z

.field private final curves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;"
        }
    .end annotation
.end field

.field private initialPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .locals 1
    .param p1, "initialPoint"    # Landroid/graphics/PointF;
    .param p2, "closed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p3, "curves":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/CubicCurveData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 24
    iput-boolean p2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;Lcom/airbnb/lottie/model/content/ShapeData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/PointF;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lcom/airbnb/lottie/model/content/ShapeData$1;

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/model/content/ShapeData;-><init>(Landroid/graphics/PointF;ZLjava/util/List;)V

    return-void
.end method

.method private setInitialPoint(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 32
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 36
    return-void
.end method


# virtual methods
.method public getCurves()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    return-object v0
.end method

.method public getInitialPoint()Landroid/graphics/PointF;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public interpolateBetween(Lcom/airbnb/lottie/model/content/ShapeData;Lcom/airbnb/lottie/model/content/ShapeData;F)V
    .locals 17
    .param p1, "shapeData1"    # Lcom/airbnb/lottie/model/content/ShapeData;
    .param p2, "shapeData2"    # Lcom/airbnb/lottie/model/content/ShapeData;
    .param p3, "percentage"    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    move-object/from16 v0, p0

    .line 52
    move/from16 v1, p3

    iget-object v2, v0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    if-nez v2, :cond_0

    .line 53
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, v0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 55
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 57
    iget-object v2, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_4

    iget-object v2, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_3

    goto :goto_2

    .line 59
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Curves must have the same number of control points. This: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\tShape 1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\tShape 2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_4
    :goto_2
    iget-object v2, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_5

    .line 65
    iget-object v4, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    new-instance v5, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v5}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 69
    .end local v2    # "i":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v2

    .line 70
    .local v2, "initialPoint1":Landroid/graphics/PointF;
    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v4

    .line 72
    .local v4, "initialPoint2":Landroid/graphics/PointF;
    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v6, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v5

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget v7, v4, Landroid/graphics/PointF;->y:F

    .line 73
    invoke-static {v6, v7, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v6

    .line 72
    invoke-direct {v0, v5, v6}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    .line 75
    iget-object v5, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "i":I
    :goto_4
    move v3, v5

    .end local v5    # "i":I
    .local v3, "i":I
    if-ltz v3, :cond_6

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 77
    .local v5, "curve1":Lcom/airbnb/lottie/model/CubicCurveData;
    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 79
    .local v6, "curve2":Lcom/airbnb/lottie/model/CubicCurveData;
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v7

    .line 80
    .local v7, "cp11":Landroid/graphics/PointF;
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v8

    .line 81
    .local v8, "cp21":Landroid/graphics/PointF;
    invoke-virtual {v5}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v9

    .line 83
    .local v9, "vertex1":Landroid/graphics/PointF;
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v10

    .line 84
    .local v10, "cp12":Landroid/graphics/PointF;
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v11

    .line 85
    .local v11, "cp22":Landroid/graphics/PointF;
    invoke-virtual {v6}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v12

    .line 87
    .local v12, "vertex2":Landroid/graphics/PointF;
    iget-object v13, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/model/CubicCurveData;

    iget v14, v7, Landroid/graphics/PointF;->x:F

    iget v15, v10, Landroid/graphics/PointF;->x:F

    .line 88
    invoke-static {v14, v15, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v14

    iget v15, v7, Landroid/graphics/PointF;->y:F

    move-object/from16 v16, v2

    iget v2, v10, Landroid/graphics/PointF;->y:F

    .end local v2    # "initialPoint1":Landroid/graphics/PointF;
    .local v16, "initialPoint1":Landroid/graphics/PointF;
    invoke-static {v15, v2, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v2

    .line 87
    invoke-virtual {v13, v14, v2}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint1(FF)V

    .line 90
    iget-object v2, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/CubicCurveData;

    iget v13, v8, Landroid/graphics/PointF;->x:F

    iget v14, v11, Landroid/graphics/PointF;->x:F

    .line 91
    invoke-static {v13, v14, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v13

    iget v14, v8, Landroid/graphics/PointF;->y:F

    iget v15, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v14, v15, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v14

    .line 90
    invoke-virtual {v2, v13, v14}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint2(FF)V

    .line 93
    iget-object v2, v0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/CubicCurveData;

    iget v13, v9, Landroid/graphics/PointF;->x:F

    iget v14, v12, Landroid/graphics/PointF;->x:F

    .line 94
    invoke-static {v13, v14, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v13

    iget v14, v9, Landroid/graphics/PointF;->y:F

    iget v15, v12, Landroid/graphics/PointF;->y:F

    invoke-static {v14, v15, v1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v14

    .line 93
    invoke-virtual {v2, v13, v14}, Lcom/airbnb/lottie/model/CubicCurveData;->setVertex(FF)V

    .line 75
    .end local v5    # "curve1":Lcom/airbnb/lottie/model/CubicCurveData;
    .end local v6    # "curve2":Lcom/airbnb/lottie/model/CubicCurveData;
    .end local v7    # "cp11":Landroid/graphics/PointF;
    .end local v8    # "cp21":Landroid/graphics/PointF;
    .end local v9    # "vertex1":Landroid/graphics/PointF;
    .end local v10    # "cp12":Landroid/graphics/PointF;
    .end local v11    # "cp22":Landroid/graphics/PointF;
    .end local v12    # "vertex2":Landroid/graphics/PointF;
    add-int/lit8 v5, v3, -0x1

    .end local v3    # "i":I
    .local v5, "i":I
    move-object/from16 v2, v16

    goto/16 :goto_4

    .line 97
    .end local v5    # "i":I
    .end local v16    # "initialPoint1":Landroid/graphics/PointF;
    .restart local v2    # "initialPoint1":Landroid/graphics/PointF;
    :cond_6
    move-object/from16 v16, v2

    .end local v2    # "initialPoint1":Landroid/graphics/PointF;
    .restart local v16    # "initialPoint1":Landroid/graphics/PointF;
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapeData{numCurves="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
