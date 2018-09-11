.class Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandPreLayout"
.end annotation


# static fields
.field static final STATE_FIRST_DRAW:I = 0x1

.field static final STATE_INIT:I = 0x0

.field static final STATE_SECOND_DRAW:I = 0x2


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private mState:I

.field private final mView:Landroid/view/View;

.field private mainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;Ljava/lang/Runnable;Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;Landroid/view/View;)V
    .locals 0
    .param p2, "callback"    # Ljava/lang/Runnable;
    .param p3, "adapter"    # Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;
    .param p4, "view"    # Landroid/view/View;

    .line 1817
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1818
    iput-object p4, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mView:Landroid/view/View;

    .line 1819
    iput-object p2, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mCallback:Ljava/lang/Runnable;

    .line 1820
    iput-object p3, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    .line 1821
    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    .line 1824
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1825
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setExpand(Z)V

    .line 1827
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1828
    iput v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mState:I

    .line 1829
    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .line 1833
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1837
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mState:I

    if-nez v0, :cond_1

    .line 1838
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->setExpand(Z)V

    .line 1840
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1841
    iput v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mState:I

    goto :goto_0

    .line 1842
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mState:I

    if-ne v0, v1, :cond_2

    .line 1843
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1844
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1845
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mState:I

    .line 1847
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1834
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$ExpandPreLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1835
    return v1
.end method
