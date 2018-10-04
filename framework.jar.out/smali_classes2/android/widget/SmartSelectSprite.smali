.class final Landroid/widget/SmartSelectSprite;
.super Ljava/lang/Object;
.source "SmartSelectSprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SmartSelectSprite$RectangleList;,
        Landroid/widget/SmartSelectSprite$RoundedRectangleShape;,
        Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;
    }
.end annotation


# static fields
.field private static final CORNER_DURATION:I = 0x32

.field private static final EXPAND_DURATION:I = 0x12c

.field static final RECTANGLE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveAnimator:Landroid/animation/Animator;

.field private final mCornerInterpolator:Landroid/view/animation/Interpolator;

.field private mExistingDrawable:Landroid/graphics/drawable/Drawable;

.field private mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

.field private final mExpandInterpolator:Landroid/view/animation/Interpolator;

.field private final mFillColor:I

.field private final mInvalidator:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/widget/-$$Lambda$SmartSelectSprite$c8eqlh2kO_X0luLU2BexwK921WA;->INSTANCE:Landroid/widget/-$$Lambda$SmartSelectSprite$c8eqlh2kO_X0luLU2BexwK921WA;

    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    sget-object v1, Landroid/widget/-$$Lambda$SmartSelectSprite$mdkXIT1_UNlJQMaziE_E815aIKE;->INSTANCE:Landroid/widget/-$$Lambda$SmartSelectSprite$mdkXIT1_UNlJQMaziE_E815aIKE;

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Landroid/widget/SmartSelectSprite;->RECTANGLE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExpandInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mCornerInterpolator:Landroid/view/animation/Interpolator;

    iput p2, p0, Landroid/widget/SmartSelectSprite;->mFillColor:I

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$700(Landroid/widget/SmartSelectSprite;)Landroid/widget/SmartSelectSprite$RectangleList;
    .locals 1

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/SmartSelectSprite;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static contains(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z
    .locals 3

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    iget v2, p0, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private createAnimator(Landroid/widget/SmartSelectSprite$RectangleList;FFLjava/util/List;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)Landroid/animation/Animator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SmartSelectSprite$RectangleList;",
            "FF",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    const-string/jumbo v0, "rightBoundary"

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    invoke-static {p1}, Landroid/widget/SmartSelectSprite$RectangleList;->access$600(Landroid/widget/SmartSelectSprite$RectangleList;)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v2, v5

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v2, "leftBoundary"

    new-array v4, v1, [F

    aput p2, v4, v3

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {p1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, p5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Landroid/widget/SmartSelectSprite;->mExpandInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Landroid/widget/SmartSelectSprite;->mExpandInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v4, p4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v7, v1, [Landroid/animation/Animator;

    aput-object v2, v7, v3

    aput-object v0, v7, v5

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v6, v1, v3

    aput-object v4, v1, v5

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-direct {p0, v7, p6}, Landroid/widget/SmartSelectSprite;->setUpAnimatorListener(Landroid/animation/Animator;Ljava/lang/Runnable;)V

    return-object v7
.end method

.method private createCornerAnimator(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;
    .locals 4

    const-string/jumbo v0, "roundRatio"

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {p1}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;->getRoundRatio()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Landroid/widget/SmartSelectSprite;->mCornerInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private static generateDirections(Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;Ljava/util/List;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v1, -0x1

    const/4 v5, -0x1

    if-ge v3, v4, :cond_0

    aput v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    aput v2, v0, v1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    aput v5, v0, v1

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_3

    aput v4, v0, v1

    goto :goto_1

    :cond_3
    aput v2, v0, v1

    :goto_1
    add-int/lit8 v2, v1, 0x1

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public static synthetic lambda$startAnimation$2(Landroid/widget/SmartSelectSprite;Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/graphics/RectF;)D
    .locals 2

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v0, v0

    return-wide v0
.end method

.method static synthetic lambda$static$1(Landroid/graphics/RectF;)D
    .locals 2

    iget v0, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    return-wide v0
.end method

.method private removeExistingDrawables()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mInvalidator:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private setUpAnimatorListener(Landroid/animation/Animator;Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Landroid/widget/SmartSelectSprite$1;

    invoke-direct {v0, p0, p2}, Landroid/widget/SmartSelectSprite$1;-><init>(Landroid/widget/SmartSelectSprite;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    invoke-direct {p0}, Landroid/widget/SmartSelectSprite;->removeExistingDrawables()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public isAnimationActive()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startAnimation(Landroid/graphics/PointF;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SmartSelectSprite;->cancelAnimation()V

    new-instance v10, Landroid/widget/-$$Lambda$SmartSelectSprite$2pck5xTffRWoiD4l_tkO_IIf5iM;

    invoke-direct {v10, v7}, Landroid/widget/-$$Lambda$SmartSelectSprite$2pck5xTffRWoiD4l_tkO_IIf5iM;-><init>(Landroid/widget/SmartSelectSprite;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;

    invoke-virtual {v3}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getRectangle()Landroid/graphics/RectF;

    move-result-object v4

    invoke-static {v4, v8}, Landroid/widget/SmartSelectSprite;->contains(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    int-to-float v5, v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v1, v5

    goto :goto_0

    :cond_1
    :goto_1
    move-object v14, v0

    if-eqz v14, :cond_4

    int-to-float v0, v1

    iget v2, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getRectangle()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v15, v0

    nop

    invoke-static {v14, v9}, Landroid/widget/SmartSelectSprite;->generateDirections(Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;Ljava/util/List;)[I

    move-result-object v16

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x0

    if-ge v1, v11, :cond_3

    nop

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;

    invoke-virtual {v3}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getRectangle()Landroid/graphics/RectF;

    move-result-object v4

    new-instance v5, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;

    aget v6, v16, v1

    invoke-virtual {v3}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;->getTextSelectionLayout()I

    move-result v17

    if-nez v17, :cond_2

    const/16 v17, 0x1

    move/from16 v0, v17

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    invoke-direct {v5, v4, v6, v0, v2}, Landroid/widget/SmartSelectSprite$RoundedRectangleShape;-><init>(Landroid/graphics/RectF;IZLandroid/widget/SmartSelectSprite$1;)V

    move-object v0, v5

    invoke-direct {v7, v0, v10}, Landroid/widget/SmartSelectSprite;->createCornerAnimator(Landroid/widget/SmartSelectSprite$RoundedRectangleShape;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/widget/SmartSelectSprite$RectangleList;

    invoke-direct {v0, v12, v2}, Landroid/widget/SmartSelectSprite$RectangleList;-><init>(Ljava/util/List;Landroid/widget/SmartSelectSprite$1;)V

    move-object v6, v0

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget v0, v7, Landroid/widget/SmartSelectSprite;->mFillColor:I

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v6, v7, Landroid/widget/SmartSelectSprite;->mExistingRectangleList:Landroid/widget/SmartSelectSprite$RectangleList;

    iput-object v5, v7, Landroid/widget/SmartSelectSprite;->mExistingDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float v2, v15

    int-to-float v3, v15

    move-object v0, v7

    move-object v1, v6

    move-object/from16 v17, v4

    move-object v4, v13

    move-object/from16 v18, v5

    move-object v5, v10

    move-object/from16 v19, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/SmartSelectSprite;->createAnimator(Landroid/widget/SmartSelectSprite$RectangleList;FFLjava/util/List;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Ljava/lang/Runnable;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, v7, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    iget-object v0, v7, Landroid/widget/SmartSelectSprite;->mActiveAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Center point is not inside any of the rectangles!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
