.class Landroid/support/v17/leanback/util/StateMachine$Transition;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Transition"
.end annotation


# instance fields
.field final mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

.field final mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

.field final mFromState:Landroid/support/v17/leanback/util/StateMachine$State;

.field mState:I

.field final mToState:Landroid/support/v17/leanback/util/StateMachine$State;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;)V
    .locals 1
    .param p1, "fromState"    # Landroid/support/v17/leanback/util/StateMachine$State;
    .param p2, "toState"    # Landroid/support/v17/leanback/util/StateMachine$State;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    .line 101
    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mFromState:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 102
    iput-object p2, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mToState:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 104
    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    .line 105
    return-void
.end method

.method constructor <init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Condition;)V
    .locals 1
    .param p1, "fromState"    # Landroid/support/v17/leanback/util/StateMachine$State;
    .param p2, "toState"    # Landroid/support/v17/leanback/util/StateMachine$State;
    .param p3, "condition"    # Landroid/support/v17/leanback/util/StateMachine$Condition;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    .line 108
    if-eqz p3, :cond_0

    .line 111
    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mFromState:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 112
    iput-object p2, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mToState:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 114
    iput-object p3, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    .line 115
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method constructor <init>(Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$State;Landroid/support/v17/leanback/util/StateMachine$Event;)V
    .locals 1
    .param p1, "fromState"    # Landroid/support/v17/leanback/util/StateMachine$State;
    .param p2, "toState"    # Landroid/support/v17/leanback/util/StateMachine$State;
    .param p3, "event"    # Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mState:I

    .line 91
    if-eqz p3, :cond_0

    .line 94
    iput-object p1, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mFromState:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 95
    iput-object p2, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mToState:Landroid/support/v17/leanback/util/StateMachine$State;

    .line 96
    iput-object p3, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    .line 98
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 120
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mEvent:Landroid/support/v17/leanback/util/StateMachine$Event;

    iget-object v0, v0, Landroid/support/v17/leanback/util/StateMachine$Event;->mName:Ljava/lang/String;

    .local v0, "signalName":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 122
    .end local v0    # "signalName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mCondition:Landroid/support/v17/leanback/util/StateMachine$Condition;

    iget-object v0, v0, Landroid/support/v17/leanback/util/StateMachine$Condition;->mName:Ljava/lang/String;

    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "auto"

    .line 127
    .restart local v0    # "signalName":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mFromState:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, v2, Landroid/support/v17/leanback/util/StateMachine$State;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v17/leanback/util/StateMachine$Transition;->mToState:Landroid/support/v17/leanback/util/StateMachine$State;

    iget-object v2, v2, Landroid/support/v17/leanback/util/StateMachine$State;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
