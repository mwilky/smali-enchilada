.class final Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FragmentHostImpl"
.end annotation


# instance fields
.field mShowTitleView:Z

.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V
    .locals 0

    .line 310
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->mShowTitleView:Z

    .line 311
    return-void
.end method


# virtual methods
.method public notifyDataReady(Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;)V
    .locals 2
    .param p1, "fragmentAdapter"    # Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    .line 326
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->getFragmentHost()Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHost;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-nez v0, :cond_1

    .line 332
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 336
    return-void

    .line 327
    :cond_2
    :goto_0
    return-void
.end method

.method public notifyViewCreated(Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;)V
    .locals 2
    .param p1, "fragmentAdapter"    # Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    .line 315
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_MAIN_FRAGMENT_VIEW_CREATED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 316
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-nez v0, :cond_0

    .line 318
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/BrowseSupportFragment;->EVT_SCREEN_DATA_READY:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 320
    :cond_0
    return-void
.end method

.method public showTitleView(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 340
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->mShowTitleView:Z

    .line 344
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mMainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->getFragmentHost()Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHost;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BrowseSupportFragment;->mIsPageRow:Z

    if-nez v0, :cond_1

    .line 350
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->updateTitleViewVisibility()V

    .line 354
    return-void

    .line 345
    :cond_2
    :goto_0
    return-void
.end method
