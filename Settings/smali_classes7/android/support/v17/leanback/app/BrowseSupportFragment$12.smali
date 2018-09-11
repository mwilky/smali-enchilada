.class Landroid/support/v17/leanback/app/BrowseSupportFragment$12;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;->swapToMainFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

.field final synthetic val$gridView:Landroid/support/v17/leanback/widget/VerticalGridView;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/BrowseSupportFragment;

    .line 1548
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iput-object p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;->val$gridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 5
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 1552
    if-nez p2, :cond_0

    .line 1553
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;->val$gridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/VerticalGridView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 1554
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1555
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    sget v1, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1556
    .local v1, "currentFragment":Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    if-eq v1, v2, :cond_0

    .line 1557
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->scale_frame:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1560
    .end local v0    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "currentFragment":Landroid/support/v4/app/Fragment;
    :cond_0
    return-void
.end method
