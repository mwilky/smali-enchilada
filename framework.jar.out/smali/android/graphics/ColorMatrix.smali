.class public Landroid/graphics/ColorMatrix;
.super Ljava/lang/Object;
.source "ColorMatrix.java"


# instance fields
.field private final mArray:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v2, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Landroid/graphics/ColorMatrix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/graphics/ColorMatrix;

    iget-object v0, v0, Landroid/graphics/ColorMatrix;->mArray:[F

    move v2, v1

    :goto_0
    const/16 v3, 0x14

    if-ge v2, v3, :cond_2

    aget v3, v0, v2

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aget v4, v4, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public final getArray()[F
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    return-object v0
.end method

.method public postConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0

    invoke-virtual {p0, p1, p0}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public preConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0

    invoke-virtual {p0, p0, p1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    const/16 v1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public set(Landroid/graphics/ColorMatrix;)V
    .locals 4

    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public set([F)V
    .locals 3

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V
    .locals 12

    const/16 v0, 0x14

    if-eq p1, p0, :cond_1

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    goto :goto_1

    :cond_1
    :goto_0
    new-array v1, v0, [F

    :goto_1
    nop

    iget-object v2, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v3, p2, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    :goto_2
    if-ge v4, v0, :cond_3

    move v7, v6

    move v6, v5

    :goto_3
    const/4 v8, 0x4

    if-ge v6, v8, :cond_2

    add-int/lit8 v8, v7, 0x1

    add-int/lit8 v9, v4, 0x0

    aget v9, v2, v9

    add-int/lit8 v10, v6, 0x0

    aget v10, v3, v10

    mul-float/2addr v9, v10

    add-int/lit8 v10, v4, 0x1

    aget v10, v2, v10

    add-int/lit8 v11, v6, 0x5

    aget v11, v3, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    add-int/lit8 v10, v4, 0x2

    aget v10, v2, v10

    add-int/lit8 v11, v6, 0xa

    aget v11, v3, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    add-int/lit8 v10, v4, 0x3

    aget v10, v2, v10

    add-int/lit8 v11, v6, 0xf

    aget v11, v3, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    aput v9, v1, v7

    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v9, v4, 0x0

    aget v9, v2, v9

    aget v8, v3, v8

    mul-float/2addr v9, v8

    add-int/lit8 v8, v4, 0x1

    aget v8, v2, v8

    const/16 v10, 0x9

    aget v10, v3, v10

    mul-float/2addr v8, v10

    add-float/2addr v9, v8

    add-int/lit8 v8, v4, 0x2

    aget v8, v2, v8

    const/16 v10, 0xe

    aget v10, v3, v10

    mul-float/2addr v8, v10

    add-float/2addr v9, v8

    add-int/lit8 v8, v4, 0x3

    aget v8, v2, v8

    const/16 v10, 0x13

    aget v10, v3, v10

    mul-float/2addr v8, v10

    add-float/2addr v9, v8

    add-int/lit8 v8, v4, 0x4

    aget v8, v2, v8

    add-float/2addr v9, v8

    aput v9, v1, v7

    add-int/lit8 v4, v4, 0x5

    goto :goto_2

    :cond_3
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    if-eq v1, v4, :cond_4

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    invoke-static {v1, v5, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    return-void
.end method

.method public setRGB2YUV()V
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x0

    const v2, 0x3e991687    # 0.299f

    aput v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x3f1645a2    # 0.587f

    aput v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x3de978d5    # 0.114f

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, -0x41d335d2    # -0.16874f

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, -0x41566517    # -0.33126f

    aput v2, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0xb

    const v2, -0x4129a177    # -0.41869f

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, -0x42597a25    # -0.08131f

    aput v2, v0, v1

    return-void
.end method

.method public setRotate(IF)V
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    float-to-double v0, p2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/16 v4, 0xc

    const/4 v5, 0x6

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    :pswitch_0
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v2, v7, v5

    aput v2, v4, v6

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v5, 0x1

    aput v3, v4, v5

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v5, 0x5

    neg-float v6, v3

    aput v6, v4, v5

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v2, v7, v4

    aput v2, v5, v6

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v5, 0x2

    neg-float v6, v3

    aput v6, v4, v5

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v5, 0xa

    aput v3, v4, v5

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    aput v2, v7, v4

    aput v2, v6, v5

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v5, 0x7

    aput v3, v4, v5

    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v5, 0xb

    neg-float v6, v3

    aput v6, v4, v5

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSaturation(F)V
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const v2, 0x3e5a1cac    # 0.213f

    mul-float/2addr v2, v1

    const v3, 0x3f370a3d    # 0.715f

    mul-float/2addr v3, v1

    const v4, 0x3d9374bc    # 0.072f

    mul-float/2addr v4, v1

    add-float v5, v2, p1

    const/4 v6, 0x0

    aput v5, v0, v6

    const/4 v5, 0x1

    aput v3, v0, v5

    const/4 v5, 0x2

    aput v4, v0, v5

    const/4 v5, 0x5

    aput v2, v0, v5

    add-float v5, v3, p1

    const/4 v6, 0x6

    aput v5, v0, v6

    const/4 v5, 0x7

    aput v4, v0, v5

    const/16 v5, 0xa

    aput v2, v0, v5

    const/16 v5, 0xb

    aput v3, v0, v5

    add-float v5, v4, p1

    const/16 v6, 0xc

    aput v5, v0, v6

    return-void
.end method

.method public setScale(FFFF)V
    .locals 3

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/16 v1, 0x13

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x0

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x6

    aput p2, v0, v1

    const/16 v1, 0xc

    aput p3, v0, v1

    const/16 v1, 0x12

    aput p4, v0, v1

    return-void
.end method

.method public setYUV2RGB()V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    const/4 v1, 0x2

    const v2, 0x3fb374bc    # 1.402f

    aput v2, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v2, 0x6

    const v3, -0x414fcce2    # -0.34414f

    aput v3, v0, v2

    const/4 v2, 0x7

    const v3, -0x40c92e1f    # -0.71414f

    aput v3, v0, v2

    const/16 v2, 0xa

    aput v1, v0, v2

    const/16 v1, 0xb

    const v2, 0x3fe2d0e5    # 1.772f

    aput v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method
