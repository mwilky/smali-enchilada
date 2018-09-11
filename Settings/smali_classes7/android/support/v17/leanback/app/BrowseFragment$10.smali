.class Landroid/support/v17/leanback/app/BrowseFragment$10;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseFragment;
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

    .line 1484
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderClicked(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;
    .param p2, "row"    # Landroid/support/v17/leanback/widget/Row;

    .line 1487
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mCanShowHeaders:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mShowingHeaders:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->isInHeadersTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1490
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1493
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment;->startHeadersTransitionInternal(Z)V

    .line 1494
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$10;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1495
    return-void

    .line 1491
    :cond_2
    :goto_0
    return-void

    .line 1488
    :cond_3
    :goto_1
    return-void
.end method
