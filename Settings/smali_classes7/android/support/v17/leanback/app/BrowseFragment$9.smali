.class Landroid/support/v17/leanback/app/BrowseFragment$9;
.super Landroid/support/v17/leanback/transition/TransitionListener;
.source "BrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BrowseFragment;->createHeadersTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/BrowseFragment;

    .line 1342
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 2
    .param p1, "transition"    # Ljava/lang/Object;

    .line 1348
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersTransition:Ljava/lang/Object;

    .line 1349
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->onTransitionEnd()V

    .line 1351
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 1352
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1353
    .local v0, "mainFragmentView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1354
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1358
    .end local v0    # "mainFragmentView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    if-eqz v0, :cond_1

    .line 1359
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->onTransitionEnd()V

    .line 1360
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_1

    .line 1361
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mHeadersFragment:Landroid/support/v17/leanback/app/HeadersFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 1362
    .local v0, "headerGridView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1363
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 1369
    .end local v0    # "headerGridView":Landroid/support/v17/leanback/widget/VerticalGridView;
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->updateTitleViewVisibility()V

    .line 1371
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;

    if-eqz v0, :cond_2

    .line 1372
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$BrowseTransitionListener;->onHeadersTransitionStop(Z)V

    .line 1374
    :cond_2
    return-void
.end method

.method public onTransitionStart(Ljava/lang/Object;)V
    .locals 0
    .param p1, "transition"    # Ljava/lang/Object;

    .line 1345
    return-void
.end method
