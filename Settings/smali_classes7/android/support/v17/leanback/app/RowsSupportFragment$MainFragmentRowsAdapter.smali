.class public Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;
.super Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;
.source "RowsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/RowsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragmentRowsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter<",
        "Landroid/support/v17/leanback/app/RowsSupportFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/RowsSupportFragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 640
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 641
    return-void
.end method


# virtual methods
.method public findRowViewHolderByPosition(I)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .line 680
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->findRowViewHolderByPosition(I)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 675
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 645
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 646
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 653
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 654
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 658
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 659
    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 1
    .param p1, "rowPosition"    # I
    .param p2, "smooth"    # Z

    .line 670
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setSelectedPosition(IZ)V

    .line 671
    return-void
.end method

.method public setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 1
    .param p1, "rowPosition"    # I
    .param p2, "smooth"    # Z
    .param p3, "rowHolderTask"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    .line 665
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsSupportFragment$MainFragmentRowsAdapter;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V

    .line 666
    return-void
.end method
