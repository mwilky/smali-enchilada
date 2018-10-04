.class public Landroid/app/servertransaction/TransactionExecutorHelper;
.super Ljava/lang/Object;
.source "TransactionExecutorHelper.java"


# static fields
.field private static final DESTRUCTION_PENALTY:I = 0xa

.field private static final ON_RESUME_PRE_EXCUTION_STATES:[I


# instance fields
.field private mLifecycleSequence:Landroid/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/servertransaction/TransactionExecutorHelper;->ON_RESUME_PRE_EXCUTION_STATES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    return-void
.end method

.method public static getLifecycleRequestForCurrentState(Landroid/app/ActivityThread$ActivityClientRecord;)Landroid/app/servertransaction/ActivityLifecycleItem;
    .locals 3

    invoke-virtual {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/ActivityThread$ActivityClientRecord;->isVisibleFromServer()Z

    move-result v2

    invoke-static {v2, v1}, Landroid/app/servertransaction/StopActivityItem;->obtain(ZI)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v1

    nop

    :goto_0
    nop

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static lastCallbackRequestingState(Landroid/app/servertransaction/ClientTransaction;)I
    .locals 7

    invoke-virtual {p0}, Landroid/app/servertransaction/ClientTransaction;->getCallbacks()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v5}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v6

    if-eq v6, v1, :cond_2

    if-eq v2, v1, :cond_1

    if-ne v2, v6, :cond_3

    :cond_1
    move v2, v6

    move v3, v4

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v1
.end method

.method private static pathInvolvesDestruction(Landroid/util/IntArray;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getClosestOfStates(Landroid/app/ActivityThread$ActivityClientRecord;[I)I
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p2, :cond_4

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const v3, 0x7fffffff

    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_3

    aget v4, p2, v2

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecyclePath(IIZ)Landroid/util/IntArray;

    iget-object v4, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v4

    iget-object v5, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-static {v5}, Landroid/app/servertransaction/TransactionExecutorHelper;->pathInvolvesDestruction(Landroid/util/IntArray;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0xa

    :cond_1
    if-le v3, v4, :cond_2

    move v3, v4

    aget v1, p2, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 v0, -0x1

    return v0
.end method

.method public getClosestPreExecutionState(Landroid/app/ActivityThread$ActivityClientRecord;I)I
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    sget-object v0, Landroid/app/servertransaction/TransactionExecutorHelper;->ON_RESUME_PRE_EXCUTION_STATES:[I

    invoke-virtual {p0, p1, v0}, Landroid/app/servertransaction/TransactionExecutorHelper;->getClosestOfStates(Landroid/app/ActivityThread$ActivityClientRecord;[I)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-execution states for state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0
.end method

.method public getLifecyclePath(IIZ)Landroid/util/IntArray;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    if-eq p2, v0, :cond_a

    const/4 v0, 0x7

    if-eq p1, v0, :cond_9

    if-eq p2, v0, :cond_9

    if-nez p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only start in pre-onCreate state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    const/4 v1, 0x1

    if-lt p2, p1, :cond_2

    add-int/lit8 v0, p1, 0x1

    :goto_1
    if-gt v0, p2, :cond_7

    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    const/4 v2, 0x3

    if-ne p2, v2, :cond_3

    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->add(I)V

    goto :goto_6

    :cond_3
    const/4 v2, 0x5

    if-gt p1, v2, :cond_5

    const/4 v3, 0x2

    if-lt p2, v3, :cond_5

    add-int/lit8 v4, p1, 0x1

    :goto_2
    if-gt v4, v2, :cond_4

    iget-object v5, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v5, v4}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->add(I)V

    nop

    :goto_3
    move v0, v3

    if-gt v0, p2, :cond_7

    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v3, v0, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, p1, 0x1

    :goto_4
    const/4 v2, 0x6

    if-gt v0, v2, :cond_6

    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_5
    if-gt v0, p2, :cond_7

    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->add(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    if-eqz p3, :cond_8

    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/util/IntArray;->remove(I)V

    :cond_8
    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutorHelper;->mLifecycleSequence:Landroid/util/IntArray;

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t start or finish in intermittent RESTART state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t resolve lifecycle path for undefined state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
