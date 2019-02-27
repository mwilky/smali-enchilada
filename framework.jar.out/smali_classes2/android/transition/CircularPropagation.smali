.class public Landroid/transition/CircularPropagation;
.super Landroid/transition/VisibilityPropagation;
.source "CircularPropagation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircularPropagation"


# instance fields
.field private mPropagationSpeed:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/transition/VisibilityPropagation;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    return-void
.end method

.method private static distance(FFFF)D
    .locals 6

    sub-float v0, p2, p0

    float-to-double v0, v0

    sub-float v2, p3, p1

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-wide/16 v3, 0x0

    if-nez v1, :cond_0

    if-nez p4, :cond_0

    return-wide v3

    :cond_0
    const/4 v5, 0x1

    if-eqz p4, :cond_2

    invoke-virtual {v0, v1}, Landroid/transition/CircularPropagation;->getViewVisibility(Landroid/transition/TransitionValues;)I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v6, p4

    goto :goto_1

    :cond_2
    :goto_0
    move-object v6, v1

    const/4 v5, -0x1

    :goto_1
    nop

    invoke-virtual {v0, v6}, Landroid/transition/CircularPropagation;->getViewX(Landroid/transition/TransitionValues;)I

    move-result v7

    invoke-virtual {v0, v6}, Landroid/transition/CircularPropagation;->getViewY(Landroid/transition/TransitionValues;)I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    move-object/from16 v12, p1

    goto :goto_2

    :cond_3
    const/4 v10, 0x2

    new-array v11, v10, [I

    move-object/from16 v12, p1

    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v13, 0x0

    aget v13, v11, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v14

    div-int/2addr v14, v10

    add-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v14

    add-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    const/4 v14, 0x1

    aget v14, v11, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v15

    div-int/2addr v15, v10

    add-int/2addr v14, v15

    int-to-float v10, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v14

    add-float/2addr v10, v14

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v11

    move v10, v13

    :goto_2
    int-to-float v13, v7

    int-to-float v14, v8

    int-to-float v15, v10

    int-to-float v3, v11

    invoke-static {v13, v14, v15, v3}, Landroid/transition/CircularPropagation;->distance(FFFF)D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-static {v15, v15, v13, v14}, Landroid/transition/CircularPropagation;->distance(FFFF)D

    move-result-wide v13

    div-double v17, v3, v13

    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v19

    const-wide/16 v15, 0x0

    cmp-long v15, v19, v15

    if-gez v15, :cond_4

    const-wide/16 v19, 0x12c

    :cond_4
    int-to-long v1, v5

    mul-long v1, v1, v19

    long-to-float v1, v1

    iget v2, v0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    mul-double v1, v1, v17

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    return-wide v1
.end method

.method public setPropagationSpeed(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/transition/CircularPropagation;->mPropagationSpeed:F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "propagationSpeed may not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
