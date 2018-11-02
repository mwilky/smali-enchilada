.class final Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "ActionBarShadowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ActionBarShadowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScrollChangeWatcher"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAnchorView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/widget/ActionBarShadowController;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/ActionBarShadowController;Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->this$0:Lcom/android/settings/widget/ActionBarShadowController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/widget/ActionBarShadowController;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->this$0:Lcom/android/settings/widget/ActionBarShadowController;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mAnchorView:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->updateDropShadow(Landroid/view/View;)V

    return-void
.end method

.method public updateDropShadow(Landroid/view/View;)V
    .locals 4

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mAnchorView:Landroid/view/View;

    const/4 v2, 0x0

    const/high16 v3, 0x41000000    # 8.0f

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    move v2, v3

    nop

    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/widget/ActionBarShadowController$ScrollChangeWatcher;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setElevation(F)V

    :cond_3
    :goto_0
    return-void
.end method
