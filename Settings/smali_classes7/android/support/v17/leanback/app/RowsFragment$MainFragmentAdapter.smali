.class public Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;
.super Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;
.source "RowsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/RowsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragmentAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter<",
        "Landroid/support/v17/leanback/app/RowsFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/app/RowsFragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v17/leanback/app/RowsFragment;

    .line 595
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;-><init>(Landroid/app/Fragment;)V

    .line 596
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;->setScalingEnabled(Z)V

    .line 597
    return-void
.end method


# virtual methods
.method public isScrolling()Z
    .locals 1

    .line 601
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public onTransitionEnd()V
    .locals 1

    .line 631
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->onTransitionEnd()V

    .line 632
    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 1

    .line 621
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->onTransitionPrepare()Z

    move-result v0

    return v0
.end method

.method public onTransitionStart()V
    .locals 1

    .line 626
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->onTransitionStart()V

    .line 627
    return-void
.end method

.method public setAlignment(I)V
    .locals 1
    .param p1, "windowAlignOffsetFromTop"    # I

    .line 616
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsFragment;->setAlignment(I)V

    .line 617
    return-void
.end method

.method public setEntranceTransitionState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 611
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsFragment;->setEntranceTransitionState(Z)V

    .line 612
    return-void
.end method

.method public setExpand(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .line 606
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/RowsFragment$MainFragmentAdapter;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsFragment;->setExpand(Z)V

    .line 607
    return-void
.end method
