.class Landroid/support/v17/leanback/app/DetailsSupportFragment$3;
.super Landroid/support/v17/leanback/util/StateMachine$State;
.source "DetailsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/DetailsSupportFragment;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "branchStart"    # Z
    .param p4, "branchEnd"    # Z

    .line 124
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 127
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 132
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 134
    .local v0, "window":Landroid/view/Window;
    invoke-static {v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v1

    .line 135
    .local v1, "returnTransition":Ljava/lang/Object;
    nop

    .line 136
    invoke-static {v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v2

    .line 137
    .local v2, "sharedReturnTransition":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    .line 138
    invoke-static {v0, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    .line 139
    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    .line 140
    invoke-static {v0, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    .line 142
    .end local v0    # "window":Landroid/view/Window;
    .end local v1    # "returnTransition":Ljava/lang/Object;
    .end local v2    # "sharedReturnTransition":Ljava/lang/Object;
    :cond_1
    return-void
.end method
