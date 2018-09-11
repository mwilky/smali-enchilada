.class public Landroid/support/v17/leanback/app/BaseFragment;
.super Landroid/support/v17/leanback/app/BrandedFragment;
.source "BaseFragment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


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

    .line 143
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrandedFragment;-><init>()V

    .line 44
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string v1, "START"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 49
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string v1, "ENTRANCE_INIT"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 55
    new-instance v0, Landroid/support/v17/leanback/app/BaseFragment$1;

    const-string v1, "ENTRANCE_ON_PREPARED"

    invoke-direct {v0, p0, v1, v3, v2}, Landroid/support/v17/leanback/app/BaseFragment$1;-><init>(Landroid/support/v17/leanback/app/BaseFragment;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 68
    new-instance v0, Landroid/support/v17/leanback/app/BaseFragment$2;

    const-string v1, "ENTRANCE_ON_PREPARED_ON_CREATEVIEW"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BaseFragment$2;-><init>(Landroid/support/v17/leanback/app/BaseFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 79
    new-instance v0, Landroid/support/v17/leanback/app/BaseFragment$3;

    const-string v1, "STATE_ENTRANCE_PERFORM"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BaseFragment$3;-><init>(Landroid/support/v17/leanback/app/BaseFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 90
    new-instance v0, Landroid/support/v17/leanback/app/BaseFragment$4;

    const-string v1, "ENTRANCE_ON_ENDED"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BaseFragment$4;-><init>(Landroid/support/v17/leanback/app/BaseFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_ENDED:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 100
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$State;

    const-string v1, "ENTRANCE_COMPLETE"

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 105
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "onCreate"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 110
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "onCreateView"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 115
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "prepareEntranceTransition"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_PREPARE_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 120
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "startEntranceTransition"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_START_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 125
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Event;

    const-string v1, "onEntranceTransitionEnd"

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/util/StateMachine$Event;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_ENTRANCE_END:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 130
    new-instance v0, Landroid/support/v17/leanback/app/BaseFragment$5;

    const-string v1, "EntranceTransitionNotSupport"

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/BaseFragment$5;-><init>(Landroid/support/v17/leanback/app/BaseFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->COND_TRANSITION_NOT_SUPPORTED:Landroid/support/v17/leanback/util/StateMachine$Condition;

    .line 137
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine;

    invoke-direct {v0}, Landroid/support/v17/leanback/util/StateMachine;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    .line 140
    new-instance v0, Landroid/support/v17/leanback/app/ProgressBarManager;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    .line 144
    return-void
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 1

    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method createStateMachineStates()V
    .locals 2

    .line 156
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 157
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 158
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 159
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 160
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 161
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_ENDED:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 162
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->addState(Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 163
    return-void
.end method

.method createStateMachineTransitions()V
    .locals 4

    .line 166
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_START:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 167
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseFragment;->COND_TRANSITION_NOT_SUPPORTED:Landroid/support/v17/leanback/util/StateMachine$Condition;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V

    .line 169
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 171
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_INIT:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_PREPARE_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 173
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 176
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_START_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 179
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_PREPARED_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 181
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_PERFORM:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_ENDED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_ENTRANCE_END:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 184
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_ON_ENDED:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BaseFragment;->STATE_ENTRANCE_COMPLETE:Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 185
    return-void
.end method

.method public final getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;
    .locals 1

    .line 322
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    return-object v0
.end method

.method internalCreateEntranceTransition()V
    .locals 2

    .line 304
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseFragment;->createEntranceTransition()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mEntranceTransition:Ljava/lang/Object;

    .line 305
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mEntranceTransition:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 306
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mEntranceTransition:Ljava/lang/Object;

    new-instance v1, Landroid/support/v17/leanback/app/BaseFragment$7;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/BaseFragment$7;-><init>(Landroid/support/v17/leanback/app/BaseFragment;)V

    invoke-static {v0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransitionListener(Ljava/lang/Object;Landroid/support/v17/leanback/transition/TransitionListener;)V

    .line 315
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 148
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseFragment;->createStateMachineStates()V

    .line 149
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseFragment;->createStateMachineTransitions()V

    .line 150
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    invoke-virtual {v0}, Landroid/support/v17/leanback/util/StateMachine;->start()V

    .line 151
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BrandedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_ON_CREATE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 153
    return-void
.end method

.method protected onEntranceTransitionEnd()V
    .locals 0

    .line 258
    return-void
.end method

.method protected onEntranceTransitionPrepare()V
    .locals 0

    .line 245
    return-void
.end method

.method protected onEntranceTransitionStart()V
    .locals 0

    .line 252
    return-void
.end method

.method onExecuteEntranceTransition()V
    .locals 3

    .line 277
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 280
    return-void

    .line 282
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Landroid/support/v17/leanback/app/BaseFragment$6;

    invoke-direct {v2, p0, v0}, Landroid/support/v17/leanback/app/BaseFragment$6;-><init>(Landroid/support/v17/leanback/app/BaseFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 300
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 301
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

    .line 189
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BrandedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 190
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_ON_CREATEVIEW:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 191
    return-void
.end method

.method public prepareEntranceTransition()V
    .locals 2

    .line 220
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_PREPARE_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 221
    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 0
    .param p1, "entranceTransition"    # Ljava/lang/Object;

    .line 238
    return-void
.end method

.method public startEntranceTransition()V
    .locals 2

    .line 272
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseFragment;->EVT_START_ENTRANCE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 273
    return-void
.end method
