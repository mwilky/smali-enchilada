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

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    return-void
.end method

.method public static addSharedElement(Landroid/app/FragmentTransaction;Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p0, "ft"    # Landroid/app/FragmentTransaction;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionName"    # Ljava/lang/String;

    .line 418
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 419
    invoke-virtual {p0, p1, p2}, Landroid/app/FragmentTransaction;->addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 421
    :cond_0
    return-void
.end method

.method public static addTarget(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;

    .line 377
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 378
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 380
    :cond_0
    return-void
.end method

.method public static addTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "transitionSet"    # Ljava/lang/Object;
    .param p1, "transition"    # Ljava/lang/Object;

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 224
    move-object v0, p0

    check-cast v0, Landroid/transition/TransitionSet;

    move-object v1, p1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 226
    :cond_0
    return-void
.end method

.method public static addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 2
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "listener"    # Landroid/support/v17/leanback/transition/TransitionListener;

    .line 291
    if-nez p1, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 295
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    .line 296
    .local v0, "t":Landroid/transition/Transition;
    new-instance v1, Landroid/support/v17/leanback/transition/TransitionHelper$1;

    invoke-direct {v1, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$1;-><init>(Landroid/support/v17/leanback/transition/TransitionListener;)V

    iput-object v1, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    .line 322
    iget-object v1, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    check-cast v1, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 323
    .end local v0    # "t":Landroid/transition/Transition;
    goto :goto_0

    .line 324
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    .line 325
    .local v0, "stub":Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;
    iget-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    .line 328
    :cond_2
    iget-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v0    # "stub":Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;
    :goto_0
    return-void
.end method

.method public static beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "transitionObject"    # Ljava/lang/Object;

    .line 440
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 441
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    .line 442
    .local v0, "transition":Landroid/transition/Transition;
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 444
    .end local v0    # "transition":Landroid/transition/Transition;
    :cond_0
    return-void
.end method

.method public static createAutoTransition()Ljava/lang/Object;
    .locals 2

    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 278
    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    return-object v0

    .line 280
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createChangeBounds(Z)Ljava/lang/Object;
    .locals 2
    .param p0, "reparent"    # Z

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 154
    new-instance v0, Landroid/support/v17/leanback/transition/CustomChangeBounds;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/CustomChangeBounds;-><init>()V

    .line 155
    .local v0, "changeBounds":Landroid/support/v17/leanback/transition/CustomChangeBounds;
    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/transition/CustomChangeBounds;->setReparent(Z)V

    .line 156
    return-object v0

    .line 158
    .end local v0    # "changeBounds":Landroid/support/v17/leanback/transition/CustomChangeBounds;
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createChangeTransform()Ljava/lang/Object;
    .locals 2

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 163
    new-instance v0, Landroid/transition/ChangeTransform;

    invoke-direct {v0}, Landroid/transition/ChangeTransform;-><init>()V

    return-object v0

    .line 165
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createDefaultInterpolator(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 383
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 384
    const v0, 0x10c000f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

    .line 387
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createFadeAndShortSlide(I)Ljava/lang/Object;
    .locals 2
    .param p0, "edge"    # I

    .line 424
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 425
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;-><init>(I)V

    return-object v0

    .line 427
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createFadeAndShortSlide(IF)Ljava/lang/Object;
    .locals 2
    .param p0, "edge"    # I
    .param p1, "distance"    # F

    .line 431
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 432
    new-instance v0, Landroid/support/v17/leanback/transition/FadeAndShortSlide;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;-><init>(I)V

    .line 433
    .local v0, "slide":Landroid/support/v17/leanback/transition/FadeAndShortSlide;
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/transition/FadeAndShortSlide;->setDistance(F)V

    .line 434
    return-object v0

    .line 436
    .end local v0    # "slide":Landroid/support/v17/leanback/transition/FadeAndShortSlide;
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createFadeTransition(I)Ljava/lang/Object;
    .locals 2
    .param p0, "fadeMode"    # I

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 285
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0, p0}, Landroid/transition/Fade;-><init>(I)V

    return-object v0

    .line 287
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createScale()Ljava/lang/Object;
    .locals 2

    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 214
    new-instance v0, Landroid/transition/ChangeTransform;

    invoke-direct {v0}, Landroid/transition/ChangeTransform;-><init>()V

    return-object v0

    .line 216
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 217
    new-instance v0, Landroid/support/v17/leanback/transition/Scale;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/Scale;-><init>()V

    return-object v0

    .line 219
    :cond_1
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 2
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 145
    new-instance v0, Landroid/transition/Scene;

    invoke-direct {v0, p0}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;)V

    .line 146
    .local v0, "scene":Landroid/transition/Scene;
    invoke-virtual {v0, p1}, Landroid/transition/Scene;->setEnterAction(Ljava/lang/Runnable;)V

    .line 147
    return-object v0

    .line 149
    .end local v0    # "scene":Landroid/transition/Scene;
    :cond_0
    return-object p1
.end method

.method public static createSlide(I)Ljava/lang/Object;
    .locals 2
    .param p0, "slideEdge"    # I

    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 205
    new-instance v0, Landroid/support/v17/leanback/transition/SlideKitkat;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/SlideKitkat;-><init>()V

    .line 206
    .local v0, "slide":Landroid/support/v17/leanback/transition/SlideKitkat;
    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/transition/SlideKitkat;->setSlideEdge(I)V

    .line 207
    return-object v0

    .line 209
    .end local v0    # "slide":Landroid/support/v17/leanback/transition/SlideKitkat;
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static createTransitionSet(Z)Ljava/lang/Object;
    .locals 2
    .param p0, "sequential"    # Z

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 195
    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    .line 196
    .local v0, "set":Landroid/transition/TransitionSet;
    invoke-virtual {v0, p0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 198
    return-object v0

    .line 200
    .end local v0    # "set":Landroid/transition/TransitionSet;
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static exclude(Ljava/lang/Object;IZ)V
    .locals 2
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 230
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(IZ)Landroid/transition/Transition;

    .line 232
    :cond_0
    return-void
.end method

.method public static exclude(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 2
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 236
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 238
    :cond_0
    return-void
.end method

.method public static excludeChildren(Ljava/lang/Object;IZ)V
    .locals 2
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 242
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeChildren(IZ)Landroid/transition/Transition;

    .line 244
    :cond_0
    return-void
.end method

.method public static excludeChildren(Ljava/lang/Object;Landroid/view/View;Z)V
    .locals 2
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 248
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 250
    :cond_0
    return-void
.end method

.method public static getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/view/Window;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getExitTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/view/Window;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 133
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getReenterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/view/Window;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/view/Window;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSharedElementEnterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSharedElementExitTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/view/Window;->getSharedElementExitTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSharedElementReenterTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/view/Window;->getSharedElementReenterTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/view/Window;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static include(Ljava/lang/Object;I)V
    .locals 2
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "targetId"    # I

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 254
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->addTarget(I)Landroid/transition/Transition;

    .line 256
    :cond_0
    return-void
.end method

.method public static include(Ljava/lang/Object;Landroid/view/View;)V
    .locals 2
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "targetView"    # Landroid/view/View;

    .line 259
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 260
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    .line 262
    :cond_0
    return-void
.end method

.method public static loadTransition(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 391
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 392
    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    .line 394
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    invoke-direct {v0}, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;-><init>()V

    return-object v0
.end method

.method public static removeTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V
    .locals 2
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "listener"    # Landroid/support/v17/leanback/transition/TransitionListener;

    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 334
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    .line 338
    .local v0, "t":Landroid/transition/Transition;
    iget-object v1, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    check-cast v1, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 339
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/support/v17/leanback/transition/TransitionListener;->mImpl:Ljava/lang/Object;

    .line 340
    .end local v0    # "t":Landroid/transition/Transition;
    goto :goto_1

    .line 335
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    move-object v0, p0

    check-cast v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    .line 342
    .local v0, "stub":Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;
    iget-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 343
    iget-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 346
    .end local v0    # "stub":Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;
    :cond_3
    :goto_1
    return-void
.end method

.method public static runTransition(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p0, "scene"    # Ljava/lang/Object;
    .param p1, "transition"    # Ljava/lang/Object;

    .line 349
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 350
    move-object v0, p0

    check-cast v0, Landroid/transition/Scene;

    move-object v1, p1

    check-cast v1, Landroid/transition/Transition;

    invoke-static {v0, v1}, Landroid/transition/TransitionManager;->go(Landroid/transition/Scene;Landroid/transition/Transition;)V

    goto :goto_2

    .line 352
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;

    .line 353
    .local v0, "transitionStub":Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 354
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 355
    iget-object v3, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-virtual {v3, p1}, Landroid/support/v17/leanback/transition/TransitionListener;->onTransitionStart(Ljava/lang/Object;)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    .line 359
    .local v1, "r":Ljava/lang/Runnable;
    if-eqz v1, :cond_2

    .line 360
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 362
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 363
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 364
    iget-object v4, v0, Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;->mTransitionListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/transition/TransitionListener;->onTransitionEnd(Ljava/lang/Object;)V

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 368
    .end local v0    # "transitionStub":Landroid/support/v17/leanback/transition/TransitionHelper$TransitionStub;
    .end local v1    # "r":Ljava/lang/Runnable;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_3
    :goto_2
    return-void
.end method

.method public static setChangeBoundsDefaultStartDelay(Ljava/lang/Object;I)V
    .locals 2
    .param p0, "changeBounds"    # Ljava/lang/Object;
    .param p1, "startDelay"    # I

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 189
    move-object v0, p0

    check-cast v0, Landroid/support/v17/leanback/transition/CustomChangeBounds;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/transition/CustomChangeBounds;->setDefaultStartDelay(I)V

    .line 191
    :cond_0
    return-void
.end method

.method public static setChangeBoundsStartDelay(Ljava/lang/Object;II)V
    .locals 2
    .param p0, "changeBounds"    # Ljava/lang/Object;
    .param p1, "viewId"    # I
    .param p2, "startDelay"    # I

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 176
    move-object v0, p0

    check-cast v0, Landroid/support/v17/leanback/transition/CustomChangeBounds;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/transition/CustomChangeBounds;->setStartDelay(II)V

    .line 178
    :cond_0
    return-void
.end method

.method public static setChangeBoundsStartDelay(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 2
    .param p0, "changeBounds"    # Ljava/lang/Object;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "startDelay"    # I

    .line 169
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 170
    move-object v0, p0

    check-cast v0, Landroid/support/v17/leanback/transition/CustomChangeBounds;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/transition/CustomChangeBounds;->setStartDelay(Landroid/view/View;I)V

    .line 172
    :cond_0
    return-void
.end method

.method public static setChangeBoundsStartDelay(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 2
    .param p0, "changeBounds"    # Ljava/lang/Object;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "startDelay"    # I

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 183
    move-object v0, p0

    check-cast v0, Landroid/support/v17/leanback/transition/CustomChangeBounds;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/transition/CustomChangeBounds;->setStartDelay(Ljava/lang/String;I)V

    .line 185
    :cond_0
    return-void
.end method

.method public static setDuration(Ljava/lang/Object;J)V
    .locals 2
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "duration"    # J

    .line 271
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 272
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 274
    :cond_0
    return-void
.end method

.method public static setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "transition"    # Ljava/lang/Object;

    .line 398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 399
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setEnterTransition(Landroid/transition/Transition;)V

    .line 401
    :cond_0
    return-void
.end method

.method public static setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "transition"    # Ljava/lang/Object;

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 112
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setEnterTransition(Landroid/transition/Transition;)V

    .line 114
    :cond_0
    return-void
.end method

.method public static setEpicenterCallback(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V
    .locals 2
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "callback"    # Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;

    .line 454
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 455
    if-nez p1, :cond_0

    .line 456
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    goto :goto_0

    .line 458
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    new-instance v1, Landroid/support/v17/leanback/transition/TransitionHelper$2;

    invoke-direct {v1, p1}, Landroid/support/v17/leanback/transition/TransitionHelper$2;-><init>(Landroid/support/v17/leanback/transition/TransitionEpicenterCallback;)V

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 466
    :cond_1
    :goto_0
    return-void
.end method

.method public static setExitTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "transition"    # Ljava/lang/Object;

    .line 404
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 405
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setExitTransition(Landroid/transition/Transition;)V

    .line 407
    :cond_0
    return-void
.end method

.method public static setInterpolator(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "timeInterpolator"    # Ljava/lang/Object;

    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 372
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    move-object v1, p1

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 374
    :cond_0
    return-void
.end method

.method public static setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "transition"    # Ljava/lang/Object;

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 125
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setReturnTransition(Landroid/transition/Transition;)V

    .line 127
    :cond_0
    return-void
.end method

.method public static setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "transition"    # Ljava/lang/Object;

    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 412
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 414
    :cond_0
    return-void
.end method

.method public static setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "transition"    # Ljava/lang/Object;

    .line 71
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 72
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSharedElementEnterTransition(Landroid/transition/Transition;)V

    .line 74
    :cond_0
    return-void
.end method

.method public static setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "transition"    # Ljava/lang/Object;

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 85
    move-object v0, p1

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSharedElementReturnTransition(Landroid/transition/Transition;)V

    .line 87
    :cond_0
    return-void
.end method

.method public static setStartDelay(Ljava/lang/Object;J)V
    .locals 2
    .param p0, "transition"    # Ljava/lang/Object;
    .param p1, "startDelay"    # J

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 266
    move-object v0, p0

    check-cast v0, Landroid/transition/Transition;

    invoke-virtual {v0, p1, p2}, Landroid/transition/Transition;->setStartDelay(J)Landroid/transition/Transition;

    .line 268
    :cond_0
    return-void
.end method

.method public static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 2
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "transitionGroup"    # Z

    .line 447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 448
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 450
    :cond_0
    return-void
.end method

.method public static systemSupportsEntranceTransitions()Z
    .locals 2

    .line 53
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
