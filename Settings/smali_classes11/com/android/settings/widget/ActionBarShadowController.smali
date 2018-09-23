.class public Lcom/android/settings/widget/ActionBarShadowController;
.super Ljava/lang/Object;
.source "ActionBarShadowController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;
    }
.end annotation


# static fields
.field static final ELEVATION_HIGH:F = 8.0f
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ELEVATION_LOW:F
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private isScrollWatcherAttached:Z

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mScrollChangeWatcher:Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;-><init>(Lcom/android/settings/widget/ActionBarShadowController;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;

    iput-object p3, p0, Lcom/android/settings/widget/ActionBarShadowController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lcom/android/settings/widget/ActionBarShadowController;->attachScrollWatcher()V

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/View;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;-><init>(Lcom/android/settings/widget/ActionBarShadowController;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;

    iput-object p3, p0, Lcom/android/settings/widget/ActionBarShadowController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lcom/android/settings/widget/ActionBarShadowController;->attachScrollWatcher()V

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private attachScrollWatcher()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->isScrollWatcherAttached:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->isScrollWatcherAttached:Z

    iget-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;

    iget-object v1, p0, Lcom/android/settings/widget/ActionBarShadowController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->updateDropShadow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static attachToRecyclerView(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)Lcom/android/settings/widget/ActionBarShadowController;
    .locals 1

    new-instance v0, Lcom/android/settings/widget/ActionBarShadowController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/widget/ActionBarShadowController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)V

    return-object v0
.end method

.method public static attachToRecyclerView(Landroid/view/View;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)Lcom/android/settings/widget/ActionBarShadowController;
    .locals 1

    new-instance v0, Lcom/android/settings/widget/ActionBarShadowController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/widget/ActionBarShadowController;-><init>(Landroid/view/View;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)V

    return-object v0
.end method

.method private detachScrollWatcher()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/widget/ActionBarShadowController;->mScrollChangeWatcher:Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ActionBarShadowController;->isScrollWatcherAttached:Z

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/ActionBarShadowController;->attachScrollWatcher()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/widget/ActionBarShadowController;->detachScrollWatcher()V

    return-void
.end method
