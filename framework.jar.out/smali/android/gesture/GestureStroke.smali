.class public Landroid/gesture/GestureStroke;
.super Ljava/lang/Object;
.source "GestureStroke.java"


# static fields
.field static final TOUCH_TOLERANCE:F = 3.0f


# instance fields
.field public final boundingBox:Landroid/graphics/RectF;

.field public final length:F

.field private mCachedPath:Landroid/graphics/Path;

.field public final points:[F

.field private final timestamps:[J


# direct methods
.method private constructor <init>(Landroid/graphics/RectF;F[F[J)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iput p2, p0, Landroid/gesture/GestureStroke;->length:F

    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    invoke-virtual {p4}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [F

    new-array v2, v0, [J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/gesture/GesturePoint;

    mul-int/lit8 v8, v6, 0x2

    iget v9, v7, Landroid/gesture/GesturePoint;->x:F

    aput v9, v1, v8

    mul-int/lit8 v8, v6, 0x2

    add-int/lit8 v8, v8, 0x1

    iget v9, v7, Landroid/gesture/GesturePoint;->y:F

    aput v9, v1, v8

    iget-wide v8, v7, Landroid/gesture/GesturePoint;->timestamp:J

    aput-wide v8, v2, v5

    if-nez v3, :cond_0

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    move-object v3, v8

    iget v8, v7, Landroid/gesture/GesturePoint;->y:F

    iput v8, v3, Landroid/graphics/RectF;->top:F

    iget v8, v7, Landroid/gesture/GesturePoint;->x:F

    iput v8, v3, Landroid/graphics/RectF;->left:F

    iget v8, v7, Landroid/gesture/GesturePoint;->x:F

    iput v8, v3, Landroid/graphics/RectF;->right:F

    iget v8, v7, Landroid/gesture/GesturePoint;->y:F

    iput v8, v3, Landroid/graphics/RectF;->bottom:F

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    float-to-double v8, v4

    iget v10, v7, Landroid/gesture/GesturePoint;->x:F

    add-int/lit8 v11, v6, -0x1

    mul-int/lit8 v11, v11, 0x2

    aget v11, v1, v11

    sub-float/2addr v10, v11

    float-to-double v10, v10

    iget v12, v7, Landroid/gesture/GesturePoint;->y:F

    add-int/lit8 v13, v6, -0x1

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    aget v13, v1, v13

    sub-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-float v4, v8

    iget v8, v7, Landroid/gesture/GesturePoint;->x:F

    iget v9, v7, Landroid/gesture/GesturePoint;->y:F

    invoke-virtual {v3, v8, v9}, Landroid/graphics/RectF;->union(FF)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    iput-object v1, p0, Landroid/gesture/GestureStroke;->points:[F

    iput-object v3, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iput v4, p0, Landroid/gesture/GestureStroke;->length:F

    return-void
.end method

.method static deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GestureStroke;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p0}, Landroid/gesture/GesturePoint;->deserialize(Ljava/io/DataInputStream;)Landroid/gesture/GesturePoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/gesture/GestureStroke;

    invoke-direct {v2, v1}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    return-object v2
.end method

.method private makePath()V
    .locals 13

    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    aget v6, v0, v5

    add-int/lit8 v7, v5, 0x1

    aget v7, v0, v7

    if-nez v2, :cond_0

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    move-object v2, v8

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move v3, v6

    move v4, v7

    goto :goto_1

    :cond_0
    sub-float v8, v6, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v9, v7, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v11, v8, v10

    if-gez v11, :cond_1

    cmpl-float v10, v9, v10

    if-ltz v10, :cond_2

    :cond_1
    add-float v10, v6, v3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float v12, v7, v4

    div-float/2addr v12, v11

    invoke-virtual {v2, v3, v4, v10, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v3, v6

    move v4, v7

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_3
    iput-object v2, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public clearPath()V
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Landroid/gesture/GestureStroke;

    iget-object v1, p0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iget v2, p0, Landroid/gesture/GestureStroke;->length:F

    iget-object v3, p0, Landroid/gesture/GestureStroke;->points:[F

    iget-object v4, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/gesture/GestureStroke;-><init>(Landroid/graphics/RectF;F[F[J)V

    return-object v0
.end method

.method public computeOrientedBoundingBox()Landroid/gesture/OrientedBoundingBox;
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    invoke-static {v0}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v0

    return-object v0
.end method

.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/gesture/GestureStroke;->makePath()V

    :cond_0
    iget-object v0, p0, Landroid/gesture/GestureStroke;->mCachedPath:Landroid/graphics/Path;

    return-object v0
.end method

.method serialize(Ljava/io/DataOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/gesture/GestureStroke;->points:[F

    iget-object v1, p0, Landroid/gesture/GestureStroke;->timestamps:[J

    iget-object v2, p0, Landroid/gesture/GestureStroke;->points:[F

    array-length v2, v2

    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    div-int/lit8 v4, v3, 0x2

    aget-wide v4, v1, v4

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toPath(FFI)Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    move-result-object v2

    iget-object v3, v0, Landroid/gesture/GestureStroke;->boundingBox:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-static {v2, v4, v5}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float v4, p1, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float v6, p2, v6

    cmpl-float v7, v4, v6

    if-lez v7, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    invoke-static {v2, v7, v7}, Landroid/gesture/GestureUtils;->scale([FFF)[F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v2

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_4

    aget v13, v2, v12

    add-int/lit8 v14, v12, 0x1

    aget v14, v2, v14

    if-nez v10, :cond_1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Path;->moveTo(FF)V

    move v8, v13

    move v9, v14

    move-object v10, v0

    goto :goto_2

    :cond_1
    sub-float v0, v13, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, v14, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v15, 0x40400000    # 3.0f

    cmpl-float v16, v0, v15

    if-gez v16, :cond_2

    cmpl-float v15, v1, v15

    if-ltz v15, :cond_3

    :cond_2
    add-float v15, v13, v8

    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v17, v0

    div-float v0, v15, v16

    add-float v15, v14, v9

    move/from16 v18, v1

    div-float v1, v15, v16

    invoke-virtual {v10, v8, v9, v0, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    move v0, v13

    move v1, v14

    move v8, v0

    move v9, v1

    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    goto :goto_1

    :cond_4
    return-object v10
.end method
