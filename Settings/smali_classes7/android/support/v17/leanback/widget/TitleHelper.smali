.class public Landroid/support/v17/leanback/widget/TitleHelper;
.super Ljava/lang/Object;
.source "TitleHelper.java"


# instance fields
.field private final mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

.field mSceneRoot:Landroid/view/ViewGroup;

.field private mSceneWithTitle:Ljava/lang/Object;

.field private mSceneWithoutTitle:Ljava/lang/Object;

.field private mTitleDownTransition:Ljava/lang/Object;

.field private mTitleUpTransition:Ljava/lang/Object;

.field mTitleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "titleView"    # Landroid/view/View;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/support/v17/leanback/widget/TitleHelper$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/TitleHelper$1;-><init>(Landroid/support/v17/leanback/widget/TitleHelper;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    .line 60
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 63
    iput-object p1, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    .line 64
    iput-object p2, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleView:Landroid/view/View;

    .line 65
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/TitleHelper;->createTransitions()V

    .line 66
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Views may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createTransitions()V
    .locals 2

    .line 69
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    .line 70
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper;->loadTitleOutTransition(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleUpTransition:Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    .line 72
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/support/v17/leanback/transition/LeanbackTransitionHelper;->loadTitleInTransition(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleDownTransition:Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    new-instance v1, Landroid/support/v17/leanback/widget/TitleHelper$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/TitleHelper$2;-><init>(Landroid/support/v17/leanback/widget/TitleHelper;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneWithTitle:Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    new-instance v1, Landroid/support/v17/leanback/widget/TitleHelper$3;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/TitleHelper$3;-><init>(Landroid/support/v17/leanback/widget/TitleHelper;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneWithoutTitle:Ljava/lang/Object;

    .line 85
    return-void
.end method


# virtual methods
.method public getOnFocusSearchListener()Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;
    .locals 1

    .line 118
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mOnFocusSearchListener:Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    return-object v0
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .locals 1

    .line 102
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method public showTitle(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneWithTitle:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleDownTransition:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneWithoutTitle:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleUpTransition:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    :goto_0
    return-void
.end method
