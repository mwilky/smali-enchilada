.class public abstract Landroid/transition/Visibility;
.super Landroid/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Visibility$DisappearListener;,
        Landroid/transition/Visibility$VisibilityInfo;,
        Landroid/transition/Visibility$VisibilityMode;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I

.field private mSuppressLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    sget-object v0, Lcom/android/internal/R$styleable;->VisibilityTransition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/transition/Visibility;->setMode(I)V

    :cond_0
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 4

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;
    .locals 6

    new-instance v0, Landroid/transition/Visibility$VisibilityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/transition/Visibility$VisibilityInfo;-><init>(Landroid/transition/Visibility$1;)V

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    const/4 v3, -0x1

    if-eqz p0, :cond_0

    iget-object v4, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget-object v4, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:parent"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    iput v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p1, :cond_1

    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    iput v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    :goto_1
    const/4 v1, 0x1

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    return-object v0

    :cond_2
    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-eq v3, v4, :cond_4

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v3, :cond_3

    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_3
    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v2, :cond_8

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_4
    iget-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eq v3, v4, :cond_8

    iget-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-nez v3, :cond_5

    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_5
    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_8

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_6
    if-nez p0, :cond_7

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v3, :cond_7

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v3, :cond_8

    iput-boolean v2, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 8

    invoke-static {p2, p3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v0

    iget-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    if-eqz v1, :cond_1

    iget v5, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v7, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    :cond_1
    iget v5, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v7, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    invoke-static {p1, p2}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v1

    iget-boolean v2, v1, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v2, :cond_3

    iget v2, v1, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    nop

    :cond_3
    return v0
.end method

.method public isVisible(Landroid/transition/TransitionValues;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6

    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    iget-object v1, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v4

    invoke-virtual {p0, v1, v3}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v3

    nop

    invoke-static {v4, v3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v0

    iget-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v5, :cond_1

    return-object v2

    :cond_1
    iget-object v0, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p4}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v2
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget v4, v0, Landroid/transition/Visibility;->mMode:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-eq v4, v5, :cond_0

    return-object v6

    :cond_0
    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v4, v6

    :goto_0
    if-eqz v3, :cond_2

    iget-object v7, v3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v7, v6

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    const/4 v11, 0x4

    move/from16 v12, p5

    if-ne v12, v11, :cond_4

    move-object v9, v7

    goto/16 :goto_3

    :cond_4
    if-ne v4, v7, :cond_5

    move-object v9, v7

    goto/16 :goto_3

    :cond_5
    iget-boolean v11, v0, Landroid/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v11, :cond_6

    move-object v8, v4

    goto :goto_3

    :cond_6
    nop

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-static {v1, v4, v11}, Landroid/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    goto :goto_3

    :cond_7
    :goto_2
    move/from16 v12, p5

    if-eqz v7, :cond_8

    move-object v8, v7

    goto :goto_3

    :cond_8
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_9

    move-object v8, v4

    goto :goto_3

    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    instance-of v11, v11, Landroid/view/View;

    if-eqz v11, :cond_b

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-virtual {v0, v11, v10}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v13

    invoke-virtual {v0, v11, v10}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v14

    nop

    invoke-static {v13, v14}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v15

    iget-boolean v6, v15, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-nez v6, :cond_a

    invoke-static {v1, v4, v11}, Landroid/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    move-object v8, v6

    goto :goto_3

    :cond_a
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_b

    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v6

    const/4 v5, -0x1

    if-eq v6, v5, :cond_b

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-boolean v5, v0, Landroid/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v5, :cond_b

    move-object v5, v4

    move-object v8, v5

    :cond_b
    :goto_3
    move v5, v12

    move-object v6, v1

    const/4 v11, 0x0

    if-eqz v8, :cond_d

    iget-object v13, v2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v14, "android:visibility:screenLocation"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    aget v14, v13, v11

    aget v15, v13, v10

    const/4 v10, 0x2

    new-array v10, v10, [I

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    aget v11, v10, v11

    sub-int v11, v14, v11

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v16

    sub-int v11, v11, v16

    invoke-virtual {v8, v11}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/4 v11, 0x1

    aget v11, v10, v11

    sub-int v11, v15, v11

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v11, v11, v16

    invoke-virtual {v8, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v11

    if-nez v11, :cond_c

    move-object/from16 v17, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    move-object/from16 v18, v7

    goto :goto_4

    :cond_c
    move-object/from16 v17, v4

    move-object v4, v8

    move-object/from16 v18, v7

    new-instance v7, Landroid/transition/Visibility$1;

    invoke-direct {v7, v0, v6, v4}, Landroid/transition/Visibility$1;-><init>(Landroid/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    :goto_4
    return-object v11

    :cond_d
    move-object/from16 v17, v4

    move-object/from16 v18, v7

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-virtual {v9, v11}, Landroid/view/View;->setTransitionVisibility(I)V

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v7

    if-eqz v7, :cond_e

    new-instance v10, Landroid/transition/Visibility$DisappearListener;

    iget-boolean v11, v0, Landroid/transition/Visibility;->mSuppressLayout:Z

    invoke-direct {v10, v9, v5, v11}, Landroid/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {v7, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v7, v10}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    invoke-virtual {v0, v10}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto :goto_5

    :cond_e
    invoke-virtual {v9, v4}, Landroid/view/View;->setTransitionVisibility(I)V

    :goto_5
    return-object v7

    :cond_f
    const/4 v4, 0x0

    return-object v4
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setMode(I)V
    .locals 2

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    iput p1, p0, Landroid/transition/Visibility;->mMode:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSuppressLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    return-void
.end method
