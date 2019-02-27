.class public Landroid/util/Spline$LinearSpline;
.super Landroid/util/Spline;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Spline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinearSpline"
.end annotation


# instance fields
.field private final mM:[F

.field private final mX:[F

.field private final mY:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 6
    .param p1, "x"    # [F
    .param p2, "y"    # [F

    .line 246
    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    .line 247
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 251
    array-length v0, p1

    .line 252
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    .line 253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    .line 254
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    aget v4, p2, v1

    sub-float/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    aget v5, p1, v1

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    aput v3, v2, v1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v1    # "i":I
    :cond_0
    iput-object p1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    .line 257
    iput-object p2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    .line 258
    return-void

    .line 248
    .end local v0    # "N":I
    :cond_1
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

    .line 261
    iget-object v0, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public interpolate(F)F
    .locals 5
    .param p1, "x"    # F

    .line 267
    iget-object v0, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    array-length v0, v0

    .line 268
    .local v0, "n":I
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    return p1

    .line 271
    :cond_0
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    .line 272
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget v1, v1, v2

    return v1

    .line 274
    :cond_1
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    add-int/lit8 v3, v0, -0x1

    aget v1, v1, v3

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    .line 275
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    return v1

    .line 280
    :cond_2
    nop

    .local v2, "i":I
    :cond_3
    move v1, v2

    .line 281
    .end local v2    # "i":I
    .local v1, "i":I
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_4

    .line 282
    add-int/lit8 v2, v1, 0x1

    .line 283
    .end local v1    # "i":I
    .restart local v2    # "i":I
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-nez v1, :cond_3

    .line 284
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget v1, v1, v2

    return v1

    .line 287
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_4
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget v2, v2, v1

    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    aget v3, v3, v1

    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v4, v4, v1

    sub-float v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v0, "str":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    array-length v1, v1

    .line 294
    .local v1, "n":I
    const-string v2, "LinearSpline{["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 296
    if-eqz v2, :cond_0

    .line 297
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_0
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 300
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 301
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_1

    .line 302
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 304
    :cond_1
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    .end local v2    # "i":I
    :cond_2
    const-string v2, "]}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
