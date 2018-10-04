.class public Landroid/util/Spline$MonotoneCubicSpline;
.super Landroid/util/Spline;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Spline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonotoneCubicSpline"
.end annotation


# instance fields
.field private mM:[F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 11

    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_7

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    array-length v0, p1

    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [F

    new-array v2, v0, [F

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v0, -0x1

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    aget v5, p1, v5

    aget v7, p1, v4

    sub-float/2addr v5, v7

    cmpg-float v6, v5, v6

    if-lez v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    aget v6, p2, v6

    aget v7, p2, v4

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    aput v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "The control points must all have strictly increasing X values."

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    aget v4, v1, v3

    aput v4, v2, v3

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v4, -0x1

    aget v5, v1, v5

    aget v7, v1, v4

    add-float/2addr v5, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v5, v7

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v0, -0x2

    aget v5, v1, v5

    aput v5, v2, v4

    nop

    :goto_2
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_6

    aget v4, v1, v3

    cmpl-float v4, v4, v6

    if-nez v4, :cond_3

    aput v6, v2, v3

    add-int/lit8 v4, v3, 0x1

    aput v6, v2, v4

    goto :goto_3

    :cond_3
    aget v4, v2, v3

    aget v5, v1, v3

    div-float/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    aget v5, v2, v5

    aget v7, v1, v3

    div-float/2addr v5, v7

    cmpg-float v7, v4, v6

    if-ltz v7, :cond_5

    cmpg-float v7, v5, v6

    if-ltz v7, :cond_5

    float-to-double v7, v4

    float-to-double v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v9, v7, v8

    if-lez v9, :cond_4

    div-float/2addr v8, v7

    aget v9, v2, v3

    mul-float/2addr v9, v8

    aput v9, v2, v3

    add-int/lit8 v9, v3, 0x1

    aget v10, v2, v9

    mul-float/2addr v10, v8

    aput v10, v2, v9

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The control points must have monotonic Y values."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    iput-object p1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    iput-object p2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    iput-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCurve()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    iget-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public interpolate(F)F
    .locals 9

    iget-object v0, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    array-length v0, v0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    :cond_0
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v1, v1, v2

    return v1

    :cond_1
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v3, v0, -0x1

    aget v1, v1, v3

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    return v1

    :cond_2
    nop

    :cond_3
    move v1, v2

    iget-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v1, v1, v2

    return v1

    :cond_4
    iget-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v3, v3, v1

    sub-float/2addr v2, v3

    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v3, v3, v1

    sub-float v3, p1, v3

    div-float/2addr v3, v2

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v4, v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v5, v3

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    mul-float/2addr v4, v6

    iget-object v6, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    aget v6, v6, v1

    mul-float/2addr v6, v2

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    sub-float v6, v7, v3

    mul-float/2addr v4, v6

    sub-float v6, v7, v3

    mul-float/2addr v4, v6

    iget-object v6, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    add-int/lit8 v8, v1, 0x1

    aget v6, v6, v8

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v5, v3

    sub-float/2addr v8, v5

    mul-float/2addr v6, v8

    iget-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    add-int/lit8 v8, v1, 0x1

    aget v5, v5, v8

    mul-float/2addr v5, v2

    sub-float v7, v3, v7

    mul-float/2addr v5, v7

    add-float/2addr v6, v5

    mul-float/2addr v6, v3

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    array-length v1, v1

    const-string v2, "MonotoneCubicSpline{["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-eqz v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "]}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
