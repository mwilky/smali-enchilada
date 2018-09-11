.class public Landroid/support/v17/leanback/app/BaseSupportFragment;
.super Landroid/support/v17/leanback/app/BrandedSupportFragment;
.source "BaseSupportFragment.java"


# instance fields
.field final COND_TRANSITION_NOT_SUPPORTED:Landroid/support/v17/leanback/util/StateMachine$Condition;

.field final EVT_ENTRANCE_END:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_PREPARE_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final EVT_START_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTRANCE_ON_ENDED:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

.field final STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

.field mEntranceTransition:Ljava/lang/Object;

.field final mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

.field final mStateMachine:Landroid/support/v17/leanback/util/StateMachine;


# direct methods
.method constructor <init>()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;-><init>()V

    .line 39
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string v1, "START"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 44
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string v1, "ENTRANCE_INIT"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 50
    new-instance v0, Landroid/support/v17/leanback/app/BaseSupportFragment$1;

    const-string v1, "ENTRANCE_ON_PREPARED"

    invoke-direct {v0, p0, v1, v3, v2}, Landroid/support/v17/leanback/app/BaseSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/BaseSupportFragment;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 63
    new-instance v0, Landroid/support/v17/leanback/app/BaseSupportFragment$2;

    const-string v1, "ENTRANCE_ON_PREPARED_ON_CREATEVIEW"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BaseSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/BaseSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 74
    new-instance v0, Landroid/support/v17/leanback/app/BaseSupportFragment$3;

    const-string v1, "STATE_ENTRANCE_PERFORM"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BaseSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/BaseSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 85
    new-instance v0, Landroid/support/v17/leanback/app/BaseSupportFragment$4;

    const-string v1, "ENTRANCE_ON_ENDED"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BaseSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/BaseSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_ENDED:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 95
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string v1, "ENTRANCE_COMPLETE"

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 100
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "onCreate"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 105
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "onCreateView"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 110
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "prepareEntranceTransition"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_PREPARE_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 115
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "startEntranceTransition"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_START_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 120
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "onEntranceTransitionEnd"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ENTRANCE_END:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 125
    new-instance v0, Landroid/support/v17/leanback/app/BaseSupportFragment$5;

    const-string v1, "EntranceTransitionNotSupport"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BaseSupportFragment$5;-><init>(Landroid/support/v17/leanback/app/BaseSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->COND_TRANSITION_NOT_SUPPORTED:Landroid/support/v17/leanback/util/StateMachine$Condition;

    .line 132
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine;

    invoke-direct {v0}, Landroid/support/v17/leanback/util/StateMachine;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    .line 135
    new-instance v0, Landroid/support/v17/leanback/app/ProgressBarManager;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    .line 139
    return-void
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 1

    .line 224
    const/4 v0, 0x0

    return-object v0
.end method

.method createStateMachineStates()V
    .locals 2

    .line 151
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 152
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 153
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 154
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 155
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 156
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_ENDED:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 157
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 158
    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    .line 161
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 162
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->COND_TRANSITION_NOT_SUPPORTED:Landroid/support/v17/leanback/util/StateMachine$Condition;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V

    .line 164
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 166
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_PREPARE_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 168
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 171
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_START_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 174
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 176
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_ENDED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ENTRANCE_END:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 179
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_ENDED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 180
    return-void
.end method

.method public final getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;
    .locals 1

    .line 317
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    return-object v0
.end method

.method internalCreateEntranceTransition()V
    .locals 2

    .line 299
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createEntranceTransition()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mEntranceTransition:Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mEntranceTransition:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 301
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mEntranceTransition:Ljava/lang/Object;

    new-instance v1, Landroid/support/v17/leanback/app/BaseSupportFragment$7;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/BaseSupportFragment$7;-><init>(Landroid/support/v17/leanback/app/BaseSupportFragment;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    .line 310
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 143
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineStates()V

    .line 144
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->createStateMachineTransitions()V

    .line 145
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    invoke-virtual {v0}, Landroid/support/v17/leanback/util/StateMachine;->start()V

    .line 146
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 148
    return-void
.end method

.method protected onEntranceTransitionEnd()V
    .locals 0

    .line 253
    return-void
.end method

.method protected onEntranceTransitionPrepare()V
    .locals 0

    .line 240
    return-void
.end method

.method protected onEntranceTransitionStart()V
    .locals 0

    .line 247
    return-void
.end method

.method onExecuteEntranceTransition()V
    .locals 3

    .line 272
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 273
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 275
    return-void

    .line 277
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Landroid/support/v17/leanback/app/BaseSupportFragment$6;

    invoke-direct {v2, p0, v0}, Landroid/support/v17/leanback/app/BaseSupportFragment$6;-><init>(Landroid/support/v17/leanback/app/BaseSupportFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 296
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 184
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 185
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 186
    return-void
.end method

.method public prepareEntranceTransition()V
    .locals 2

    .line 215
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_PREPARE_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 216
    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 0
    .param p1, "entranceTransition"    # Ljava/lang/Object;

    .line 233
    return-void
.end method

.method public startEntranceTransition()V
    .locals 2

    .line 267
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment;->EVT_START_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 268
    return-void
.end method
