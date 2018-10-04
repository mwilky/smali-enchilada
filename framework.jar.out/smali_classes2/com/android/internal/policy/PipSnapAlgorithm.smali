.class public Lcom/android/internal/policy/PipSnapAlgorithm;
.super Ljava/lang/Object;
.source "PipSnapAlgorithm.java"


# static fields
.field private static final CORNER_MAGNET_THRESHOLD:F = 0.3f

.field private static final SNAP_MODE_CORNERS_AND_SIDES:I = 0x1

.field private static final SNAP_MODE_CORNERS_ONLY:I = 0x0

.field private static final SNAP_MODE_EDGE:I = 0x2

.field private static final SNAP_MODE_EDGE_MAGNET_CORNERS:I = 0x3

.field private static final SNAP_MODE_LONG_EDGE_MAGNET_CORNERS:I = 0x4


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultSizePercent:F

.field private final mDefaultSnapMode:I

.field private final mFlingDeceleration:I

.field private mIsMinimized:Z

.field private final mMaxAspectRatioForMinSize:F

.field private final mMinAspectRatioForMinSize:F

.field private final mMinimizedVisibleSize:I

.field private mOrientation:I

.field private final mSnapGravities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSnapMode:I

    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    const v1, 0x1050166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    const v1, 0x1050049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSizePercent:F

    const v1, 0x1050047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    iput v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinAspectRatioForMinSize:F

    iget-object v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mFlingDeceleration:I

    invoke-virtual {p0}, Lcom/android/internal/policy/PipSnapAlgorithm;->onConfigurationChanged()V

    return-void
.end method

.method private calculateSnapTargets()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private distanceToPoint(Landroid/graphics/Point;II)F
    .locals 2

    iget v0, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p3

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    return v0
.end method

.method private findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p3, v3

    invoke-direct {p0, v4, p1, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->distanceToPoint(Landroid/graphics/Point;II)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_0

    move-object v0, v4

    move v1, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private findX(FFF)I
    .locals 1

    sub-float v0, p3, p2

    div-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private findY(FFF)I
    .locals 1

    mul-float v0, p1, p3

    add-float/2addr v0, p2

    float-to-int v0, v0

    return v0
.end method

.method private snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    if-eqz v2, :cond_0

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void

    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    iget v6, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    :cond_1
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_0
    goto :goto_1

    :cond_2
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_1
    if-ne v6, v2, :cond_3

    iget v7, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, v7, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    :cond_3
    if-ne v6, v3, :cond_4

    iget v7, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v0, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    :cond_4
    if-ne v6, v4, :cond_5

    iget v7, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3, v7, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    :cond_5
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v0, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_2
    return-void
.end method


# virtual methods
.method public applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p4, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    iget v0, p3, Landroid/graphics/Point;->x:I

    iget v1, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    return-void
.end method

.method public applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v2, p3, v1

    if-gez v2, :cond_1

    sub-float/2addr p3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_1
    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v3, p3, v2

    if-gez v3, :cond_2

    sub-float/2addr p3, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-float/2addr v0, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_2
    sub-float/2addr p3, v2

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-float/2addr v0, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v1, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSnapMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mMinimizedVisibleSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mIsMinimized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v6, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v5, v7

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v3, v4, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v10, v3

    iget v3, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eq v3, v5, :cond_3

    iget v3, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    iget v3, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    invoke-direct {v0, v2, v1, v10}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v3

    iget-object v3, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v12, v3, [Landroid/graphics/Point;

    nop

    :goto_0
    move v13, v4

    iget-object v3, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v13, v3, :cond_2

    iget-object v3, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v11

    invoke-static/range {v3 .. v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Point;

    iget v4, v11, Landroid/graphics/Rect;->left:I

    iget v5, v11, Landroid/graphics/Rect;->top:I

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v12, v13

    add-int/lit8 v4, v13, 0x1

    goto :goto_0

    :cond_2
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v3, v4, v12}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_4

    :cond_3
    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/graphics/Point;

    nop

    :goto_2
    iget-object v7, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    iget-object v7, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v14, v6

    move-object/from16 v17, v3

    invoke-static/range {v11 .. v17}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/Point;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v4, v7, v5}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v4, v7, v8}, Lcom/android/internal/policy/PipSnapAlgorithm;->distanceToPoint(Landroid/graphics/Point;II)F

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3e99999a    # 0.3f

    mul-float/2addr v8, v9

    cmpg-float v9, v7, v8

    if-gez v9, :cond_5

    iget v9, v4, Landroid/graphics/Point;->x:I

    iget v11, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v9, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_3

    :cond_5
    invoke-direct {v0, v2, v1, v10}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_3
    nop

    :goto_4
    return-object v10
.end method

.method public findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/policy/PipSnapAlgorithm;->getEdgeIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    return-object v2
.end method

.method public getEdgeIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    iget v6, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    div-float v10, v4, v3

    int-to-float v11, v9

    int-to-float v12, v8

    mul-float/2addr v12, v10

    sub-float/2addr v11, v12

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    const/4 v14, 0x0

    cmpl-float v15, v3, v14

    if-lez v15, :cond_1

    iget v15, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    iget v15, v2, Landroid/graphics/Rect;->left:I

    :goto_1
    iput v15, v12, Landroid/graphics/Point;->x:I

    iget v15, v12, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    invoke-direct {v0, v10, v11, v15}, Lcom/android/internal/policy/PipSnapAlgorithm;->findY(FFF)I

    move-result v15

    iput v15, v12, Landroid/graphics/Point;->y:I

    cmpl-float v15, v4, v14

    if-lez v15, :cond_2

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_2
    iget v15, v2, Landroid/graphics/Rect;->top:I

    :goto_2
    iput v15, v13, Landroid/graphics/Point;->y:I

    iget v15, v13, Landroid/graphics/Point;->y:I

    int-to-float v15, v15

    invoke-direct {v0, v10, v11, v15}, Lcom/android/internal/policy/PipSnapAlgorithm;->findX(FFF)I

    move-result v15

    iput v15, v13, Landroid/graphics/Point;->x:I

    if-eqz v6, :cond_4

    cmpl-float v15, v3, v14

    if-lez v15, :cond_3

    iget v15, v2, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v15, v7

    goto :goto_3

    :cond_3
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v15, v2, Landroid/graphics/Rect;->left:I

    sub-int v15, v7, v15

    :goto_3
    move v7, v15

    goto :goto_4

    :cond_4
    cmpl-float v7, v4, v14

    if-lez v7, :cond_5

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v15, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v15

    goto :goto_4

    :cond_5
    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v15, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v15

    :goto_4
    const-wide/16 v17, 0x0

    if-lez v7, :cond_e

    if-eqz v6, :cond_6

    iget v15, v5, Landroid/graphics/Point;->y:I

    goto :goto_5

    :cond_6
    iget v15, v5, Landroid/graphics/Point;->x:I

    :goto_5
    if-eqz v6, :cond_7

    iget v14, v13, Landroid/graphics/Point;->y:I

    goto :goto_6

    :cond_7
    iget v14, v13, Landroid/graphics/Point;->x:I

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    if-ge v15, v5, :cond_8

    if-lt v14, v5, :cond_9

    :cond_8
    if-le v15, v5, :cond_e

    if-le v14, v5, :cond_e

    :cond_9
    if-eqz v6, :cond_a

    move/from16 v19, v10

    move/from16 v20, v11

    float-to-double v10, v3

    goto :goto_7

    :cond_a
    move/from16 v19, v10

    move/from16 v20, v11

    float-to-double v10, v4

    :goto_7
    move/from16 v22, v14

    move/from16 v21, v15

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double v10, v17, v10

    double-to-int v10, v10

    iget v11, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mFlingDeceleration:I

    const/4 v14, 0x2

    mul-int/2addr v11, v14

    div-int/2addr v10, v11

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-eqz v6, :cond_c

    iget v11, v1, Landroid/graphics/Rect;->left:I

    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-lez v14, :cond_b

    move v14, v10

    goto :goto_8

    :cond_b
    neg-int v14, v10

    :goto_8
    add-int/2addr v11, v14

    iput v11, v13, Landroid/graphics/Point;->x:I

    goto :goto_a

    :cond_c
    iget v11, v1, Landroid/graphics/Rect;->top:I

    const/4 v14, 0x0

    cmpl-float v14, v4, v14

    if-lez v14, :cond_d

    move v14, v10

    goto :goto_9

    :cond_d
    neg-int v14, v10

    :goto_9
    add-int/2addr v11, v14

    iput v11, v13, Landroid/graphics/Point;->y:I

    :goto_a
    return-object v13

    :cond_e
    move/from16 v19, v10

    move/from16 v20, v11

    iget v5, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v8

    int-to-double v10, v5

    iget v5, v12, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v9

    int-to-double v14, v5

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    iget v5, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v8

    int-to-double v14, v5

    iget v5, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v9

    int-to-double v0, v5

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    cmpl-double v5, v10, v17

    if-nez v5, :cond_f

    return-object v13

    :cond_f
    cmpl-double v5, v0, v17

    if-nez v5, :cond_10

    return-object v12

    :cond_10
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpl-double v5, v14, v16

    if-lez v5, :cond_11

    move-object v5, v13

    goto :goto_b

    :cond_11
    move-object v5, v12

    :goto_b
    return-object v5
.end method

.method public getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 3

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p4

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getSizeForAspectRatio(FFII)Landroid/util/Size;
    .locals 7

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSizePercent:F

    mul-float/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinAspectRatioForMinSize:F

    cmpg-float v2, p1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    int-to-float v4, v1

    mul-float/2addr v2, v4

    int-to-float v4, v1

    invoke-static {v2, v4}, Landroid/graphics/PointF;->length(FF)F

    move-result v4

    mul-float v5, v4, v4

    mul-float v6, p1, p1

    add-float/2addr v6, v3

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v3, v5

    int-to-float v5, v3

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    cmpg-float v2, p1, v3

    if-gtz v2, :cond_2

    move v2, v1

    int-to-float v3, v2

    div-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v1

    int-to-float v2, v3

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    :goto_1
    nop

    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v2, v3}, Landroid/util/Size;-><init>(II)V

    return-object v4
.end method

.method public getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-ne v3, v4, :cond_0

    return v1

    :cond_0
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v3, v4, :cond_1

    add-float/2addr v5, v2

    return v5

    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v3, v4, :cond_2

    const/high16 v3, 0x40000000    # 2.0f

    sub-float/2addr v5, v1

    add-float/2addr v3, v5

    return v3

    :cond_2
    const/high16 v3, 0x40400000    # 3.0f

    sub-float/2addr v5, v2

    add-float/2addr v3, v5

    return v3
.end method

.method public onConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const v1, 0x10e0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    invoke-direct {p0}, Lcom/android/internal/policy/PipSnapAlgorithm;->calculateSnapTargets()V

    return-void
.end method

.method public setMinimized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    return-void
.end method
