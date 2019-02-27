.class Lcom/android/internal/util/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;,
        Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;,
        Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    }
.end annotation


# static fields
.field private static final mSmHandlerObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lcom/android/internal/util/State;

.field private mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

.field private mHasQuit:Z

.field private mInitialState:Lcom/android/internal/util/State;

.field private mIsConstructionCompleted:Z

.field private mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

.field private mMsg:Landroid/os/Message;

.field private mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

.field private mSm:Lcom/android/internal/util/StateMachine;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/internal/util/State;",
            "Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

.field private mTempStateStackCount:I

.field private mTransitionInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHasQuit:Z

    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    new-instance v1, Lcom/android/internal/util/StateMachine$LogRecords;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/util/StateMachine$LogRecords;-><init>(Lcom/android/internal/util/StateMachine$1;)V

    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    new-instance v1, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V

    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    new-instance v1, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V

    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTransitionInProgress:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v0, v2}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->removeState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/util/StateMachine$SmHandler;)[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/util/StateMachine$SmHandler;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/util/StateMachine$SmHandler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->quit()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->quitNow()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/util/StateMachine$SmHandler;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->isDbg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/internal/util/StateMachine$SmHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->setDbg(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->completeConstruction()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    return-object v0
.end method

.method private final addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStateInternal: E state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-nez v0, :cond_2

    invoke-direct {p0, p2, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-nez v2, :cond_3

    new-instance v3, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V

    move-object v2, v3

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, v2, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-eqz v1, :cond_5

    iget-object v1, v2, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-ne v1, v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "state already added"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    iput-object p1, v2, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    iput-object v0, v2, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    const/4 v1, 0x0

    iput-boolean v1, v2, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStateInternal: X stateInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_6
    return-object v2
.end method

.method private final cleanupAfterQuitting()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine;->access$400(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine;->access$402(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine;->access$502(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler;

    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$LogRecords;->cleanup()V

    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHasQuit:Z

    return-void
.end method

.method private final completeConstruction()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const-string v1, "completeConstruction: E"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    const/4 v3, 0x0

    move v4, v3

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-ge v0, v4, :cond_2

    move v0, v4

    :cond_2
    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "completeConstruction: maxDepth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_4
    new-array v1, v0, [Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    new-array v1, v0, [Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iput-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->setupInitialStateStack()V

    const/4 v1, -0x2

    sget-object v2, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const-string v2, "completeConstruction: X"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deferMessage: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final getCurrentMessage()Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    return-object v0
.end method

.method private final getCurrentState()Lcom/android/internal/util/IState;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private final invokeEnterMethods(I)V
    .locals 4

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ne p1, v1, :cond_0

    iput-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTransitionInProgress:Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v1}, Lcom/android/internal/util/State;->enter()V

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTransitionInProgress:Z

    return-void
.end method

.method private final invokeExitMethods(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V
    .locals 4

    :goto_0
    iget v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/util/State;->exit()V

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final isDbg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    return v0
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$removeState$0(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .locals 7

    iget v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    move v1, v0

    :goto_0
    if-ltz v2, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget-object v4, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v4, v4, v2

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",startingIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v6, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v5}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private performTransitions(Lcom/android/internal/util/State;Landroid/os/Message;)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->recordLogRec(Landroid/os/Message;)Z

    move-result v1

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v9, v1

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine$LogRecords;->logOnlyTransitions()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v4, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    move-object v5, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    :cond_1
    if-eqz v9, :cond_2

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v4, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    iget-object v5, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    invoke-virtual {v4, v5}, Lcom/android/internal/util/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    move-object v5, p1

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    if-eqz v1, :cond_5

    :goto_2
    iget-boolean v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const-string v3, "handleMessage: new destination call exit/enter"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v2

    iput-boolean v8, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTransitionInProgress:Z

    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeExitMethods(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeEnterMethods(I)V

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V

    iget-object v4, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    if-eq v1, v4, :cond_4

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    :cond_5
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    if-ne v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2}, Lcom/android/internal/util/StateMachine;->onQuitting()V

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->cleanupAfterQuitting()V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    if-ne v1, v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2}, Lcom/android/internal/util/StateMachine;->onHalting()V

    :cond_7
    :goto_3
    return-void
.end method

.method private final processMsg(Landroid/os/Message;)Lcom/android/internal/util/State;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/State;->processMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/StateMachine;->unhandledMessage(Landroid/os/Message;)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method private final quit()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const-string v1, "quit:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    sget-object v1, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private final quitNow()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const-string v1, "quitNow:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    sget-object v1, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method private removeState(Lcom/android/internal/util/State;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/util/-$$Lambda$StateMachine$SmHandler$KkPO7NIVuI9r_FPEGrY6ux6a5Ks;

    invoke-direct {v2, v0}, Lcom/android/internal/util/-$$Lambda$StateMachine$SmHandler$KkPO7NIVuI9r_FPEGrY6ux6a5Ks;-><init>(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private final setDbg(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    return-void
.end method

.method private final setInitialState(Lcom/android/internal/util/State;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitialState: initialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    return-void
.end method

.method private final setupInitialStateStack()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {v2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$SmHandler;->moveTempStateStackToStateStack()I

    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    aput-object v0, v1, v2

    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTempStateStackCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",curStateInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private final transitionTo(Lcom/android/internal/util/IState;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mTransitionInProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-static {v0}, Lcom/android/internal/util/StateMachine;->access$700(Lcom/android/internal/util/StateMachine;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transitionTo called while transition already in progress to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new target state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/internal/util/State;

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transitionTo: destState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;

    invoke-virtual {v2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mHasQuit:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine;->onPreHandleMessage(Landroid/os/Message;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: E msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    const/4 v0, 0x0

    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget v3, v3, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget v3, v3, Landroid/os/Message;->what:I

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mMsg:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v4, Lcom/android/internal/util/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mIsConstructionCompleted:Z

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/util/StateMachine$SmHandler;->invokeEnterMethods(I)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateMachine.handleMessage: The start method not called, received msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->processMsg(Landroid/os/Message;)Lcom/android/internal/util/State;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->performTransitions(Lcom/android/internal/util/State;Landroid/os/Message;)V

    iget-boolean v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    const-string v4, "handleMessage: X"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    if-eqz v3, :cond_6

    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v2, :cond_6

    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$SmHandler;->mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/StateMachine;->onPostHandleMessage(Landroid/os/Message;)V

    :cond_6
    return-void
.end method
