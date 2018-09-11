.class public Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragmentAdapter"
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

.field mFragmentHost:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

.field private mScalingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 384
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter<TT;>;"
    .local p1, "fragment":Landroid/support/v4/app/Fragment;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragment:Landroid/support/v4/app/Fragment;

    .line 386
    return-void
.end method


# virtual methods
.method public final getFragment()Landroid/support/v4/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 389
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final getFragmentHost()Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHost;
    .locals 1

    .line 456
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter<TT;>;"
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    return-object v0
.end method

.method public isScalingEnabled()Z
    .locals 1

    .line 441
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter<TT;>;"
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mScalingEnabled:Z

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .line 396
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onTransitionEnd()V
    .locals 0

    .line 435
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter<TT;>;"
    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 1

    .line 422
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onTransitionStart()V
    .locals 0

    .line 429
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter<TT;>;"
    return-void
.end method

.method public setAlignment(I)V
    .locals 0
    .param p1, "windowAlignOffsetFromTop"    # I

    .line 416
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter<TT;>;"
    return-void
.end method

.method public setEntranceTransitionState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 410
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter<TT;>;"
    return-void
.end method

.method public setExpand(Z)V
    .locals 0
    .param p1, "expand"    # Z

    .line 403
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter<TT;>;"
    return-void
.end method

.method setFragmentHost(Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;)V
    .locals 0
    .param p1, "fragmentHost"    # Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    .line 460
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter<TT;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    .line 461
    return-void
.end method

.method public setScalingEnabled(Z)V
    .locals 0
    .param p1, "scalingEnabled"    # Z

    .line 448
    .local p0, "this":Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;, "Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter<TT;>;"
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mScalingEnabled:Z

    .line 449
    return-void
.end method
