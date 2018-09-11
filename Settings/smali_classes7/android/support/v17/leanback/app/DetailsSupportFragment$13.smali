.class Landroid/support/v17/leanback/app/DetailsSupportFragment$13;
.super Ljava/lang/Object;
.source "DetailsSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/DetailsSupportFragment;->setupDpadNavigation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/DetailsSupportFragment;

    .line 844
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 853
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 854
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroid/support/v17/leanback/R$id;->details_fragment_root:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 855
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    if-nez v0, :cond_2

    .line 856
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->slideInGridView()V

    .line 857
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->showTitle(Z)V

    goto :goto_0

    .line 859
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroid/support/v17/leanback/R$id;->video_surface_container:I

    if-ne v0, v1, :cond_1

    .line 860
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->slideOutGridView()V

    .line 861
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->showTitle(Z)V

    goto :goto_0

    .line 863
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->showTitle(Z)V

    .line 866
    :cond_2
    :goto_0
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 848
    const/4 v0, 0x0

    return v0
.end method
