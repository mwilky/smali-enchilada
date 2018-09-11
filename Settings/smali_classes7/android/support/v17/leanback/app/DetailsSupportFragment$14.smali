.class Landroid/support/v17/leanback/app/DetailsSupportFragment$14;
.super Ljava/lang/Object;
.source "DetailsSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;


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

    .line 868
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 871
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 872
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    const/16 v0, 0x21

    if-ne p2, v0, :cond_2

    .line 874
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    .line 875
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->canNavigateToVideoSupportFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    .line 876
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 878
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 879
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 882
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getTitleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 883
    const/16 v0, 0x82

    if-ne p2, v0, :cond_2

    .line 884
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 885
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    return-object v0

    .line 889
    :cond_2
    return-object p1
.end method
