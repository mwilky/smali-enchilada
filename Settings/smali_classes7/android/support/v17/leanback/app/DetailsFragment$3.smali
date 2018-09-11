.class Landroid/support/v17/leanback/app/DetailsFragment$3;
.super Landroid/support/v17/leanback/util/StateMachine$State;
.source "DetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/DetailsFragment;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "branchStart"    # Z
    .param p4, "branchEnd"    # Z

    .line 129
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 132
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$3;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 139
    .local v0, "window":Landroid/view/Window;
    invoke-static {v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v1

    .line 140
    .local v1, "returnTransition":Ljava/lang/Object;
    nop

    .line 141
    invoke-static {v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->getSharedElementReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v2

    .line 142
    .local v2, "sharedReturnTransition":Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->setEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    .line 143
    invoke-static {v0, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->setSharedElementEnterTransition(Landroid/view/Window;Ljava/lang/Object;)V

    .line 144
    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    .line 145
    invoke-static {v0, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->setSharedElementReturnTransition(Landroid/view/Window;Ljava/lang/Object;)V

    .line 147
    .end local v0    # "window":Landroid/view/Window;
    .end local v1    # "returnTransition":Ljava/lang/Object;
    .end local v2    # "sharedReturnTransition":Ljava/lang/Object;
    :cond_1
    return-void
.end method
