.class public Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragmentRowsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v4/app/Fragment;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mFragment:Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 497
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter<TT;>;"
    .local p1, "fragment":Landroid/support/v4/app/Fragment;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    if-eqz p1, :cond_0

    .line 501
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->mFragment:Landroid/support/v4/app/Fragment;

    .line 502
    return-void

    .line 499
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fragment can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public findRowViewHolderByPosition(I)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .line 551
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFragment()Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 505
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 543
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 511
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter<TT;>;"
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 517
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter<TT;>;"
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 523
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter<TT;>;"
    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 0
    .param p1, "rowPosition"    # I
    .param p2, "smooth"    # Z

    .line 537
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter<TT;>;"
    return-void
.end method

.method public setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 0
    .param p1, "rowPosition"    # I
    .param p2, "smooth"    # Z
    .param p3, "rowHolderTask"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    .line 531
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentRowsAdapter<TT;>;"
    return-void
.end method
