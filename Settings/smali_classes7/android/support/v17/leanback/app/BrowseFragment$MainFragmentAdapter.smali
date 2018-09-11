.class public Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;
.super Ljava/lang/Object;
.source "BrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragmentAdapter"
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

.field mFragmentHost:Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;

.field private mScalingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 394
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter<TT;>;"
    .local p1, "fragment":Landroid/app/Fragment;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->mFragment:Landroid/app/Fragment;

    .line 396
    return-void
.end method


# virtual methods
.method public final getFragment()Landroid/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 399
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public final getFragmentHost()Landroid/support/v17/leanback/app/BrowseFragment$FragmentHost;
    .locals 1

    .line 466
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;

    return-object v0
.end method

.method public isScalingEnabled()Z
    .locals 1

    .line 451
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter<TT;>;"
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->mScalingEnabled:Z

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .line 406
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onTransitionEnd()V
    .locals 0

    .line 445
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter<TT;>;"
    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 1

    .line 432
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onTransitionStart()V
    .locals 0

    .line 439
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter<TT;>;"
    return-void
.end method

.method public setAlignment(I)V
    .locals 0
    .param p1, "windowAlignOffsetFromTop"    # I

    .line 426
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter<TT;>;"
    return-void
.end method

.method public setEntranceTransitionState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 420
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter<TT;>;"
    return-void
.end method

.method public setExpand(Z)V
    .locals 0
    .param p1, "expand"    # Z

    .line 413
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter<TT;>;"
    return-void
.end method

.method setFragmentHost(Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;)V
    .locals 0
    .param p1, "fragmentHost"    # Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;

    .line 470
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter<TT;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseFragment$FragmentHostImpl;

    .line 471
    return-void
.end method

.method public setScalingEnabled(Z)V
    .locals 0
    .param p1, "scalingEnabled"    # Z

    .line 458
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter<TT;>;"
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->mScalingEnabled:Z

    .line 459
    return-void
.end method
