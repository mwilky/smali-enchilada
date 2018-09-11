.class Landroid/support/v17/leanback/app/DetailsSupportFragment$7;
.super Landroid/support/v17/leanback/transition/TransitionListener;
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
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/DetailsSupportFragment;

    .line 298
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Ljava/lang/Object;)V
    .locals 2
    .param p1, "transition"    # Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 311
    return-void
.end method

.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 2
    .param p1, "transition"    # Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 316
    return-void
.end method

.method public onTransitionStart(Ljava/lang/Object;)V
    .locals 1
    .param p1, "transition"    # Ljava/lang/Object;

    .line 301
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;

    iget-object v0, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 306
    :cond_0
    return-void
.end method
