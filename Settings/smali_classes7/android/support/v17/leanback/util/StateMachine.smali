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

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    .line 262
    return-void
.end method


# virtual methods
.method public addState(Landroid/support/v17/leanback/util/StateMachine$State;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v17/leanback/util/StateMachine$State;

    .line 269
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    return-void
.end method

.method public addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V
    .locals 1
    .param p1, "fromState"    # Landroid/support/v17/leanback/util/StateMachine$State;
    .param p2, "toState"    # Landroid/support/v17/leanback/util/StateMachine$State;

    .line 303
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Transition;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/util/StateMachine$Transition;-><init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V

    .line 304
    .local v0, "transition":Landroid/support/v17/leanback/util/StateMachine$Transition;
    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addIncoming(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    .line 305
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addOutgoing(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    .line 306
    return-void
.end method

.method public addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V
    .locals 1
    .param p1, "fromState"    # Landroid/support/v17/leanback/util/StateMachine$State;
    .param p2, "toState"    # Landroid/support/v17/leanback/util/StateMachine$State;
    .param p3, "condition"    # Landroid/support/v17/leanback/util/StateMachine$Condition;

    .line 292
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Transition;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v17/leanback/util/StateMachine$Transition;-><init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V

    .line 293
    .local v0, "transition":Landroid/support/v17/leanback/util/StateMachine$Transition;
    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addIncoming(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    .line 294
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addOutgoing(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    .line 295
    return-void
.end method

.method public addTransition(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V
    .locals 1
    .param p1, "fromState"    # Landroid/support/v17/leanback/util/StateMachine$State;
    .param p2, "toState"    # Landroid/support/v17/leanback/util/StateMachine$State;
    .param p3, "event"    # Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 281
    new-instance v0, Landroid/support/v17/leanback/util/StateMachine$Transition;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v17/leanback/util/StateMachine$Transition;-><init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V

    .line 282
    .local v0, "transition":Landroid/support/v17/leanback/util/StateMachine$Transition;
    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addIncoming(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    .line 283
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/util/StateMachine$State;->addOutgoing(Landroid/support/v17/leanback/util/StateMachine$Transition;)V

    .line 284
    return-void
.end method

.method public fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V
    .locals 6
    .param p1, "event"    # Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 339
    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/util/StateMachine$State;

    .line 340
    .local v1, "state":Landroid/support/v17/leanback/util/StateMachine$State;
    iget-object v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 341
    iget-boolean v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mBranchStart:Z

    if-nez v2, :cond_0

    iget v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    if-lez v2, :cond_0

    .line 342
    goto :goto_2

    .line 344
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

    .line 345
    .local v3, "t":Landroid/support/v17/leanback/util/StateMachine$Transition;
    iget v4, v3, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    iget-object v4, v3, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    if-ne v4, p1, :cond_1

    .line 349
    iput v5, v3, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    .line 350
    iget v4, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    .line 351
    iget-boolean v4, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mBranchStart:Z

    if-nez v4, :cond_1

    .line 352
    goto :goto_2

    .line 355
    .end local v3    # "t":Landroid/support/v17/leanback/util/StateMachine$Transition;
    :cond_1
    goto :goto_1

    .line 338
    .end local v1    # "state":Landroid/support/v17/leanback/util/StateMachine$State;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/util/StateMachine;->runUnfinishedStates()V

    .line 359
    return-void
.end method

.method public reset()V
    .locals 5

    .line 368
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 369
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 370
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

    .line 371
    .local v1, "state":Landroid/support/v17/leanback/util/StateMachine$State;
    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mStatus:I

    .line 372
    iput v2, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mInvokedOutTransitions:I

    .line 373
    iget-object v3, v1, Landroid/support/v17/leanback/util/StateMachine$State;->mOutgoings:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 374
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

    .line 375
    .local v4, "t":Landroid/support/v17/leanback/util/StateMachine$Transition;
    iput v2, v4, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    .line 376
    .end local v4    # "t":Landroid/support/v17/leanback/util/StateMachine$Transition;
    goto :goto_1

    .line 378
    .end local v1    # "state":Landroid/support/v17/leanback/util/StateMachine$State;
    :cond_0
    goto :goto_0

    .line 379
    :cond_1
    return-void
.end method

.method runUnfinishedStates()V
    .locals 4

    .line 322
    :cond_0
    const/4 v0, 0x0

    .line 323
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 324
    iget-object v2, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/util/StateMachine$State;

    .line 325
    .local v2, "state":Landroid/support/v17/leanback/util/StateMachine$State;
    invoke-virtual {v2}, Landroid/support/v17/leanback/util/StateMachine$State;->runIfNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 326
    iget-object v3, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 327
    iget-object v3, p0, Landroid/support/v17/leanback/util/StateMachine;->mFinishedStates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    const/4 v0, 0x1

    .line 323
    .end local v2    # "state":Landroid/support/v17/leanback/util/StateMachine$State;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 331
    .end local v1    # "i":I
    :cond_2
    if-nez v0, :cond_0

    .line 332
    return-void
.end method

.method public start()V
    .locals 2

    .line 315
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine;->mUnfinishedStates:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v17/leanback/util/StateMachine;->mStates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 316
    invoke-virtual {p0}, Landroid/support/v17/leanback/util/StateMachine;->runUnfinishedStates()V

    .line 317
    return-void
.end method
