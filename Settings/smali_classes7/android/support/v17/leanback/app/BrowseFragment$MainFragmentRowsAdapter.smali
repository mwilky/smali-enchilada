.class public Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;
.super Ljava/lang/Object;
.source "BrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragmentRowsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Fragment;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mFragment:Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 513
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter<TT;>;"
    .local p1, "fragment":Landroid/app/Fragment;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    if-eqz p1, :cond_0

    .line 517
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->mFragment:Landroid/app/Fragment;

    .line 518
    return-void

    .line 515
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

    .line 567
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFragment()Landroid/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 521
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 559
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 527
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter<TT;>;"
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 533
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter<TT;>;"
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 539
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter<TT;>;"
    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 0
    .param p1, "rowPosition"    # I
    .param p2, "smooth"    # Z

    .line 553
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter<TT;>;"
    return-void
.end method

.method public setSelectedPosition(IZLandroid/support/v17/leanback/widget/Presenter$ViewHolderTask;)V
    .locals 0
    .param p1, "rowPosition"    # I
    .param p2, "smooth"    # Z
    .param p3, "rowHolderTask"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolderTask;

    .line 547
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentRowsAdapter<TT;>;"
    return-void
.end method
