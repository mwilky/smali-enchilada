.class public Landroid/transition/ArcMotion;
.super Landroid/transition/PathMotion;
.source "ArcMotion.java"


# static fields
.field private static final DEFAULT_MAX_ANGLE_DEGREES:F = 70.0f

.field private static final DEFAULT_MAX_TANGENT:F

.field private static final DEFAULT_MIN_ANGLE_DEGREES:F


# instance fields
.field private mMaximumAngle:F

.field private mMaximumTangent:F

.field private mMinimumHorizontalAngle:F

.field private mMinimumHorizontalTangent:F

.field private mMinimumVerticalAngle:F

.field private mMinimumVerticalTangent:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    nop

    const-wide v0, 0x4041800000000000L    # 35.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/transition/PathMotion;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    const/high16 v1, 0x428c0000    # 70.0f

    iput v1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    sget v0, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/transition/PathMotion;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    const/high16 v1, 0x428c0000    # 70.0f

    iput v1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    sget v2, Landroid/transition/ArcMotion;->DEFAULT_MAX_TANGENT:F

    iput v2, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    sget-object v2, Lcom/android/internal/R$styleable;->ArcMotion:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroid/transition/ArcMotion;->setMinimumVerticalAngle(F)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/transition/ArcMotion;->setMinimumHorizontalAngle(F)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/transition/ArcMotion;->setMaximumAngle(F)V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static toTangent(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arc must be between 0 and 90 degrees"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMaximumAngle()F
    .locals 1

    iget v0, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    return v0
.end method

.method public getMinimumHorizontalAngle()F
    .locals 1

    iget v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    return v0
.end method

.method public getMinimumVerticalAngle()F
    .locals 1

    iget v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    return v0
.end method

.method public getPath(FFFF)Landroid/graphics/Path;
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    move-object v10, v3

    invoke-virtual {v10, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v11, p3, v1

    sub-float v12, p4, v2

    mul-float v3, v11, v11

    mul-float v4, v12, v12

    add-float v13, v3, v4

    add-float v3, v1, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v14, v3, v4

    add-float v3, v2, p4

    div-float v15, v3, v4

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v16, v13, v3

    const/4 v3, 0x0

    cmpl-float v5, v2, p4

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move/from16 v17, v5

    const/4 v5, 0x0

    cmpl-float v6, v12, v5

    const/high16 v7, 0x3f000000    # 0.5f

    if-nez v6, :cond_1

    move v6, v14

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float/2addr v8, v7

    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float/2addr v8, v7

    add-float/2addr v8, v15

    :goto_1
    move/from16 v19, v3

    goto :goto_4

    :cond_1
    cmpl-float v6, v11, v5

    if-nez v6, :cond_2

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v7

    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v14

    move v8, v15

    goto :goto_1

    :cond_2
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    mul-float v6, v4, v12

    div-float v6, v13, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    if-eqz v17, :cond_3

    add-float v7, p4, v6

    move/from16 v8, p3

    goto :goto_2

    :cond_3
    add-float v7, v2, v6

    move v8, v1

    :goto_2
    iget v9, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float v9, v9, v16

    iget v5, v0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    mul-float v3, v9, v5

    nop

    move/from16 v19, v3

    move v6, v8

    move v8, v7

    goto :goto_4

    :cond_4
    mul-float v5, v4, v11

    div-float v5, v13, v5

    if-eqz v17, :cond_5

    add-float v6, v1, v5

    move v7, v2

    goto :goto_3

    :cond_5
    sub-float v6, p3, v5

    move/from16 v7, p4

    :goto_3
    move v8, v7

    iget v7, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float v7, v7, v16

    iget v9, v0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    mul-float v3, v7, v9

    goto :goto_1

    :goto_4
    sub-float v20, v14, v6

    sub-float v21, v15, v8

    mul-float v3, v20, v20

    mul-float v5, v21, v21

    add-float v22, v3, v5

    iget v3, v0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    mul-float v3, v3, v16

    iget v5, v0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    mul-float v23, v3, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    cmpl-float v7, v22, v5

    if-eqz v7, :cond_6

    cmpg-float v5, v22, v19

    if-gez v5, :cond_6

    move/from16 v3, v19

    goto :goto_5

    :cond_6
    cmpl-float v5, v22, v23

    if-lez v5, :cond_7

    move/from16 v3, v23

    :cond_7
    :goto_5
    move/from16 v24, v3

    const/4 v3, 0x0

    cmpl-float v3, v24, v3

    if-eqz v3, :cond_8

    div-float v3, v24, v22

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    sub-float v5, v6, v14

    mul-float/2addr v5, v4

    add-float v6, v14, v5

    sub-float v5, v8, v15

    mul-float/2addr v5, v4

    add-float v8, v15, v5

    :cond_8
    move/from16 v18, v6

    move/from16 v26, v8

    add-float v3, v1, v18

    const/high16 v4, 0x40000000    # 2.0f

    div-float v25, v3, v4

    add-float v3, v2, v26

    div-float v27, v3, v4

    add-float v3, v18, p3

    div-float v28, v3, v4

    add-float v3, v26, p4

    div-float v29, v3, v4

    move-object v3, v10

    move/from16 v4, v25

    move/from16 v5, v27

    move/from16 v6, v28

    move/from16 v7, v29

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v10
.end method

.method public setMaximumAngle(F)V
    .locals 1

    iput p1, p0, Landroid/transition/ArcMotion;->mMaximumAngle:F

    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/transition/ArcMotion;->mMaximumTangent:F

    return-void
.end method

.method public setMinimumHorizontalAngle(F)V
    .locals 1

    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalAngle:F

    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumHorizontalTangent:F

    return-void
.end method

.method public setMinimumVerticalAngle(F)V
    .locals 1

    iput p1, p0, Landroid/transition/ArcMotion;->mMinimumVerticalAngle:F

    invoke-static {p1}, Landroid/transition/ArcMotion;->toTangent(F)F

    move-result v0

    iput v0, p0, Landroid/transition/ArcMotion;->mMinimumVerticalTangent:F

    return-void
.end method
