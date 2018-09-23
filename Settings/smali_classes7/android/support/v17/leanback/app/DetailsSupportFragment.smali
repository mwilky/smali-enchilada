.class public Landroid/support/v17/leanback/app/DetailsSupportFragment;
.super Landroid/support/v17/leanback/app/BaseSupportFragment;
.source "DetailsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;,
        Landroid/support/v17/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "DetailsSupportFragment"


# instance fields
.field final EVT_DETAILS_ROW_LOADED:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

.field mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field mBackgroundView:Landroid/view/View;

.field mContainerListAlignTop:I

.field mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

.field mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

.field mEnterTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

.field mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

.field mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

.field final mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingFocusOnVideo:Z

.field mReturnTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

.field mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

.field mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

.field mSceneAfterEntranceTransition:Ljava/lang/Object;

.field final mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

.field mVideoSupportFragment:Landroid/support/v4/app/Fragment;

.field mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsSupportFragment$WaitEnterTransitionTimeout;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$1;

    const-string v1, "STATE_SET_ENTRANCE_START_STATE"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string v1, "STATE_ENTER_TRANSIITON_INIT"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$2;

    const-string v1, "STATE_SWITCH_TO_VIDEO_IN_ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Landroid/support/v17/leanback/app/DetailsSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$3;

    const-string v1, "STATE_ENTER_TRANSITION_CANCEL"

    invoke-direct {v0, p0, v1, v2, v2}, Landroid/support/v17/leanback/app/DetailsSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string v1, "STATE_ENTER_TRANSIITON_COMPLETE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$4;

    const-string v1, "STATE_ENTER_TRANSITION_PENDING"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$5;

    const-string v1, "STATE_ENTER_TRANSITION_PENDING"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsSupportFragment$5;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$6;

    const-string v1, "STATE_ON_SAFE_START"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsSupportFragment$6;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "onStart"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "EVT_NO_ENTER_TRANSITION"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "onFirstRowLoaded"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_DETAILS_ROW_LOADED:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "onEnterTransitionDone"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "switchToVideo"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mEnterTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$8;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$8;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mReturnTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$9;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$9;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    return-void
.end method

.method private setupChildFragmentLayout()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    return-void
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$transition;->lb_details_enter_transition:I

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createStateMachineStates()V
    .locals 2

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineStates()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineTransitions()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->COND_TRANSITION_NOT_SUPPORTED:Landroid/support/v17/leanback/util/StateMachine$Condition;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_DETAILS_ROW_LOADED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    return-void
.end method

.method final findOrCreateVideoSupportFragment()Landroid/support/v4/app/Fragment;
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->video_surface_container:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->video_surface_container:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->onCreateVideoSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    move-object v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/support/v17/leanback/app/DetailsSupportFragment$12;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$12;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    return-object v1
.end method

.method public getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    return-object v0
.end method

.method public getParallax()Landroid/support/v17/leanback/widget/DetailsParallax;
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v17/leanback/widget/DetailsParallax;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/DetailsParallax;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsParallax;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    return-object v0
.end method

.method public getRowsSupportFragment()Landroid/support/v17/leanback/app/RowsSupportFragment;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    return-object v0
.end method

.method getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected inflateTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    nop

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_details_rows_align_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mContainerListAlignTop:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mReturnTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-static {v1, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_details_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    sget v1, Landroid/support/v17/leanback/R$id;->details_background_view:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mBackgroundView:Landroid/view/View;

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->details_rows_dock:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->details_rows_dock:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p0, p1, v0, p3}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsSupportFragment$10;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$10;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->setupDpadNavigation()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsSupportFragment$11;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$11;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setExternalAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    return-object v0
.end method

.method protected onEntranceTransitionEnd()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->onTransitionEnd()V

    return-void
.end method

.method protected onEntranceTransitionPrepare()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->onTransitionPrepare()Z

    return-void
.end method

.method protected onEntranceTransitionStart()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->onTransitionStart()V

    return-void
.end method

.method public onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->inflateTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method onReturnTransitionStart()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->disableVideoParallax()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    :cond_0
    return-void
.end method

.method onRowSelected(II)V
    .locals 12

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedSubPosition()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->showTitle(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->showTitle(Z)V

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v5, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_DETAILS_ROW_LOADED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    :cond_2
    nop

    :goto_1
    if-ge v2, v3, :cond_3

    nop

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v5

    check-cast v5, Landroid/support/v17/leanback/widget/RowPresenter;

    nop

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getAdapterPosition()I

    move-result v9

    move-object v6, p0

    move-object v7, v5

    move v10, p1

    move v11, p2

    invoke-virtual/range {v6 .. v11}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->onSetRowStatus(Landroid/support/v17/leanback/widget/RowPresenter;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method onSafeStart()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->onStart()V

    :cond_0
    return-void
.end method

.method protected onSetDetailsOverviewRowStatus(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;III)V
    .locals 2

    const/4 v0, 0x0

    if-le p4, p3, :cond_0

    invoke-virtual {p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p4, p3, :cond_1

    if-ne p5, v1, :cond_1

    invoke-virtual {p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    goto :goto_0

    :cond_1
    if-ne p4, p3, :cond_2

    if-nez p5, :cond_2

    invoke-virtual {p1, p2, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    :goto_0
    return-void
.end method

.method protected onSetRowStatus(Landroid/support/v17/leanback/widget/RowPresenter;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;III)V
    .locals 7

    instance-of v0, p1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    if-eqz v0, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    move-object v3, p2

    check-cast v3, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->onSetDetailsOverviewRowStatus(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;III)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onStart()V

    invoke-direct {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->setupChildFragmentLayout()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsParallax;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->slideOutGridView()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->onStop()V

    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onStop()V

    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 3

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenters()[Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->setupPresenter(Landroid/support/v17/leanback/widget/Presenter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "DetailsSupportFragment"

    const-string v2, "PresenterSelector.getPresenters() not implemented"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    :cond_2
    return-void
.end method

.method setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

    iput p1, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;->mPosition:I

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

    iput-boolean p2, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;->mSmooth:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mContainerListAlignTop:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    return-void
.end method

.method protected setupDetailsOverviewRowPresenter(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;)V
    .locals 6

    new-instance v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;-><init>()V

    new-instance v1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    sget v2, Landroid/support/v17/leanback/R$id;->details_frame:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentViewId(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_align_pos_for_actions:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    new-instance v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v3}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    sget v4, Landroid/support/v17/leanback/R$id;->details_frame:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentViewId(I)V

    sget v4, Landroid/support/v17/leanback/R$id;->details_overview_description:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentFocusViewId(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_align_pos_for_description:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->setAlignmentDefs([Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;)V

    const-class v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {p1, v4, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setFacet(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method setupDpadNavigation()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnChildFocusListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsSupportFragment$15;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$15;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnDispatchKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method protected setupPresenter(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->setupDetailsOverviewRowPresenter(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;)V

    :cond_0
    return-void
.end method

.method slideInGridView()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->animateIn()V

    :cond_0
    return-void
.end method

.method slideOutGridView()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->animateOut()V

    :cond_0
    return-void
.end method

.method switchToRows()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method switchToVideo()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    :goto_0
    return-void
.end method

.method switchToVideoBeforeVideoSupportFragmentCreated()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->switchToVideoBeforeCreate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->showTitle(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->slideOutGridView()V

    return-void
.end method
