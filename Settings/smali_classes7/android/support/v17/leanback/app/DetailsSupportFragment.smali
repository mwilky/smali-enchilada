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

    .line 93
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;-><init>()V

    .line 97
    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$1;

    const-string v1, "STATE_SET_ENTRANCE_START_STATE"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 104
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string v1, "STATE_ENTER_TRANSIITON_INIT"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 115
    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$2;

    const-string v1, "STATE_SWITCH_TO_VIDEO_IN_ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Landroid/support/v17/leanback/app/DetailsSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 123
    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$3;

    const-string v1, "STATE_ENTER_TRANSITION_CANCEL"

    invoke-direct {v0, p0, v1, v2, v2}, Landroid/support/v17/leanback/app/DetailsSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 145
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string v1, "STATE_ENTER_TRANSIITON_COMPLETE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 148
    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$4;

    const-string v1, "STATE_ENTER_TRANSITION_PENDING"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 156
    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$5;

    const-string v1, "STATE_ENTER_TRANSITION_PENDING"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsSupportFragment$5;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 188
    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$6;

    const-string v1, "STATE_ON_SAFE_START"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsSupportFragment$6;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 195
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "onStart"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 197
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "EVT_NO_ENTER_TRANSITION"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 199
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "onFirstRowLoaded"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_DETAILS_ROW_LOADED:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 201
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "onEnterTransitionDone"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 203
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "switchToVideo"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 298
    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$7;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mEnterTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

    .line 319
    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$8;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$8;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mReturnTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

    .line 340
    iput-boolean v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    .line 346
    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

    .line 348
    new-instance v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$9;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$9;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    return-void
.end method

.method private setupChildFragmentLayout()V
    .locals 1

    .line 567
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    .line 568
    return-void
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 2

    .line 778
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$transition;->lb_details_enter_transition:I

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createStateMachineStates()V
    .locals 2

    .line 207
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineStates()V

    .line 208
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 209
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 210
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 211
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 212
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 213
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 214
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 215
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 216
    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    .line 220
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineTransitions()V

    .line 224
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 226
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->COND_TRANSITION_NOT_SUPPORTED:Landroid/support/v17/leanback/util/StateMachine$Condition;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V

    .line 229
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 233
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 235
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 238
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 243
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 247
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_DETAILS_ROW_LOADED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 251
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 258
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 260
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 262
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 265
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 270
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 277
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 278
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 279
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 280
    return-void
.end method

.method final findOrCreateVideoSupportFragment()Landroid/support/v4/app/Fragment;
    .locals 4

    .line 613
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    return-object v0

    .line 616
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->video_surface_container:I

    .line 617
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 618
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    if-eqz v1, :cond_1

    .line 619
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 620
    .local v1, "ft2":Landroid/support/v4/app/FragmentTransaction;
    sget v2, Landroid/support/v17/leanback/R$id;->video_surface_container:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    .line 621
    invoke-virtual {v3}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->onCreateVideoSupportFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    move-object v0, v3

    .line 620
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 622
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 623
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    if-eqz v2, :cond_1

    .line 626
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/support/v17/leanback/app/DetailsSupportFragment$12;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$12;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 637
    .end local v1    # "ft2":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    .line 638
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    return-object v1
.end method

.method public getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 387
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;
    .locals 1

    .line 413
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    return-object v0
.end method

.method public getParallax()Landroid/support/v17/leanback/widget/DetailsParallax;
    .locals 2

    .line 811
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    if-nez v0, :cond_0

    .line 812
    new-instance v0, Landroid/support/v17/leanback/widget/DetailsParallax;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/DetailsParallax;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    .line 813
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsParallax;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 817
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    return-object v0
.end method

.method public getRowsSupportFragment()Landroid/support/v17/leanback/app/RowsSupportFragment;
    .locals 1

    .line 559
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    return-object v0
.end method

.method getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    .line 550
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
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 492
    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 418
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 419
    nop

    .line 420
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_details_rows_align_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mContainerListAlignTop:I

    .line 422
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 423
    .local v0, "activity":Landroid/support/v4/app/FragmentActivity;
    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v1

    .line 425
    .local v1, "transition":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 426
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 428
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v1

    .line 429
    if-eqz v1, :cond_1

    .line 430
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mReturnTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-static {v1, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    .line 432
    .end local v1    # "transition":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 433
    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 435
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 440
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_details_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    .line 442
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    sget v1, Landroid/support/v17/leanback/R$id;->details_background_view:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mBackgroundView:Landroid/view/View;

    .line 443
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 446
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->details_rows_dock:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 448
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-nez v0, :cond_1

    .line 449
    new-instance v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 450
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->details_rows_dock:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 451
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 453
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p0, p1, v0, p3}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 454
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 455
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 456
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 458
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsSupportFragment$10;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$10;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    .line 465
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->setupDpadNavigation()V

    .line 467
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 469
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsSupportFragment$11;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$11;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setExternalAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    .line 483
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    return-object v0
.end method

.method protected onEntranceTransitionEnd()V
    .locals 1

    .line 789
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->onTransitionEnd()V

    .line 790
    return-void
.end method

.method protected onEntranceTransitionPrepare()V
    .locals 1

    .line 794
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->onTransitionPrepare()Z

    .line 795
    return-void
.end method

.method protected onEntranceTransitionStart()V
    .locals 1

    .line 799
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->onTransitionStart()V

    .line 800
    return-void
.end method

.method public onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 498
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->inflateTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method onReturnTransitionStart()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 683
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->disableVideoParallax()Z

    move-result v0

    .line 688
    .local v0, "isVideoVisible":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 689
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 690
    .local v1, "ft2":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 691
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 692
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    .line 695
    .end local v0    # "isVideoVisible":Z
    .end local v1    # "ft2":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method onRowSelected(II)V
    .locals 12
    .param p1, "selectedPosition"    # I
    .param p2, "selectedSubPosition"    # I

    .line 642
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    .line 643
    .local v0, "adapter":Landroid/support/v17/leanback/widget/ObjectAdapter;
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 644
    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v1

    if-nez v1, :cond_1

    .line 647
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedSubPosition()I

    move-result v1

    if-nez v1, :cond_1

    .line 648
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->showTitle(Z)V

    goto :goto_0

    .line 650
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->showTitle(Z)V

    .line 652
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 653
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    .line 654
    .local v1, "gridView":Landroid/support/v17/leanback/widget/VerticalGridView;
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v3

    .line 655
    .local v3, "count":I
    if-lez v3, :cond_2

    .line 656
    iget-object v4, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v5, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_DETAILS_ROW_LOADED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 658
    :cond_2
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 659
    nop

    .line 660
    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 661
    .local v4, "bridgeViewHolder":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v5

    check-cast v5, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 662
    .local v5, "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    nop

    .line 663
    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v8

    .line 664
    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getAdapterPosition()I

    move-result v9

    .line 662
    move-object v6, p0

    move-object v7, v5

    move v10, p1

    move v11, p2

    invoke-virtual/range {v6 .. v11}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->onSetRowStatus(Landroid/support/v17/leanback/widget/RowPresenter;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;III)V

    .line 658
    .end local v4    # "bridgeViewHolder":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    .end local v5    # "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 668
    .end local v1    # "gridView":Landroid/support/v17/leanback/widget/VerticalGridView;
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_3
    return-void
.end method

.method onSafeStart()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 676
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->onStart()V

    .line 679
    :cond_0
    return-void
.end method

.method protected onSetDetailsOverviewRowStatus(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;III)V
    .locals 2
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;
    .param p2, "viewHolder"    # Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    .param p3, "adapterPosition"    # I
    .param p4, "selectedPosition"    # I
    .param p5, "selectedSubPosition"    # I

    .line 748
    const/4 v0, 0x0

    if-le p4, p3, :cond_0

    .line 749
    invoke-virtual {p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    goto :goto_0

    .line 750
    :cond_0
    const/4 v1, 0x1

    if-ne p4, p3, :cond_1

    if-ne p5, v1, :cond_1

    .line 751
    invoke-virtual {p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    goto :goto_0

    .line 752
    :cond_1
    if-ne p4, p3, :cond_2

    if-nez p5, :cond_2

    .line 753
    invoke-virtual {p1, p2, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    goto :goto_0

    .line 755
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    .line 758
    :goto_0
    return-void
.end method

.method protected onSetRowStatus(Landroid/support/v17/leanback/widget/RowPresenter;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;III)V
    .locals 7
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/RowPresenter;
    .param p2, "viewHolder"    # Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;
    .param p3, "adapterPosition"    # I
    .param p4, "selectedPosition"    # I
    .param p5, "selectedSubPosition"    # I

    .line 722
    instance-of v0, p1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    if-eqz v0, :cond_0

    .line 723
    move-object v2, p1

    check-cast v2, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    move-object v3, p2

    check-cast v3, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->onSetDetailsOverviewRowStatus(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;III)V

    .line 727
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 762
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onStart()V

    .line 764
    invoke-direct {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->setupChildFragmentLayout()V

    .line 765
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 766
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsParallax;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 769
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    if-eqz v0, :cond_1

    .line 770
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->slideOutGridView()V

    goto :goto_0

    .line 771
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 772
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 774
    :cond_2
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 699
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->onStop()V

    .line 702
    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onStop()V

    .line 703
    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entranceTransition"    # Ljava/lang/Object;

    .line 784
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 785
    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 369
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 370
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenters()[Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    .line 371
    .local v0, "presenters":[Landroid/support/v17/leanback/widget/Presenter;
    if-eqz v0, :cond_0

    .line 372
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 373
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->setupPresenter(Landroid/support/v17/leanback/widget/Presenter;)V

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    .end local v1    # "i":I
    :cond_0
    const-string v1, "DetailsSupportFragment"

    const-string v2, "PresenterSelector.getPresenters() not implemented"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v1, :cond_2

    .line 379
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 381
    :cond_2
    return-void
.end method

.method setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 827
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 830
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 831
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 401
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    if-eq v0, p1, :cond_0

    .line 402
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 403
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 407
    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 394
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 395
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 574
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->setSelectedPosition(IZ)V

    .line 575
    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "smooth"    # Z

    .line 581
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

    iput p1, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;->mPosition:I

    .line 582
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

    iput-boolean p2, v0, Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;->mSmooth:Z

    .line 583
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsSupportFragment$SetSelectionRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    :cond_0
    return-void
.end method

.method setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 2
    .param p1, "listview"    # Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 503
    iget v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mContainerListAlignTop:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    .line 504
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    .line 505
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    .line 506
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 507
    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 508
    return-void
.end method

.method protected setupDetailsOverviewRowPresenter(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;)V
    .locals 6
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    .line 529
    new-instance v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;-><init>()V

    .line 531
    .local v0, "facet":Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
    new-instance v1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 532
    .local v1, "alignDef1":Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    sget v2, Landroid/support/v17/leanback/R$id;->details_frame:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentViewId(I)V

    .line 533
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_align_pos_for_actions:I

    .line 534
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    .line 533
    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    .line 535
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    .line 537
    new-instance v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v3}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 538
    .local v3, "alignDef2":Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    sget v4, Landroid/support/v17/leanback/R$id;->details_frame:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentViewId(I)V

    .line 539
    sget v4, Landroid/support/v17/leanback/R$id;->details_overview_description:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentFocusViewId(I)V

    .line 540
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_align_pos_for_description:I

    .line 541
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    neg-int v4, v4

    .line 540
    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    .line 542
    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    .line 543
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 545
    .local v2, "defs":[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->setAlignmentDefs([Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;)V

    .line 546
    const-class v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {p1, v4, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setFacet(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 547
    return-void
.end method

.method setupDpadNavigation()V
    .locals 2

    .line 844
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$13;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnChildFocusListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;)V

    .line 868
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$14;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    .line 895
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsSupportFragment$15;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment$15;-><init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnDispatchKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 914
    return-void
.end method

.method protected setupPresenter(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 1
    .param p1, "rowPresenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 518
    instance-of v0, p1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    if-eqz v0, :cond_0

    .line 519
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->setupDetailsOverviewRowPresenter(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;)V

    .line 521
    :cond_0
    return-void
.end method

.method slideInGridView()V
    .locals 1

    .line 926
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->animateIn()V

    .line 929
    :cond_0
    return-void
.end method

.method slideOutGridView()V
    .locals 1

    .line 920
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->animateOut()V

    .line 923
    :cond_0
    return-void
.end method

.method switchToRows()V
    .locals 2

    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    .line 598
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 599
    .local v0, "verticalGridView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 600
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 602
    :cond_0
    return-void
.end method

.method switchToVideo()V
    .locals 2

    .line 589
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mVideoSupportFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 592
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 594
    :goto_0
    return-void
.end method

.method switchToVideoBeforeVideoSupportFragmentCreated()V
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragmentBackgroundController;->switchToVideoBeforeCreate()V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->showTitle(Z)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment;->mPendingFocusOnVideo:Z

    .line 112
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->slideOutGridView()V

    .line 113
    return-void
.end method
