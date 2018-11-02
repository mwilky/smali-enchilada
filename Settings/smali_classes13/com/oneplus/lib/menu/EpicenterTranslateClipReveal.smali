.class public Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;
.super Landroid/transition/Visibility;
.source "EpicenterTranslateClipReveal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;,
        Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;,
        Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;
    }
.end annotation


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:epicenterReveal:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:epicenterReveal:clip"

.field private static final PROPNAME_TRANSLATE_X:Ljava/lang/String; = "android:epicenterReveal:translateX"

.field private static final PROPNAME_TRANSLATE_Y:Ljava/lang/String; = "android:epicenterReveal:translateY"

.field private static final PROPNAME_TRANSLATE_Z:Ljava/lang/String; = "android:epicenterReveal:translateZ"

.field private static final PROPNAME_Z:Ljava/lang/String; = "android:epicenterReveal:z"


# instance fields
.field private final mInterpolatorX:Landroid/animation/TimeInterpolator;

.field private final mInterpolatorY:Landroid/animation/TimeInterpolator;

.field private final mInterpolatorZ:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->EpicenterTranslateClipReveal:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lcom/oneplus/commonctrl/R$styleable;->EpicenterTranslateClipReveal_interpolatorX:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v3, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    :goto_0
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->EpicenterTranslateClipReveal_interpolatorY:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v4, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    :goto_1
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->EpicenterTranslateClipReveal_interpolatorZ:I

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v4, p0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 5

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:bounds"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateX"

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateY"

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateZ"

    invoke-virtual {v0}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:z"

    invoke-virtual {v0}, Landroid/view/View;->getZ()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:clip"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static createRectAnimator(Landroid/view/View;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;FLcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    new-instance v4, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateEvaluator;-><init>(Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$1;)V

    sget-object v5, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput p3, v7, v8

    const/4 v9, 0x1

    aput p6, v7, v9

    invoke-static {v0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    if-eqz v3, :cond_0

    invoke-virtual {v5, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    new-instance v7, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;

    const/16 v10, 0x78

    invoke-direct {v7, v10}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    new-array v10, v6, [Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    aput-object p1, v10, v8

    aput-object p4, v10, v9

    invoke-static {v0, v7, v4, v10}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    if-eqz v1, :cond_1

    invoke-virtual {v10, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1
    new-instance v11, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;

    const/16 v9, 0x79

    invoke-direct {v11, v9}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$StateProperty;-><init>(C)V

    move-object v9, v11

    new-array v11, v6, [Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    aput-object p2, v11, v8

    const/4 v12, 0x1

    aput-object p5, v11, v12

    invoke-static {v0, v9, v4, v11}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    if-eqz v2, :cond_2

    invoke-virtual {v11, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_2
    move-object/from16 v6, p7

    iget-object v8, v6, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:epicenterReveal:clip"

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    new-instance v8, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$1;

    invoke-direct {v8, v0, v1}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$1;-><init>(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v14, v1

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v13, 0x0

    aput-object v10, v1, v13

    const/4 v12, 0x1

    aput-object v11, v1, v12

    const/4 v12, 0x2

    aput-object v5, v1, v12

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:epicenterReveal:clip"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    return-object v1

    :cond_0
    return-object v0
.end method

.method private getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureEndValues(Landroid/transition/TransitionValues;)V

    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    if-nez v13, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:bounds"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/graphics/Rect;

    invoke-direct {v0, v14}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v11, v1

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v10, v1

    const/4 v1, 0x0

    iget-object v2, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:z"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v9, v1, v2

    invoke-virtual {v12, v11}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v12, v10}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v12, v9}, Landroid/view/View;->setTranslationZ(F)V

    iget-object v1, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:translateX"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iget-object v1, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:translateY"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v1, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:epicenterReveal:translateZ"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v16

    invoke-direct {v0, v13}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    new-instance v2, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    invoke-direct {v2, v3, v5, v11}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    new-instance v5, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    iget v3, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->right:I

    invoke-direct {v5, v3, v6, v8}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    new-instance v3, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    iget v6, v1, Landroid/graphics/Rect;->top:I

    move/from16 v17, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v6, v8, v10}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    new-instance v6, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    iget v8, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v18, v1

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v6, v8, v1, v7}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    iget-object v8, v0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    iget-object v1, v0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    move/from16 v19, v11

    iget-object v11, v0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    move-object/from16 v20, v1

    move-object v1, v12

    move-object/from16 v21, v4

    move v4, v9

    move/from16 v22, v7

    move/from16 v7, v16

    move-object/from16 v23, v8

    move-object v8, v13

    move/from16 v24, v9

    move-object/from16 v9, v23

    move/from16 v23, v10

    move-object/from16 v10, v20

    invoke-static/range {v1 .. v11}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;FLcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v13, p4

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    iget-object v2, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:bounds"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/graphics/Rect;

    invoke-direct {v0, v14}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v12, v2

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v11, v2

    const/4 v2, 0x0

    iget-object v3, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:epicenterReveal:z"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v16, v2, v3

    iget-object v2, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateX"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v10

    iget-object v2, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateY"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget-object v2, v13, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:epicenterReveal:translateZ"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v17

    invoke-direct {v0, v1}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->getBestRect(Landroid/transition/TransitionValues;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->getEpicenterOrCenter(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    move-object/from16 v2, p2

    invoke-virtual {v2, v8}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    new-instance v3, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    iget v4, v8, Landroid/graphics/Rect;->left:I

    iget v6, v8, Landroid/graphics/Rect;->right:I

    invoke-direct {v3, v4, v6, v10}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    new-instance v6, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    iget v4, v5, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    invoke-direct {v6, v4, v7, v12}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    new-instance v4, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    iget v7, v8, Landroid/graphics/Rect;->top:I

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v7, v1, v9}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    new-instance v7, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;

    iget v1, v5, Landroid/graphics/Rect;->top:I

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v7, v1, v2, v11}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;-><init>(IIF)V

    iget-object v1, v0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->mInterpolatorX:Landroid/animation/TimeInterpolator;

    iget-object v2, v0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->mInterpolatorY:Landroid/animation/TimeInterpolator;

    move/from16 v19, v12

    iget-object v12, v0, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->mInterpolatorZ:Landroid/animation/TimeInterpolator;

    move-object/from16 v18, v2

    move-object/from16 v2, p2

    move-object/from16 v20, v5

    move/from16 v5, v17

    move-object/from16 v21, v8

    move/from16 v8, v16

    move/from16 v22, v9

    move-object v9, v13

    move/from16 v23, v10

    move-object v10, v1

    move v1, v11

    move-object/from16 v11, v18

    move/from16 v18, v19

    invoke-static/range {v2 .. v12}, Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal;->createRectAnimator(Landroid/view/View;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;FLcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;Lcom/oneplus/lib/menu/EpicenterTranslateClipReveal$State;FLandroid/transition/TransitionValues;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;Landroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v2

    return-object v2
.end method
