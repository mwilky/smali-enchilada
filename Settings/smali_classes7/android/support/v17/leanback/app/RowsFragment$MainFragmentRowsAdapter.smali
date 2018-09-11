.class public Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;
.super Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;
.source "RowsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/RowsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragmentRowsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter<",
        "Landroid/support/v17/leanback/app/RowsFragment;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/RowsFragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v17/leanback/app/RowsFragment;

    .line 647
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;-><init>(Landroid/app/Fragment;)V

    .line 648
    return-void
.end method


# virtual methods
.method public findRowViewHolderByPosition(I)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .line 687
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsFragment;->findRowViewHolderByPosition(I)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 682
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 652
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 653
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 660
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 661
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 665
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 666
    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 1
    .param p1, "rowPosition"    # I
    .param p2, "smooth"    # Z

    .line 677
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/app/RowsFragment;->setSelectedPosition(IZ)V

    .line 678
    return-void
.end method

.method public setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 1
    .param p1, "rowPosition"    # I
    .param p2, "smooth"    # Z
    .param p3, "rowHolderTask"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    .line 672
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentRowsAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/app/RowsFragment;->setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V

    .line 673
    return-void
.end method
