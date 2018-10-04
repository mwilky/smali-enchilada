.class public Landroid/transition/Crossfade;
.super Landroid/transition/Transition;
.source "Crossfade.java"


# static fields
.field public static final FADE_BEHAVIOR_CROSSFADE:I = 0x0

.field public static final FADE_BEHAVIOR_OUT_IN:I = 0x2

.field public static final FADE_BEHAVIOR_REVEAL:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Crossfade"

.field private static final PROPNAME_BITMAP:Ljava/lang/String; = "android:crossfade:bitmap"

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:crossfade:bounds"

.field private static final PROPNAME_DRAWABLE:Ljava/lang/String; = "android:crossfade:drawable"

.field public static final RESIZE_BEHAVIOR_NONE:I = 0x0

.field public static final RESIZE_BEHAVIOR_SCALE:I = 0x1

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;


# instance fields
.field private mFadeBehavior:I

.field private mResizeBehavior:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    iput v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    return-void
.end method

.method static synthetic access$000(Landroid/transition/Crossfade;)I
    .locals 1

    iget v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return v0
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 6

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:crossfade:bounds"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    instance-of v3, v0, Landroid/view/TextureView;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:crossfade:bitmap"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:crossfade:drawable"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 24

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const/4 v0, 0x0

    if-eqz v7, :cond_b

    if-nez v8, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v1, v6, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v10, 0x1

    if-eq v1, v10, :cond_1

    move v1, v10

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v11, v1

    iget-object v12, v8, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v13, v7, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v14, v8, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:crossfade:bounds"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/graphics/Rect;

    const-string v1, "android:crossfade:bounds"

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/graphics/Rect;

    const-string v1, "android:crossfade:bitmap"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/graphics/Bitmap;

    const-string v1, "android:crossfade:bitmap"

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/graphics/Bitmap;

    const-string v1, "android:crossfade:drawable"

    invoke-interface {v13, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    const-string v1, "android:crossfade:drawable"

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v16

    if-nez v16, :cond_a

    if-eqz v11, :cond_2

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    :goto_1
    iget v9, v6, Landroid/transition/Crossfade;->mFadeBehavior:I

    if-ne v9, v10, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    iget v9, v6, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    const-string v9, "alpha"

    move-object/from16 v18, v0

    const/4 v10, 0x3

    new-array v0, v10, [I

    fill-array-data v0, :array_0

    invoke-static {v2, v9, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object/from16 v18, v0

    const-string v0, "alpha"

    const/4 v9, 0x1

    new-array v10, v9, [I

    const/4 v9, 0x0

    aput v9, v10, v9

    invoke-static {v2, v0, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_2
    move-object v9, v0

    new-instance v0, Landroid/transition/Crossfade$1;

    invoke-direct {v0, v6, v12, v2}, Landroid/transition/Crossfade$1;-><init>(Landroid/transition/Crossfade;Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v9, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v0, 0x0

    iget v10, v6, Landroid/transition/Crossfade;->mFadeBehavior:I

    move-object/from16 v19, v0

    const/4 v0, 0x2

    if-ne v10, v0, :cond_5

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x3

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {v12, v0, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    goto :goto_3

    :cond_5
    iget v0, v6, Landroid/transition/Crossfade;->mFadeBehavior:I

    if-nez v0, :cond_6

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    move-object/from16 v20, v1

    const/4 v10, 0x2

    new-array v1, v10, [F

    fill-array-data v1, :array_2

    invoke-static {v12, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_3

    :cond_6
    move-object/from16 v20, v1

    :goto_3
    new-instance v10, Landroid/transition/Crossfade$2;

    move-object/from16 v16, v18

    move-object v0, v10

    move-object/from16 v21, v20

    move-object v1, v6

    move-object/from16 v22, v2

    move v2, v11

    move-object/from16 v17, v3

    move-object v3, v12

    move-object/from16 v18, v4

    move-object/from16 v4, v22

    move-object v7, v5

    move-object/from16 v5, v21

    invoke-direct/range {v0 .. v5}, Landroid/transition/Crossfade$2;-><init>(Landroid/transition/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v9, v10}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz v19, :cond_7

    new-array v2, v1, [Landroid/animation/Animator;

    aput-object v19, v2, v3

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_7
    iget v2, v6, Landroid/transition/Crossfade;->mResizeBehavior:I

    if-ne v2, v1, :cond_9

    invoke-virtual {v15, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "bounds"

    sget-object v3, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v5, v4

    aput-object v7, v5, v1

    move-object/from16 v10, v22

    invoke-static {v10, v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v3, v1, [Landroid/animation/Animator;

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget v3, v6, Landroid/transition/Crossfade;->mResizeBehavior:I

    if-ne v3, v1, :cond_8

    const-string v3, "bounds"

    sget-object v5, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v15, v1, v4

    const/4 v4, 0x1

    aput-object v7, v1, v4

    move-object/from16 v4, v21

    invoke-static {v4, v3, v5, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v3, v5

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    :cond_8
    move-object/from16 v4, v21

    goto :goto_4

    :cond_9
    move-object/from16 v4, v21

    move-object/from16 v10, v22

    :goto_4
    return-object v0

    :cond_a
    move-object v10, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object v7, v5

    move-object v4, v1

    return-object v0

    :cond_b
    :goto_5
    return-object v0

    nop

    :array_0
    .array-data 4
        0xff
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getFadeBehavior()I
    .locals 1

    iget v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return v0
.end method

.method public getResizeBehavior()I
    .locals 1

    iget v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    return v0
.end method

.method public setFadeBehavior(I)Landroid/transition/Crossfade;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    :cond_0
    return-object p0
.end method

.method public setResizeBehavior(I)Landroid/transition/Crossfade;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    :cond_0
    return-object p0
.end method
