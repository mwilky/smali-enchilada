.class public final Landroid/support/v17/leanback/transition/TransitionHelper;
.super Ljava/lang/Object;
.source "TransitionHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;
    }
.end annotation


# static fields
.field public static final FADE_IN:I = 0x1

.field public static final FADE_OUT:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSharedElement(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_0
    return-void
.end method

.method public static addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method public static addTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/transition/TransitionSet;

    move-object v1, p1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_0
    return-void
.end method

.method public static addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    new-instance v1, Landroid/support/v17/leanback/transition/TransitionHelper$1;

    invoke-direct {v1, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$1;-><init>(Landroid/support/v17/leanback/transition/TransitionListener;)V

    iput-object v1, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    check-cast v1, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    iget-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public static createAutoTransition()Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createChangeBounds(Z)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v17/leanback/transition/CustomChangeBounds;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/CustomChangeBounds;-><init>()V

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/transition/CustomChangeBounds;->setReparent(Z)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createChangeTransform()Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/transition/ChangeTransform;

    invoke-direct {v0}, Landroid/transition/ChangeTransform;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createDefaultInterpolator(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x10c000f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createFadeAndShortSlide(I)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createFadeAndShortSlide(IF)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->setDistance(F)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createFadeTransition(I)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0, p0}, Landroid/transition/Fade;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createScale()Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/transition/ChangeTransform;

    invoke-direct {v0}, Landroid/transition/ChangeTransform;-><init>()V

    return-object v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v17/leanback/transition/Scale;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/Scale;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/transition/Scene;

    invoke-direct {v0, p0}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    invoke-virtual {v0, p1}, Landroid/transition/Scene;->setEnterAction(Ljava/lang/Runnable;)V

    return-object v0

    :cond_0
    return-object p1
.end method

.method public static createSlide(I)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat;-><init>()V

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/transition/SlideKitkat;->setSlideEdge(I)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createTransitionSet(Z)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static exclude(Ljava/lang/Object;IZ)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method public static exclude(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method public static excludeChildren(Ljava/lang/Object;IZ)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeChildren(IZ)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method public static excludeChildren(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method public static getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getExitTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getReenterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSharedElementEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSharedElementExitTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSharedElementReenterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getSharedElementReenterTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static include(Ljava/lang/Object;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method public static include(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method public static loadTransition(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    iget-object v1, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    check-cast v1, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    const/4 v1, 0x0

    iput-object v1, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p0

    check-cast v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    iget-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static runTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/transition/Scene;

    move-object v1, p1

    check-cast v1, Landroid/transition/Transition;

    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;Landroid/transition/Transition;)V

    goto :goto_2

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iget-object v2, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-virtual {v3, p1}, Landroid/support/v17/leanback/transition/TransitionListener;->onTransitionStart(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_3

    iget-object v4, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/transition/TransitionListener;->onTransitionEnd(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public static setChangeBoundsDefaultStartDelay(Ljava/lang/Object;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/support/v17/leanback/transition/CustomChangeBounds;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/transition/CustomChangeBounds;->setDefaultStartDelay(I)V

    :cond_0
    return-void
.end method

.method public static setChangeBoundsStartDelay(Ljava/lang/Object;II)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/support/v17/leanback/transition/CustomChangeBounds;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/transition/CustomChangeBounds;->setStartDelay(II)V

    :cond_0
    return-void
.end method

.method public static setChangeBoundsStartDelay(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/support/v17/leanback/transition/CustomChangeBounds;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/transition/CustomChangeBounds;->setStartDelay(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static setChangeBoundsStartDelay(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/support/v17/leanback/transition/CustomChangeBounds;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/transition/CustomChangeBounds;->setStartDelay(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static setDuration(Ljava/lang/Object;J)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method public static setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setEnterTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public static setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public static setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    if-nez p1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    new-instance v1, Landroid/support/v17/leanback/transition/TransitionHelper$2;

    invoke-direct {v1, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$2;-><init>(Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setExitTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setExitTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public static setInterpolator(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    move-object v1, p1

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method public static setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public static setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public static setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public static setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSharedElementReturnTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public static setStartDelay(Ljava/lang/Object;J)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method public static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    :cond_0
    return-void
.end method

.method public static systemSupportsEntranceTransitions()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
