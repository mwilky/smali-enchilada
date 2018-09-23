.class public final Landroid/support/v17/leanback/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/util/StateMachine$State;,
        Landroid/support/v17/leanback/util/StateMachine$Transition;,
        Landroid/support/v17/leanback/util/StateMachine$Condition;,
        Landroid/support/v17/leanback/util/StateMachine$Event;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final STATUS_INVOKED:I = 0x1

.field public static final STATUS_ZERO:I = 0x0

.field static final TAG:Ljava/lang/String; = "StateMachine"


# instance fields
.field final mFinishedStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/util/StateMachine$State;",
            ">;"
        }
    .end annotation
.end field

.field final mStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/util/StateMachine$State;",
            ">;"
        }
    .end annotation
.end field

.field final mUnfinishedStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/util/StateMachine$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addState(Landroid/support/v17/leanback/util/StateMachine$State;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Transition;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/util/StateMachine$Transition;-><init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addIncoming(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addOutgoing(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    return-void
.end method

.method public addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Transition;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v17/leanback/util/StateMachine$Transition;-><init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V

    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addIncoming(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addOutgoing(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    return-void
.end method

.method public addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Transition;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v17/leanback/util/StateMachine$Transition;-><init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addIncoming(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addOutgoing(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    return-void
.end method

.method public fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-boolean v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mBranchStart:Z

    if-nez v2, :cond_0

    iget v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    if-lez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/util/StateMachine$Transition;

    iget v4, v3, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    iget-object v4, v3, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    if-ne v4, p1, :cond_1

    iput v5, v3, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    iget v4, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    iget-boolean v4, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mBranchStart:Z

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/util/StateMachine;->runUnfinishedStates()V

    return-void
.end method

.method public reset()V
    .locals 5

    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/util/StateMachine$State;

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mStatus:I

    iput v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    iget-object v3, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/util/StateMachine$Transition;

    iput v2, v4, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method runUnfinishedStates()V
    .locals 4

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/util/StateMachine$State;

    invoke-virtual {v2}, Landroid/support/v17/leanback/util/StateMachine$State;->runIfNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v17/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/util/StateMachine;->runUnfinishedStates()V

    return-void
.end method
