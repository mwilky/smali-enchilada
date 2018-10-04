.class public Landroid/renderscript/Matrix3f;
.super Ljava/lang/Object;
.source "Matrix3f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public get(II)F
    .locals 2

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public getArray()[F
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    return-object v0
.end method

.method public load(Landroid/renderscript/Matrix3f;)V
    .locals 4

    invoke-virtual {p1}, Landroid/renderscript/Matrix3f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public loadIdentity()V
    .locals 4

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v0, v3

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x2

    aput v2, v0, v3

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x3

    aput v2, v0, v3

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x4

    aput v1, v0, v3

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x5

    aput v2, v0, v3

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x6

    aput v2, v0, v3

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x7

    aput v2, v0, v3

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v2, 0x8

    aput v1, v0, v2

    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    :goto_1
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v3, v2, :cond_0

    invoke-virtual {p2, v1, v3}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v9

    invoke-virtual {p1, v3, v0}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v4, v10

    invoke-virtual {p1, v3, v8}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v8

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    invoke-virtual {p1, v3, v7}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v7

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, v0, v4}, Landroid/renderscript/Matrix3f;->set(IIF)V

    invoke-virtual {p0, v1, v8, v5}, Landroid/renderscript/Matrix3f;->set(IIF)V

    invoke-virtual {p0, v1, v7, v6}, Landroid/renderscript/Matrix3f;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public loadRotate(F)V
    .locals 5

    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    neg-float v3, v1

    const/4 v4, 0x1

    aput v3, v2, v4

    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x3

    aput v1, v2, v3

    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x4

    aput v0, v2, v3

    return-void
.end method

.method public loadRotate(FFFF)V
    .locals 18

    move-object/from16 v0, p0

    const v4, 0x3c8efa35

    mul-float v4, v4, p1

    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v7, p2, p2

    mul-float v8, p3, p3

    add-float/2addr v7, v8

    mul-float v8, p4, p4

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v9, v7, v8

    if-nez v9, :cond_0

    div-float v9, v8, v7

    mul-float v1, p2, v9

    mul-float v2, p3, v9

    mul-float v3, p4, v9

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    :goto_0
    sub-float/2addr v8, v5

    mul-float v9, v1, v2

    mul-float v10, v2, v3

    mul-float v11, v3, v1

    mul-float v12, v1, v6

    mul-float v13, v2, v6

    mul-float v14, v3, v6

    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x0

    mul-float v17, v1, v1

    mul-float v17, v17, v8

    add-float v17, v17, v5

    aput v17, v15, v16

    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x3

    mul-float v17, v9, v8

    sub-float v17, v17, v14

    aput v17, v15, v16

    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x6

    mul-float v17, v11, v8

    add-float v17, v17, v13

    aput v17, v15, v16

    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x1

    mul-float v17, v9, v8

    add-float v17, v17, v14

    aput v17, v15, v16

    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x4

    mul-float v17, v2, v2

    mul-float v17, v17, v8

    add-float v17, v17, v5

    aput v17, v15, v16

    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x7

    mul-float v17, v10, v8

    sub-float v17, v17, v12

    aput v17, v15, v16

    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x2

    mul-float v17, v11, v8

    sub-float v17, v17, v13

    aput v17, v15, v16

    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x5

    mul-float v17, v10, v8

    add-float v17, v17, v12

    aput v17, v15, v16

    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v16, 0x8

    mul-float v17, v3, v3

    mul-float v17, v17, v8

    add-float v17, v17, v5

    aput v17, v15, v16

    return-void
.end method

.method public loadScale(FF)V
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    return-void
.end method

.method public loadScale(FFF)V
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v1, 0x8

    aput p3, v0, v1

    return-void
.end method

.method public loadTranslate(FF)V
    .locals 2

    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix3f;)V
    .locals 1

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix3f;->loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->load(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public rotate(F)V
    .locals 1

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix3f;->loadRotate(F)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public rotate(FFFF)V
    .locals 1

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix3f;->loadRotate(FFFF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public scale(FF)V
    .locals 1

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadScale(FF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public scale(FFF)V
    .locals 1

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix3f;->loadScale(FFF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public set(IIF)V
    .locals 2

    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aput p3, v0, v1

    return-void
.end method

.method public translate(FF)V
    .locals 1

    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadTranslate(FF)V

    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    return-void
.end method

.method public transpose()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v1

    aget v2, v2, v3

    iget-object v3, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v6, v1, 0x3

    add-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v4, v0

    aput v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
