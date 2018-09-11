.class Landroid/support/v17/leanback/app/BrowseFragment$12;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BrowseFragment;->swapToMainFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseFragment;

.field final synthetic val$gridView:Landroid/support/v17/leanback/widget/VerticalGridView;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseFragment;Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/BrowseFragment;

    .line 1570
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iput-object p2, p0, Landroid/support/v17/leanback/app/BrowseFragment$12;->val$gridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 1574
    if-nez p2, :cond_0

    .line 1575
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$12;->val$gridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/VerticalGridView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 1576
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 1577
    .local v0, "fm":Landroid/app/FragmentManager;
    sget v1, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 1578
    .local v1, "currentFragment":Landroid/app/Fragment;
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-eq v1, v2, :cond_0

    .line 1579
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->scale_frame:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 1582
    .end local v0    # "fm":Landroid/app/FragmentManager;
    .end local v1    # "currentFragment":Landroid/app/Fragment;
    :cond_0
    return-void
.end method
