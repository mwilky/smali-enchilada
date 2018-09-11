.class public Landroid/support/v17/leanback/app/DetailsFragment;
.super Landroid/support/v17/leanback/app/BaseFragment;
.source "DetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;,
        Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "DetailsFragment"


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

.field mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

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

.field mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

.field mSceneAfterEntranceTransition:Ljava/lang/Object;

.field final mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;

.field mVideoFragment:Landroid/app/Fragment;

.field mWaitEnterTransitionTimeout:Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 98
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseFragment;-><init>()V

    .line 102
    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$1;

    const-string v1, "STATE_SET_ENTRANCE_START_STATE"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsFragment$1;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 109
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string v1, "STATE_ENTER_TRANSIITON_INIT"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 120
    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$2;

    const-string v1, "STATE_SWITCH_TO_VIDEO_IN_ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Landroid/support/v17/leanback/app/DetailsFragment$2;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 128
    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$3;

    const-string v1, "STATE_ENTER_TRANSITION_CANCEL"

    invoke-direct {v0, p0, v1, v2, v2}, Landroid/support/v17/leanback/app/DetailsFragment$3;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 150
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string v1, "STATE_ENTER_TRANSIITON_COMPLETE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 153
    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$4;

    const-string v1, "STATE_ENTER_TRANSITION_PENDING"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsFragment$4;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 161
    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$5;

    const-string v1, "STATE_ENTER_TRANSITION_PENDING"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsFragment$5;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 193
    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$6;

    const-string v1, "STATE_ON_SAFE_START"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsFragment$6;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 200
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "onStart"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 202
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "EVT_NO_ENTER_TRANSITION"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 204
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "onFirstRowLoaded"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_DETAILS_ROW_LOADED:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 206
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "onEnterTransitionDone"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 208
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "switchToVideo"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 303
    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$7;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsFragment$7;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mEnterTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

    .line 324
    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$8;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsFragment$8;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mReturnTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

    .line 345
    iput-boolean v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    .line 351
    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;

    .line 353
    new-instance v0, Landroid/support/v17/leanback/app/DetailsFragment$9;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/DetailsFragment$9;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    return-void
.end method

.method private setupChildFragmentLayout()V
    .locals 1

    .line 572
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/DetailsFragment;->setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    .line 573
    return-void
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 2

    .line 783
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$transition;->lb_details_enter_transition:I

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method createStateMachineStates()V
    .locals 2

    .line 212
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->createStateMachineStates()V

    .line 213
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 214
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 215
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 216
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 217
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 218
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 219
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 220
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 221
    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    .line 225
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->createStateMachineTransitions()V

    .line 229
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 231
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->COND_TRANSITION_NOT_SUPPORTED:Landroid/support/v17/leanback/util/StateMachine$Condition;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V

    .line 234
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 238
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 240
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_CANCEL:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 243
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 248
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 252
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_ADDLISTENER:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_DETAILS_ROW_LOADED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 256
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_PENDING:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 263
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 265
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 267
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 270
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SWITCH_TO_VIDEO_IN_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 275
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_SET_ENTRANCE_START_STATE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 282
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 283
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 284
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ENTER_TRANSITION_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->STATE_ON_SAFE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 285
    return-void
.end method

.method final findOrCreateVideoFragment()Landroid/app/Fragment;
    .locals 4

    .line 618
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    return-object v0

    .line 621
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->video_surface_container:I

    .line 622
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 623
    .local v0, "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    if-eqz v1, :cond_1

    .line 624
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 625
    .local v1, "ft2":Landroid/app/FragmentTransaction;
    sget v2, Landroid/support/v17/leanback/R$id;->video_surface_container:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    .line 626
    invoke-virtual {v3}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->onCreateVideoFragment()Landroid/app/Fragment;

    move-result-object v3

    move-object v0, v3

    .line 625
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 627
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 628
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    if-eqz v2, :cond_1

    .line 631
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/support/v17/leanback/app/DetailsFragment$12;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/DetailsFragment$12;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 642
    .end local v1    # "ft2":Landroid/app/FragmentTransaction;
    :cond_1
    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    .line 643
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    return-object v1
.end method

.method public getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 392
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;
    .locals 1

    .line 418
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    return-object v0
.end method

.method public getParallax()Landroid/support/v17/leanback/widget/DetailsParallax;
    .locals 2

    .line 816
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    if-nez v0, :cond_0

    .line 817
    new-instance v0, Landroid/support/v17/leanback/widget/DetailsParallax;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/DetailsParallax;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    .line 818
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsParallax;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 822
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    return-object v0
.end method

.method public getRowsFragment()Landroid/support/v17/leanback/app/RowsFragment;
    .locals 1

    .line 564
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    return-object v0
.end method

.method getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    .line 555
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

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

    .line 497
    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/BaseFragment;->onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 423
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 424
    nop

    .line 425
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_details_rows_align_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mContainerListAlignTop:I

    .line 427
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 428
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 429
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->getEnterTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v1

    .line 430
    .local v1, "transition":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 431
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 433
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->getReturnTransition(Landroid/view/Window;)Ljava/lang/Object;

    move-result-object v1

    .line 434
    if-eqz v1, :cond_1

    .line 435
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mReturnTransitionListener:Landroid/support/v17/leanback/transition/TransitionListener;

    invoke-static {v1, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    .line 437
    .end local v1    # "transition":Ljava/lang/Object;
    :cond_1
    goto :goto_0

    .line 438
    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_NO_ENTER_TRANSITION:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 440
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 445
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_details_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    .line 447
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    sget v1, Landroid/support/v17/leanback/R$id;->details_background_view:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mBackgroundView:Landroid/view/View;

    .line 448
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 451
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->details_rows_dock:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 453
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-nez v0, :cond_1

    .line 454
    new-instance v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/RowsFragment;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 455
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->details_rows_dock:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 456
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 458
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    invoke-virtual {p0, p1, v0, p3}, Landroid/support/v17/leanback/app/DetailsFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 459
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 460
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 461
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 463
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsFragment$10;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsFragment$10;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->createScene(Landroid/view/ViewGroup;Ljava/lang/Runnable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    .line 470
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->setupDpadNavigation()V

    .line 472
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 474
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsFragment$11;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsFragment$11;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setExternalAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    .line 488
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    return-object v0
.end method

.method protected onEntranceTransitionEnd()V
    .locals 1

    .line 794
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->onTransitionEnd()V

    .line 795
    return-void
.end method

.method protected onEntranceTransitionPrepare()V
    .locals 1

    .line 799
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->onTransitionPrepare()Z

    .line 800
    return-void
.end method

.method protected onEntranceTransitionStart()V
    .locals 1

    .line 804
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->onTransitionStart()V

    .line 805
    return-void
.end method

.method public onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 503
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/DetailsFragment;->inflateTitle(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method onReturnTransitionStart()V
    .locals 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 688
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->disableVideoParallax()Z

    move-result v0

    .line 693
    .local v0, "isVideoVisible":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 695
    .local v1, "ft2":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 696
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 697
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    .line 700
    .end local v0    # "isVideoVisible":Z
    .end local v1    # "ft2":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method onRowSelected(II)V
    .locals 12
    .param p1, "selectedPosition"    # I
    .param p2, "selectedSubPosition"    # I

    .line 647
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    .line 648
    .local v0, "adapter":Landroid/support/v17/leanback/widget/ObjectAdapter;
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 649
    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v1

    if-nez v1, :cond_1

    .line 652
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedSubPosition()I

    move-result v1

    if-nez v1, :cond_1

    .line 653
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/DetailsFragment;->showTitle(Z)V

    goto :goto_0

    .line 655
    :cond_1
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/DetailsFragment;->showTitle(Z)V

    .line 657
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 658
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    .line 659
    .local v1, "gridView":Landroid/support/v17/leanback/widget/VerticalGridView;
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v3

    .line 660
    .local v3, "count":I
    if-lez v3, :cond_2

    .line 661
    iget-object v4, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v5, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_DETAILS_ROW_LOADED:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 663
    :cond_2
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 664
    nop

    .line 665
    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 666
    .local v4, "bridgeViewHolder":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v5

    check-cast v5, Landroid/support/v17/leanback/widget/RowPresenter;

    .line 667
    .local v5, "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    nop

    .line 668
    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v17/leanback/widget/RowPresenter;->getRowViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    move-result-object v8

    .line 669
    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getAdapterPosition()I

    move-result v9

    .line 667
    move-object v6, p0

    move-object v7, v5

    move v10, p1

    move v11, p2

    invoke-virtual/range {v6 .. v11}, Landroid/support/v17/leanback/app/DetailsFragment;->onSetRowStatus(Landroid/support/v17/leanback/widget/RowPresenter;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;III)V

    .line 663
    .end local v4    # "bridgeViewHolder":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    .end local v5    # "rowPresenter":Landroid/support/v17/leanback/widget/RowPresenter;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 673
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

    .line 681
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->onStart()V

    .line 684
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

    .line 753
    const/4 v0, 0x0

    if-le p4, p3, :cond_0

    .line 754
    invoke-virtual {p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    goto :goto_0

    .line 755
    :cond_0
    const/4 v1, 0x1

    if-ne p4, p3, :cond_1

    if-ne p5, v1, :cond_1

    .line 756
    invoke-virtual {p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    goto :goto_0

    .line 757
    :cond_1
    if-ne p4, p3, :cond_2

    if-nez p5, :cond_2

    .line 758
    invoke-virtual {p1, p2, v1}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    goto :goto_0

    .line 760
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    .line 763
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

    .line 727
    instance-of v0, p1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    if-eqz v0, :cond_0

    .line 728
    move-object v2, p1

    check-cast v2, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    move-object v3, p2

    check-cast v3, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/support/v17/leanback/app/DetailsFragment;->onSetDetailsOverviewRowStatus(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;III)V

    .line 732
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 767
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->onStart()V

    .line 769
    invoke-direct {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->setupChildFragmentLayout()V

    .line 770
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ONSTART:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 771
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsParallax;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 774
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    if-eqz v0, :cond_1

    .line 775
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->slideOutGridView()V

    goto :goto_0

    .line 776
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 777
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 779
    :cond_2
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 704
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->onStop()V

    .line 707
    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseFragment;->onStop()V

    .line 708
    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 1
    .param p1, "entranceTransition"    # Ljava/lang/Object;

    .line 789
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v17/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 790
    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 374
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 375
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenters()[Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    .line 376
    .local v0, "presenters":[Landroid/support/v17/leanback/widget/Presenter;
    if-eqz v0, :cond_0

    .line 377
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 378
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/app/DetailsFragment;->setupPresenter(Landroid/support/v17/leanback/widget/Presenter;)V

    .line 377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    .end local v1    # "i":I
    :cond_0
    const-string v1, "DetailsFragment"

    const-string v2, "PresenterSelector.getPresenters() not implemented"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v1, :cond_2

    .line 384
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/app/RowsFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 386
    :cond_2
    return-void
.end method

.method setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 832
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 835
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 836
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 406
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    if-eq v0, p1, :cond_0

    .line 407
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 408
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 412
    :cond_0
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 399
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mExternalOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 400
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 579
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/DetailsFragment;->setSelectedPosition(IZ)V

    .line 580
    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "smooth"    # Z

    .line 586
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;

    iput p1, v0, Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;->mPosition:I

    .line 587
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;

    iput-boolean p2, v0, Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;->mSmooth:Z

    .line 588
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/DetailsFragment$SetSelectionRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 591
    :cond_0
    return-void
.end method

.method setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 2
    .param p1, "listview"    # Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 508
    iget v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mContainerListAlignTop:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    .line 509
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    .line 510
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    .line 511
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 512
    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 513
    return-void
.end method

.method protected setupDetailsOverviewRowPresenter(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;)V
    .locals 6
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    .line 534
    new-instance v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;-><init>()V

    .line 536
    .local v0, "facet":Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
    new-instance v1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 537
    .local v1, "alignDef1":Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    sget v2, Landroid/support/v17/leanback/R$id;->details_frame:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentViewId(I)V

    .line 538
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_align_pos_for_actions:I

    .line 539
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v2, v2

    .line 538
    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    .line 540
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    .line 542
    new-instance v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v3}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 543
    .local v3, "alignDef2":Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    sget v4, Landroid/support/v17/leanback/R$id;->details_frame:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentViewId(I)V

    .line 544
    sget v4, Landroid/support/v17/leanback/R$id;->details_overview_description:I

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentFocusViewId(I)V

    .line 545
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$dimen;->lb_details_v2_align_pos_for_description:I

    .line 546
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    neg-int v4, v4

    .line 545
    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    .line 547
    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    .line 548
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 550
    .local v2, "defs":[Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->setAlignmentDefs([Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;)V

    .line 551
    const-class v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {p1, v4, v0}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setFacet(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 552
    return-void
.end method

.method setupDpadNavigation()V
    .locals 2

    .line 849
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsFragment$13;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsFragment$13;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnChildFocusListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnChildFocusListener;)V

    .line 873
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsFragment$14;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsFragment$14;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    .line 900
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mRootView:Landroid/support/v17/leanback/widget/BrowseFrameLayout;

    new-instance v1, Landroid/support/v17/leanback/app/DetailsFragment$15;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsFragment$15;-><init>(Landroid/support/v17/leanback/app/DetailsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/BrowseFrameLayout;->setOnDispatchKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 919
    return-void
.end method

.method protected setupPresenter(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 1
    .param p1, "rowPresenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 523
    instance-of v0, p1, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    if-eqz v0, :cond_0

    .line 524
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/DetailsFragment;->setupDetailsOverviewRowPresenter(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;)V

    .line 526
    :cond_0
    return-void
.end method

.method slideInGridView()V
    .locals 1

    .line 931
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 932
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->animateIn()V

    .line 934
    :cond_0
    return-void
.end method

.method slideOutGridView()V
    .locals 1

    .line 925
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->animateOut()V

    .line 928
    :cond_0
    return-void
.end method

.method switchToRows()V
    .locals 2

    .line 602
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    .line 603
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 604
    .local v0, "verticalGridView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 605
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 607
    :cond_0
    return-void
.end method

.method switchToVideo()V
    .locals 2

    .line 594
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mVideoFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 597
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_SWITCH_TO_VIDEO:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 599
    :goto_0
    return-void
.end method

.method switchToVideoBeforeVideoFragmentCreated()V
    .locals 1

    .line 114
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mDetailsBackgroundController:Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragmentBackgroundController;->switchToVideoBeforeCreate()V

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/DetailsFragment;->showTitle(Z)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsFragment;->mPendingFocusOnVideo:Z

    .line 117
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsFragment;->slideOutGridView()V

    .line 118
    return-void
.end method
