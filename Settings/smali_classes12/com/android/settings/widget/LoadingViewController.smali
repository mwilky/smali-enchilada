.class public Lcom/android/settings/widget/LoadingViewController;
.super Ljava/lang/Object;
.source "LoadingViewController.java"


# static fields
.field private static final DELAY_SHOW_LOADING_CONTAINER_THRESHOLD_MS:J = 0x64L


# instance fields
.field public final mContentView:Landroid/view/View;

.field public final mFgHandler:Landroid/os/Handler;

.field public final mLoadingView:Landroid/view/View;

.field private mShowLoadingContainerRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/widget/LoadingViewController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/LoadingViewController$1;-><init>(Lcom/android/settings/widget/LoadingViewController;)V

    iput-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mShowLoadingContainerRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/settings/widget/LoadingViewController;->mLoadingView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/settings/widget/LoadingViewController;->mContentView:Landroid/view/View;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mFgHandler:Landroid/os/Handler;

    return-void
.end method

.method public static handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 1

    xor-int/lit8 v0, p2, 0x1

    invoke-static {p0, v0, p3}, Lcom/android/settings/widget/LoadingViewController;->setViewShown(Landroid/view/View;ZZ)V

    invoke-static {p1, p2, p3}, Lcom/android/settings/widget/LoadingViewController;->setViewShown(Landroid/view/View;ZZ)V

    return-void
.end method

.method private static setViewShown(Landroid/view/View;ZZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    const/high16 v2, 0x10a0000

    goto :goto_0

    :cond_0
    const v2, 0x10a0001

    :goto_0
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/settings/widget/LoadingViewController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/LoadingViewController$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public handleLoadingContainer(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mLoadingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/widget/LoadingViewController;->mContentView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void
.end method

.method public showContent(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mFgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/LoadingViewController;->mShowLoadingContainerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/widget/LoadingViewController;->handleLoadingContainer(ZZ)V

    return-void
.end method

.method public showLoadingViewDelayed()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/widget/LoadingViewController;->mFgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/LoadingViewController;->mShowLoadingContainerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
