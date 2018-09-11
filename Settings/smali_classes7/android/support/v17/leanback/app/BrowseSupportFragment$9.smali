.class Landroid/support/v17/leanback/app/BrowseSupportFragment$9;
.super Landroid/support/v17/leanback/transition/TransitionListener;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;->createHeadersTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/BrowseSupportFragment;

    .line 1320
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 2
    .param p1, "transition"    # Ljava/lang/Object;

    .line 1326
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersTransition:Ljava/lang/Object;

    .line 1327
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->onTransitionEnd()V

    .line 1329
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1331
    .local v0, "mainFragmentView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1332
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1336
    .end local v0    # "mainFragmentView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    if-eqz v0, :cond_1

    .line 1337
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->onTransitionEnd()V

    .line 1338
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_1

    .line 1339
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mHeadersSupportFragment:Landroid/support/v17/leanback/app/HeadersSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/HeadersSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 1340
    .local v0, "headerGridView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1341
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 1347
    .end local v0    # "headerGridView":Landroid/support/v17/leanback/widget/VerticalGridView;
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->updateTitleViewVisibility()V

    .line 1349
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

    if-eqz v0, :cond_2

    .line 1350
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mBrowseTransitionListener:Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$9;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mShowingHeaders:Z

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$BrowseTransitionListener;->onHeadersTransitionStop(Z)V

    .line 1352
    :cond_2
    return-void
.end method

.method public onTransitionStart(Ljava/lang/Object;)V
    .locals 0
    .param p1, "transition"    # Ljava/lang/Object;

    .line 1323
    return-void
.end method
