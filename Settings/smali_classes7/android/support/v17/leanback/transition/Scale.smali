.class Landroid/support/v17/leanback/transition/Scale;
.super Landroid/transition/Transition;
.source "Scale.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation


# static fields
.field private static final PROPNAME_SCALE:Ljava/lang/String; = "android:leanback:scale"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:leanback:scale"

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/transition/Scale;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/transition/Scale;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 5

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:leanback:scale"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:leanback:scale"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Landroid/support/v17/leanback/transition/Scale$1;

    invoke-direct {v4, p0, v2}, Landroid/support/v17/leanback/transition/Scale$1;-><init>(Landroid/support/v17/leanback/transition/Scale;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v3

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
