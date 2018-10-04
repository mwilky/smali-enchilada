.class final Landroid/app/FragmentManagerImpl;
.super Landroid/app/FragmentManager;
.source "FragmentManager.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;,
        Landroid/app/FragmentManagerImpl$PopBackStackState;,
        Landroid/app/FragmentManagerImpl$OpGenerator;,
        Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field mActive:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAllowOldReentrantBehavior:Z

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroid/app/FragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroid/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field

.field final mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/util/Pair<",
            "Landroid/app/FragmentManager$FragmentLifecycleCallbacks;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNextFragmentIndex:I

.field mNoTransactionsBecause:Ljava/lang/String;

.field mParent:Landroid/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/FragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroid/app/Fragment;

.field mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/FragmentManager;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    new-instance v0, Landroid/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/app/FragmentManagerImpl$1;-><init>(Landroid/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$200(Landroid/app/FragmentManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->scheduleCommit()V

    return-void
.end method

.method static synthetic access$300(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->completeExecute(Landroid/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method private addAddedFragments(Landroid/util/ArraySet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    move v8, v2

    if-ge v8, v1, :cond_2

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/app/Fragment;

    iget v2, v9, Landroid/app/Fragment;->mState:I

    if-ge v2, v0, :cond_1

    invoke-virtual {v9}, Landroid/app/Fragment;->getNextAnim()I

    move-result v5

    invoke-virtual {v9}, Landroid/app/Fragment;->getNextTransition()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    iget-object v2, v9, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, v9, Landroid/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    iget-boolean v2, v9, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v8, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private burpActive()V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cleanupExec()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private completeExecute(Landroid/app/BackStackRecord;ZZZ)V
    .locals 9

    if-eqz p2, :cond_0

    invoke-virtual {p1, p4}, Landroid/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/BackStackRecord;->executeOps()V

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v0

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Landroid/app/FragmentTransition;->startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_1
    if-eqz p4, :cond_2

    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v2, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    :cond_2
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    if-eqz v4, :cond_3

    iget-object v5, v4, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-boolean v5, v4, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v5, :cond_3

    iget v5, v4, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {p1, v5}, Landroid/app/BackStackRecord;->interactsWith(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iput-boolean v2, v4, Landroid/app/Fragment;->mIsNewlyAdded:Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private dispatchMoveToState(I)V
    .locals 2

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mAllowOldReentrantBehavior:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    invoke-virtual {p0, p1, v1}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v0
.end method

.method private endAnimatingAwayFragments()V
    .locals 4

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    nop

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private ensureExecReady(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1, v1}, Landroid/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    nop

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of fragment host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FragmentManager is already executing transactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    add-int/lit8 v4, p3, -0x1

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v3}, Landroid/app/BackStackRecord;->bumpBackStackNesting(I)V

    invoke-virtual {v1}, Landroid/app/BackStackRecord;->executeOps()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BackStackRecord;

    iget-boolean v11, v0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    const/4 v0, 0x0

    iget-object v1, v6, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v1, v6, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget-object v1, v6, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    iget-object v2, v6, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Landroid/app/Fragment;

    move-result-object v1

    move v13, v0

    move-object v12, v1

    move v0, v9

    :goto_1
    const/4 v14, 0x1

    if-ge v0, v10, :cond_4

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, v6, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v12}, Landroid/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v3

    move-object v12, v3

    goto :goto_2

    :cond_1
    iget-object v3, v6, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Landroid/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;)V

    :goto_2
    if-nez v13, :cond_3

    iget-boolean v3, v1, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    nop

    :cond_3
    :goto_3
    move v13, v14

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, v6, Landroid/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_5

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    invoke-static/range {v0 .. v5}, Landroid/app/FragmentTransition;->startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_5
    invoke-static/range {p1 .. p4}, Landroid/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    move v15, v10

    if-eqz v11, :cond_6

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v5, v0

    invoke-direct {v6, v5}, Landroid/app/FragmentManagerImpl;->addAddedFragments(Landroid/util/ArraySet;)V

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v10

    move-object/from16 v16, v5

    invoke-direct/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/util/ArraySet;)I

    move-result v0

    move-object/from16 v1, v16

    invoke-direct {v6, v1}, Landroid/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Landroid/util/ArraySet;)V

    move v15, v0

    :cond_6
    if-eq v15, v9, :cond_7

    if-eqz v11, :cond_7

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move v3, v9

    move v4, v15

    invoke-static/range {v0 .. v5}, Landroid/app/FragmentTransition;->startTransitions(Landroid/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    iget v0, v6, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v6, v0, v14}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    :cond_7
    move v0, v9

    :goto_4
    if-ge v0, v10, :cond_9

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    iget v3, v1, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v3, :cond_8

    iget v3, v1, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v3}, Landroid/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    const/4 v3, -0x1

    iput v3, v1, Landroid/app/BackStackRecord;->mIndex:I

    :cond_8
    invoke-virtual {v1}, Landroid/app/BackStackRecord;->runOnCommitRunnables()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/app/FragmentManagerImpl;->reportBackStackChanged()V

    :cond_a
    return-void
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_5

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    const/4 v4, -0x1

    if-eqz p1, :cond_1

    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->access$000(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->access$100(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_1

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p1, :cond_4

    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->access$100(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroid/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    if-eqz p1, :cond_3

    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->access$000(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->access$100(Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/app/BackStackRecord;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    move v6, v5

    if-eq v5, v4, :cond_3

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private findFragmentUnder(Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 7

    iget-object v0, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    iget-object v6, v5, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v6, v0, :cond_1

    iget-object v6, v5, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v6, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    :goto_1
    return-object v2
.end method

.method private forcePostponedTransactions()V
    .locals 2

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentManagerImpl$OpGenerator;

    invoke-interface {v3, p1, p2}, Landroid/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit p0

    return v0

    :cond_2
    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private makeRemovedFragmentsInvisible(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    iget-boolean v3, v2, Landroid/app/Fragment;->mAdded:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTransitionAlpha(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static modifiesAlpha(Landroid/animation/Animator;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    move v4, v0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    const-string v5, "alpha"

    aget-object v6, v3, v4

    invoke-virtual {v6}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    goto :goto_2

    :cond_3
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    move-object v1, p0

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v1

    move v3, v0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    invoke-static {v4}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return v0
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .locals 9

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->ensureExecReady(Z)V

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    iget-object v1, v1, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v3, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2}, Landroid/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->burpActive()V

    return v1
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/util/ArraySet;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroid/util/ArraySet<",
            "Landroid/app/Fragment;",
            ">;)I"
        }
    .end annotation

    move v0, p4

    add-int/lit8 v1, p4, -0x1

    :goto_0
    if-lt v1, p3, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2}, Landroid/app/BackStackRecord;->isPostponed()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, p1, v4, p4}, Landroid/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v5

    :goto_1
    if-eqz v4, :cond_4

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    :cond_1
    new-instance v6, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-direct {v6, v2, v3}, Landroid/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Landroid/app/BackStackRecord;Z)V

    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v6}, Landroid/app/BackStackRecord;->setOnStartPostponedListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/app/BackStackRecord;->executeOps()V

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v5}, Landroid/app/BackStackRecord;->executePopOps(Z)V

    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    invoke-direct {p0, p5}, Landroid/app/FragmentManagerImpl;->addAddedFragments(Landroid/util/ArraySet;)V

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    invoke-direct {p0, p1, p2}, Landroid/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    iget-boolean v3, v3, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v3, :cond_3

    if-eq v1, v2, :cond_1

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    if-ge v4, v0, :cond_2

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/BackStackRecord;

    iget-boolean v5, v5, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, v2, v4}, Landroid/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    move v1, v4

    add-int/lit8 v2, v4, -0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eq v1, v0, :cond_5

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal error with the back stack records"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    return-void
.end method

.method public static reverseTransit(I)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1001

    if-eq p0, v1, :cond_2

    const/16 v1, 0x1003

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2002

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1001

    goto :goto_0

    :cond_1
    const/16 v0, 0x1003

    goto :goto_0

    :cond_2
    const/16 v0, 0x2002

    nop

    :goto_0
    return v0
.end method

.method private scheduleCommit()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroid/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {v0, p1}, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private static setRetaining(Landroid/app/FragmentManagerNonConfig;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/app/Fragment;->mRetaining:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentManagerNonConfig;

    invoke-static {v3}, Landroid/app/FragmentManagerImpl;->setRetaining(Landroid/app/FragmentManagerNonConfig;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/app/FragmentManagerImpl;->modifiesAlpha(Landroid/animation/Animator;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .locals 6

    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/LogWriter;

    const-string v1, "FragmentManager"

    const/4 v2, 0x6

    invoke-direct {v0, v2, v1}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const-string v3, "FragmentManager"

    const-string v5, "Activity state:"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    const-string v5, "  "

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3, v5, v4, v1, v2}, Landroid/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    const-string v3, "FragmentManager"

    const-string v4, "Failed dumping state"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_1

    :cond_0
    const-string v3, "FragmentManager"

    const-string v5, "Fragment manager state:"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string v3, "  "

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v1, v2}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    const-string v3, "FragmentManager"

    const-string v4, "Failed dumping state"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    throw p1
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x1001

    if-eq p0, v1, :cond_4

    const/16 v1, 0x1003

    if-eq p0, v1, :cond_2

    const/16 v1, 0x2002

    if-eq p0, v1, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    move v0, v1

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    :goto_1
    move v0, v1

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x1

    :goto_2
    move v0, v1

    nop

    :goto_3
    return v0
.end method


# virtual methods
.method addBackStackState(Landroid/app/BackStackRecord;)V
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFragment(Landroid/app/Fragment;Z)V
    .locals 3

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->makeActive(Landroid/app/Fragment;)V

    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/app/Fragment;->mRemoving:Z

    iget-object v2, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    iput-boolean v1, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    :cond_1
    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allocBackStackIndex(Landroid/app/BackStackRecord;)I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return v0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback<",
            "*>;",
            "Landroid/app/FragmentContainer;",
            "Landroid/app/Fragment;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_1

    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object p2, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iput-object p3, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->getTargetSdk()I

    move-result v0

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mAllowOldReentrantBehavior:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachFragment(Landroid/app/Fragment;)V
    .locals 3

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add from attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public beginTransaction()Landroid/app/FragmentTransaction;
    .locals 1

    new-instance v0, Landroid/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/app/BackStackRecord;-><init>(Landroid/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method completeShowHideFragment(Landroid/app/Fragment;)V
    .locals 6

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransition()I

    move-result v0

    iget-boolean v3, p1, Landroid/app/Fragment;->mHidden:Z

    xor-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    invoke-virtual {p0, p1, v0, v3, v4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-boolean v3, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Landroid/app/Fragment;->setHideReplaced(Z)V

    goto :goto_0

    :cond_0
    iget-object v3, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    :cond_1
    new-instance v5, Landroid/app/FragmentManagerImpl$3;

    invoke-direct {v5, p0, v3, v4}, Landroid/app/FragmentManagerImpl$3;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_2
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v3, v0}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_3
    iget-boolean v3, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x8

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/app/Fragment;->isHideReplaced()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1, v2}, Landroid/app/Fragment;->setHideReplaced(Z)V

    :cond_5
    :goto_2
    iget-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_6
    iput-boolean v2, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public detachFragment(Landroid/app/Fragment;)V
    .locals 4

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mDetached:Z

    iget-boolean v1, p1, Landroid/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove from detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mAdded:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroid/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public dispatchCreate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1, p2}, Landroid/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    if-nez v3, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    nop

    :goto_1
    move v0, v1

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    invoke-virtual {v1}, Landroid/app/Fragment;->onDestroyOptionsMenu()V

    :cond_5
    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_6
    iput-object v3, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    return v2
.end method

.method public dispatchDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    return-void
.end method

.method public dispatchLowMemory()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Fragment;->performLowMemory()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performMultiWindowModeChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->performMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method dispatchOnFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentDestroyed(Landroid/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz p2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentDetached(Landroid/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz p2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentPaused(Landroid/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz p2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/content/Context;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentPreCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentResumed(Landroid/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz p2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz p3, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/os/Bundle;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentStarted(Landroid/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz p2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentStopped(Landroid/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz p2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz p4, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1, p2, p3}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroid/app/FragmentManager;Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method dispatchOnFragmentViewDestroyed(Landroid/app/Fragment;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    instance-of v1, v0, Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/app/Fragment;Z)V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz p2, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Landroid/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dispatchPause()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performPictureInPictureModeChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->performPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    nop

    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public dispatchResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    return-void
.end method

.method public dispatchStart()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    return-void
.end method

.method public dispatchStop()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->dispatchMoveToState(I)V

    return-void
.end method

.method public dispatchTrimMemory(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/app/Fragment;->performTrimMemory(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method doPendingDeferredStart()V
    .locals 5

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Fragment;

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v4}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v4

    or-int/2addr v2, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    :cond_2
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Added Fragments:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Fragments Created Menus:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_3

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Back Stack:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BackStackRecord;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    if-lez v1, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Back Stack Indices:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v2

    :goto_4
    if-ge v3, v1, :cond_5

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BackStackRecord;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mAvailBackStackIndices: "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Pending Actions:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_5
    if-ge v2, v1, :cond_7

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/FragmentManagerImpl$OpGenerator;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "FragmentManager misc state:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mHost="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mContainer="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v2, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mParent="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mCurState="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mStateSaved="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " mDestroyed="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v2, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_9
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  mNoTransactionsBecause="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 2

    if-nez p2, :cond_0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->scheduleCommit()V

    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    monitor-exit p0

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ensureInflatedFragmentView(Landroid/app/Fragment;)V
    .locals 3

    iget-boolean v0, p1, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroid/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_1
    return-void
.end method

.method public execPendingActions()Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->ensureExecReady(Z)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    :try_start_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    nop

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->burpActive()V

    return v1
.end method

.method public execSingleAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Landroid/app/FragmentManagerImpl;->ensureExecReady(Z)V

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Landroid/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->doPendingDeferredStart()V

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->burpActive()V

    return-void
.end method

.method public executePendingTransactions()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->forcePostponedTransactions()V

    return v0
.end method

.method public findFragmentById(I)Landroid/app/Fragment;
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public freeBackStackIndex(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 5

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_1
    return-object v0
.end method

.method public getFragments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .locals 0

    return-object p0
.end method

.method public getPrimaryNavigationFragment()Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    return-object v0
.end method

.method getTargetSdk()I
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hideFragment(Landroid/app/Fragment;)V
    .locals 3

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    iget-boolean v1, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    :cond_1
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :goto_0
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    return v0
.end method

.method isStateAtLeast(I)Z
    .locals 1

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateSaved()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    return v0
.end method

.method loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;
    .locals 5

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextAnim()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextAnim()I

    move-result v2

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    if-nez p2, :cond_2

    return-object v1

    :cond_2
    invoke-static {p2, p3}, Landroid/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v2

    if-gez v2, :cond_3

    return-object v1

    :cond_3
    if-nez p4, :cond_4

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    :cond_4
    if-nez p4, :cond_5

    return-object v1

    :cond_5
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/android/internal/R$styleable;->FragmentAnimation:[I

    invoke-virtual {v3, p4, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v4, :cond_6

    return-object v1

    :cond_6
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method

.method makeActive(Landroid/app/Fragment;)V
    .locals 3

    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->setIndex(ILandroid/app/Fragment;)V

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method makeInactive(Landroid/app/Fragment;)V
    .locals 3

    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Fragment;->initState()V

    return-void
.end method

.method moveFragmentToExpectedState(Landroid/app/Fragment;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    iget-boolean v1, p1, Landroid/app/Fragment;->mRemoving:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransition()I

    move-result v7

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransitionStyle()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, v0

    invoke-virtual/range {v4 .. v9}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Landroid/app/FragmentManagerImpl;->findFragmentUnder(Landroid/app/Fragment;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v4, v1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v5, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget-object v7, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-ge v7, v6, :cond_3

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v8, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_3
    iget-boolean v4, p1, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    iget-object v4, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setTransitionAlpha(F)V

    iput-boolean v2, p1, Landroid/app/Fragment;->mIsNewlyAdded:Z

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransition()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    invoke-virtual {p0, p1, v2, v3, v4}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v3, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {p0, v3, v2}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    :cond_4
    iget-boolean v1, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->completeShowHideFragment(Landroid/app/Fragment;)V

    :cond_5
    return-void
.end method

.method moveToState(IZ)V
    .locals 7

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget v0, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    iput p1, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_4

    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    invoke-virtual {p0, v4}, Landroid/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/app/Fragment;)V

    iget-object v5, v4, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v5}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v5

    or-int/2addr v3, v5

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v4, v3

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_7

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    if-eqz v5, :cond_6

    iget-boolean v6, v5, Landroid/app/Fragment;->mRemoving:Z

    if-nez v6, :cond_5

    iget-boolean v6, v5, Landroid/app/Fragment;->mDetached:Z

    if-eqz v6, :cond_6

    :cond_5
    iget-boolean v6, v5, Landroid/app/Fragment;->mIsNewlyAdded:Z

    if-nez v6, :cond_6

    invoke-virtual {p0, v5}, Landroid/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/app/Fragment;)V

    iget-object v6, v5, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v6, :cond_6

    iget-object v6, v5, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v6}, Landroid/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v6

    or-int/2addr v4, v6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    if-nez v4, :cond_8

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    :cond_8
    iget-boolean v3, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_9

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/app/FragmentHostCallback;->onInvalidateOptionsMenu()V

    iput-boolean v2, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_9
    return-void
.end method

.method moveToState(Landroid/app/Fragment;)V
    .locals 6

    iget v2, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    return-void
.end method

.method moveToState(Landroid/app/Fragment;IIIZ)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    iget-boolean v0, v8, Landroid/app/Fragment;->mAdded:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v8, Landroid/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v0, p2

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v0, p2

    if-le v0, v9, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_1
    iget-boolean v1, v8, Landroid/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_4

    iget v1, v8, Landroid/app/Fragment;->mState:I

    if-le v0, v1, :cond_4

    iget v1, v8, Landroid/app/Fragment;->mState:I

    if-nez v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    iget v0, v8, Landroid/app/Fragment;->mState:I

    :cond_4
    :goto_2
    iget-boolean v1, v8, Landroid/app/Fragment;->mDeferStart:Z

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eqz v1, :cond_5

    iget v1, v8, Landroid/app/Fragment;->mState:I

    if-ge v1, v10, :cond_5

    if-le v0, v11, :cond_5

    const/4 v0, 0x3

    :cond_5
    iget v1, v8, Landroid/app/Fragment;->mState:I

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-gt v1, v0, :cond_21

    iget-boolean v1, v8, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v8, Landroid/app/Fragment;->mInLayout:Z

    if-nez v1, :cond_6

    return-void

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v8, v13}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->getStateAfterAnimating()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    :cond_7
    iget v1, v8, Landroid/app/Fragment;->mState:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    if-lez v0, :cond_11

    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveto CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_a

    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:view_state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v8, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_state"

    invoke-virtual {v7, v1, v2}, Landroid/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    iput-object v1, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget-object v1, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v1, :cond_9

    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_req_state"

    invoke-virtual {v1, v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Landroid/app/Fragment;->mTargetRequestCode:I

    :cond_9
    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v8, Landroid/app/Fragment;->mUserVisibleHint:Z

    iget-boolean v1, v8, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_a

    iput-boolean v9, v8, Landroid/app/Fragment;->mDeferStart:Z

    if-le v0, v11, :cond_a

    const/4 v0, 0x3

    :cond_a
    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v1, v8, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    iput-object v1, v8, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v1, :cond_b

    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    iget-object v1, v1, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    goto :goto_3

    :cond_b
    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;

    move-result-object v1

    :goto_3
    iput-object v1, v8, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v1, :cond_d

    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v2, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v2, v2, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-ne v1, v2, :cond_c

    iget-object v1, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v1, v1, Landroid/app/Fragment;->mState:I

    if-ge v1, v9, :cond_d

    iget-object v2, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    goto :goto_4

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " declared target fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " that does not belong to this FragmentManager!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_4
    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v8, v1, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    iput-boolean v14, v8, Landroid/app/Fragment;->mCalled:Z

    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    iget-boolean v1, v8, Landroid/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_10

    iget-object v1, v8, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    if-nez v1, :cond_e

    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1, v8}, Landroid/app/FragmentHostCallback;->onAttachFragment(Landroid/app/Fragment;)V

    goto :goto_5

    :cond_e
    iget-object v1, v8, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->onAttachFragment(Landroid/app/Fragment;)V

    :goto_5
    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v7, v8, v1, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/app/Fragment;Landroid/content/Context;Z)V

    iget-boolean v1, v8, Landroid/app/Fragment;->mIsCreated:Z

    if-nez v1, :cond_f

    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_6

    :cond_f
    iget-object v1, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v1, v9}, Landroid/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;Z)V

    iput v9, v8, Landroid/app/Fragment;->mState:I

    :goto_6
    iput-boolean v14, v8, Landroid/app/Fragment;->mRetaining:Z

    goto :goto_7

    :cond_10
    new-instance v1, Landroid/util/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " did not call through to super.onAttach()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_7
    :pswitch_1
    move v1, v0

    invoke-virtual/range {p0 .. p1}, Landroid/app/FragmentManagerImpl;->ensureInflatedFragmentView(Landroid/app/Fragment;)V

    if-le v1, v9, :cond_1b

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-boolean v0, v8, Landroid/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_19

    const/4 v0, 0x0

    iget v2, v8, Landroid/app/Fragment;->mContainerId:I

    if-eqz v2, :cond_15

    iget v2, v8, Landroid/app/Fragment;->mContainerId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for a container view with no id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v2}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_13
    iget-object v2, v7, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iget v3, v8, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_14

    iget-boolean v0, v8, Landroid/app/Fragment;->mRestored:Z

    if-nez v0, :cond_14

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v8, Landroid/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    const-string/jumbo v0, "unknown"

    :goto_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No view found for id 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Landroid/app/Fragment;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") for fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v3}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_14
    move-object v0, v2

    :cond_15
    iput-object v0, v8, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v2}, Landroid/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v2, v0, v3}, Landroid/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_19

    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v14}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    if-eqz v0, :cond_16

    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_16
    iget-boolean v2, v8, Landroid/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_17

    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v2, v3}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v2, v3, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, v8, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_18

    goto :goto_9

    :cond_18
    move v9, v14

    :goto_9
    iput-boolean v9, v8, Landroid/app/Fragment;->mIsNewlyAdded:Z

    :cond_19
    iget-object v0, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroid/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v0, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v0, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroid/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    :cond_1a
    iput-object v13, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_1b
    move v0, v1

    :pswitch_2
    if-le v0, v12, :cond_1c

    iput v11, v8, Landroid/app/Fragment;->mState:I

    :cond_1c
    :pswitch_3
    if-le v0, v11, :cond_1e

    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1d

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveto STARTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->performStart()V

    invoke-virtual {v7, v8, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/app/Fragment;Z)V

    :cond_1e
    :pswitch_4
    if-le v0, v10, :cond_20

    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1f

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveto RESUMED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->performResume()V

    invoke-virtual {v7, v8, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/app/Fragment;Z)V

    iput-object v13, v8, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v13, v8, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    :cond_20
    :goto_a
    move/from16 v10, p3

    move/from16 v11, p4

    goto/16 :goto_f

    :cond_21
    iget v1, v8, Landroid/app/Fragment;->mState:I

    if-le v1, v0, :cond_20

    iget v1, v8, Landroid/app/Fragment;->mState:I

    packed-switch v1, :pswitch_data_1

    goto :goto_a

    :pswitch_5
    const/4 v1, 0x5

    if-ge v0, v1, :cond_23

    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_22

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movefrom RESUMED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->performPause()V

    invoke-virtual {v7, v8, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/app/Fragment;Z)V

    :cond_23
    :pswitch_6
    if-ge v0, v10, :cond_25

    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_24

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movefrom STARTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->performStop()V

    invoke-virtual {v7, v8, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/app/Fragment;Z)V

    :cond_25
    :pswitch_7
    if-ge v0, v12, :cond_2c

    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_26

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v1, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_27

    iget-object v1, v7, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1, v8}, Landroid/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v8, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v1, :cond_27

    invoke-virtual/range {p0 .. p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    :cond_27
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->performDestroyView()V

    invoke-virtual {v7, v8, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/app/Fragment;Z)V

    iget-object v1, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2b

    iget-object v1, v8, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2b

    invoke-virtual/range {p0 .. p0}, Landroid/app/FragmentManagerImpl;->getTargetSdk()I

    move-result v1

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_28

    iget-object v1, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, v8, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_28
    const/4 v1, 0x0

    iget v2, v7, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-lez v2, :cond_29

    iget-boolean v2, v7, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v2, :cond_29

    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTransitionAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_29

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-virtual {v7, v8, v10, v14, v11}, Landroid/app/FragmentManagerImpl;->loadAnimator(Landroid/app/Fragment;IZI)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_b

    :cond_29
    move/from16 v10, p3

    move/from16 v11, p4

    :goto_b
    move-object v12, v1

    iget-object v1, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setTransitionAlpha(F)V

    if-eqz v12, :cond_2a

    iget-object v15, v8, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v5, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    move-object v6, v8

    invoke-virtual {v15, v5}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    invoke-virtual {v8, v12}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    invoke-virtual {v8, v0}, Landroid/app/Fragment;->setStateAfterAnimating(I)V

    new-instance v4, Landroid/app/FragmentManagerImpl$2;

    move-object v1, v4

    move-object v2, v7

    move-object v3, v15

    move-object v9, v4

    move-object v4, v5

    move-object/from16 v16, v5

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Landroid/app/FragmentManagerImpl$2;-><init>(Landroid/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroid/app/Fragment;Landroid/app/Fragment;)V

    invoke-virtual {v12, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v12, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v1, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-direct {v7, v1, v12}, Landroid/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/animation/Animator;)V

    invoke-virtual {v12}, Landroid/animation/Animator;->start()V

    :cond_2a
    iget-object v1, v8, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_c

    :cond_2b
    move/from16 v10, p3

    move/from16 v11, p4

    :goto_c
    iput-object v13, v8, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iput-object v13, v8, Landroid/app/Fragment;->mView:Landroid/view/View;

    iput-boolean v14, v8, Landroid/app/Fragment;->mInLayout:Z

    goto :goto_d

    :cond_2c
    :pswitch_8
    move/from16 v10, p3

    move/from16 v11, p4

    :goto_d
    const/4 v1, 0x1

    if-ge v0, v1, :cond_32

    iget-boolean v1, v7, Landroid/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v1, :cond_2d

    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v8, v13}, Landroid/app/Fragment;->setAnimatingAway(Landroid/animation/Animator;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_2d
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->getAnimatingAway()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v8, v0}, Landroid/app/Fragment;->setStateAfterAnimating(I)V

    const/4 v0, 0x1

    goto :goto_f

    :cond_2e
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_2f

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "movefrom CREATED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    iget-boolean v1, v8, Landroid/app/Fragment;->mRetaining:Z

    if-nez v1, :cond_30

    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->performDestroy()V

    invoke-virtual {v7, v8, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/app/Fragment;Z)V

    goto :goto_e

    :cond_30
    iput v14, v8, Landroid/app/Fragment;->mState:I

    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/app/Fragment;->performDetach()V

    invoke-virtual {v7, v8, v14}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/app/Fragment;Z)V

    if-nez p5, :cond_32

    iget-boolean v2, v8, Landroid/app/Fragment;->mRetaining:Z

    if-nez v2, :cond_31

    invoke-virtual/range {p0 .. p1}, Landroid/app/FragmentManagerImpl;->makeInactive(Landroid/app/Fragment;)V

    goto :goto_f

    :cond_31
    iput-object v13, v8, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v13, v8, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    iput-object v13, v8, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    :cond_32
    :goto_f
    iget v2, v8, Landroid/app/Fragment;->mState:I

    if-eq v2, v0, :cond_33

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveToState: Fragment state for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not updated inline; expected state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Landroid/app/Fragment;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, v8, Landroid/app/Fragment;->mState:I

    :cond_33
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Fragment;->noteStateNotSaved()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const-string v0, "fragment"

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "class"

    invoke-interface {v8, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/R$styleable;->Fragment:[I

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v10, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v11, v0

    const/4 v0, -0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    const/4 v4, 0x2

    invoke-virtual {v10, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    nop

    :cond_2
    move v14, v2

    if-ne v14, v0, :cond_4

    if-ne v12, v0, :cond_4

    if-eqz v13, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-eq v12, v0, :cond_5

    invoke-virtual {v6, v12}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_6

    if-eqz v13, :cond_6

    invoke-virtual {v6, v13}, Landroid/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    :cond_6
    if-nez v2, :cond_7

    if-eq v14, v0, :cond_7

    invoke-virtual {v6, v14}, Landroid/app/FragmentManagerImpl;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    :cond_7
    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreateView: id=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " fname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " existing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-nez v2, :cond_a

    iget-object v0, v6, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    invoke-virtual {v0, v7, v11, v1}, Landroid/app/FragmentContainer;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    iput-boolean v3, v0, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v12, :cond_9

    move v1, v12

    goto :goto_2

    :cond_9
    move v1, v14

    :goto_2
    iput v1, v0, Landroid/app/Fragment;->mFragmentId:I

    iput v14, v0, Landroid/app/Fragment;->mContainerId:I

    iput-object v13, v0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    iput-boolean v3, v0, Landroid/app/Fragment;->mInLayout:Z

    iput-object v6, v0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, v6, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v1, v0, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v1, v6, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-virtual {v6, v0, v3}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    move-object v5, v0

    goto :goto_3

    :cond_a
    iget-boolean v0, v2, Landroid/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_10

    iput-boolean v3, v2, Landroid/app/Fragment;->mInLayout:Z

    iget-object v0, v6, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iput-object v0, v2, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    iget-boolean v0, v2, Landroid/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_b

    iget-object v0, v6, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v2, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v8, v1}, Landroid/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_b
    move-object v5, v2

    :goto_3
    iget v0, v6, Landroid/app/FragmentManagerImpl;->mCurState:I

    if-ge v0, v3, :cond_c

    iget-boolean v0, v5, Landroid/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_c

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    move-object v0, v6

    move-object v1, v5

    move-object v7, v5

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    goto :goto_4

    :cond_c
    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;)V

    :goto_4
    iget-object v0, v7, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_f

    if-eqz v12, :cond_d

    iget-object v0, v7, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setId(I)V

    :cond_d
    iget-object v0, v7, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, v7, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_e
    iget-object v0, v7, Landroid/app/Fragment;->mView:Landroid/view/View;

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Duplicate id 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", or parent id 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with another fragment for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public performPendingDeferredStart(Landroid/app/Fragment;)V
    .locals 7

    iget-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mDeferStart:Z

    iget v3, p0, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/FragmentManagerImpl;->moveToState(Landroid/app/Fragment;IIIZ)V

    :cond_1
    return-void
.end method

.method public popBackStack()V
    .locals 4

    new-instance v0, Landroid/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p0, v2, v3, v1}, Landroid/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    return-void
.end method

.method public popBackStack(II)V
    .locals 3

    if-ltz p1, :cond_0

    new-instance v0, Landroid/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, -0x1

    invoke-direct {v0, p0, p1, v1, p2}, Landroid/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 3

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 3

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->checkStateLoss()V

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v2, p5, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-gez v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_2
    const/4 v2, -0x1

    if-nez p3, :cond_3

    if-ltz p4, :cond_a

    :cond_3
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    move v2, v3

    :goto_0
    if-ltz v2, :cond_6

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    if-eqz p3, :cond_4

    invoke-virtual {v3}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    if-ltz p4, :cond_5

    iget v4, v3, Landroid/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-gez v2, :cond_7

    return v1

    :cond_7
    and-int/lit8 v3, p5, 0x1

    if-eqz v3, :cond_a

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_a

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    if-eqz p3, :cond_8

    invoke-virtual {v3}, Landroid/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    if-ltz p4, :cond_a

    iget v4, v3, Landroid/app/BackStackRecord;->mIndex:I

    if-ne p4, v4, :cond_a

    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_a
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne v2, v3, :cond_b

    return v1

    :cond_b
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_3
    if-le v1, v2, :cond_c

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_c
    :goto_4
    return v0
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 3

    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_0
    iget v0, p3, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public registerFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeFragment(Landroid/app/Fragment;)V
    .locals 4

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Landroid/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v2, p1, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Landroid/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p1, Landroid/app/Fragment;->mAdded:Z

    iput-boolean v1, p1, Landroid/app/Fragment;->mRemoving:Z

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/FragmentManagerState;

    iget-object v1, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p2}, Landroid/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_7

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Fragment;

    sget-boolean v8, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restoreAllState: re-attaching retained "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v8, v3

    :goto_2
    iget-object v9, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v9, v9

    if-ge v8, v9, :cond_4

    iget-object v9, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v9, v9, v8

    iget v9, v9, Landroid/app/FragmentState;->mIndex:I

    iget v10, v7, Landroid/app/Fragment;->mIndex:I

    if-eq v9, v10, :cond_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    iget-object v9, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v9, v9

    if-ne v8, v9, :cond_5

    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find active fragment with index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v9}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_5
    iget-object v9, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v9, v9, v8

    iput-object v7, v9, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    iput-object v2, v7, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iput v3, v7, Landroid/app/Fragment;->mBackStackNesting:I

    iput-boolean v3, v7, Landroid/app/Fragment;->mInLayout:Z

    iput-boolean v3, v7, Landroid/app/Fragment;->mAdded:Z

    iput-object v2, v7, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget-object v10, v9, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v10, :cond_6

    iget-object v10, v9, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v11, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v11}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v10, v9, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:view_state"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v10

    iput-object v10, v7, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iget-object v10, v9, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v10, v7, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_7
    new-instance v4, Landroid/util/SparseArray;

    iget-object v5, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v5, v5

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v4, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    move v4, v3

    :goto_3
    iget-object v5, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    array-length v5, v5

    if-ge v4, v5, :cond_b

    iget-object v5, v0, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    aget-object v5, v5, v4

    if-eqz v5, :cond_a

    const/4 v6, 0x0

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Landroid/app/FragmentManagerNonConfig;

    :cond_8
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mContainer:Landroid/app/FragmentContainer;

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-virtual {v5, v7, v8, v9, v6}, Landroid/app/FragmentState;->instantiate(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;Landroid/app/FragmentManagerNonConfig;)Landroid/app/Fragment;

    move-result-object v7

    sget-boolean v8, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restoreAllState: active #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v9, v7, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v8, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput-object v2, v5, Landroid/app/FragmentState;->mInstance:Landroid/app/Fragment;

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_4

    :cond_c
    move v5, v3

    :goto_4
    move v6, v3

    :goto_5
    if-ge v6, v5, :cond_e

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Fragment;

    iget v8, v7, Landroid/app/Fragment;->mTargetIndex:I

    if-ltz v8, :cond_d

    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v9, v7, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Fragment;

    iput-object v8, v7, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget-object v8, v7, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-nez v8, :cond_d

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Re-attaching retained fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " target no longer exists: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/app/Fragment;->mTargetIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, v7, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_e
    iget-object v4, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v0, Landroid/app/FragmentManagerState;->mAdded:[I

    if-eqz v4, :cond_12

    move v4, v3

    :goto_6
    iget-object v5, v0, Landroid/app/FragmentManagerState;->mAdded:[I

    array-length v5, v5

    if-ge v4, v5, :cond_12

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget-object v6, v0, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    if-nez v5, :cond_f

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No instantiated fragment for index #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/app/FragmentManagerState;->mAdded:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_f
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/app/Fragment;->mAdded:Z

    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_10

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreAllState: added #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_11
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already added!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    iget-object v4, v0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    if-eqz v4, :cond_15

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v4, v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v2, v3

    :goto_7
    iget-object v4, v0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    array-length v4, v4

    if-ge v2, v4, :cond_16

    iget-object v4, v0, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    aget-object v4, v4, v2

    invoke-virtual {v4, p0}, Landroid/app/BackStackState;->instantiate(Landroid/app/FragmentManagerImpl;)Landroid/app/BackStackRecord;

    move-result-object v4

    sget-boolean v5, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_13

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreAllState: back stack #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/util/LogWriter;

    const/4 v6, 0x2

    const-string v7, "FragmentManager"

    invoke-direct {v5, v6, v7}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    new-instance v6, Lcom/android/internal/util/FastPrintWriter;

    const/16 v7, 0x400

    invoke-direct {v6, v5, v3, v7}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    const-string v7, "  "

    invoke-virtual {v4, v7, v6, v3}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    :cond_13
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, v4, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v5, :cond_14

    iget v5, v4, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v5, v4}, Landroid/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/app/BackStackRecord;)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    :cond_16
    iget v2, v0, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    if-ltz v2, :cond_17

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v3, v0, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    :cond_17
    iget v2, v0, Landroid/app/FragmentManagerState;->mNextFragmentIndex:I

    iput v2, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    return-void
.end method

.method retainNonConfig()Landroid/app/FragmentManagerNonConfig;
    .locals 1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    invoke-static {v0}, Landroid/app/FragmentManagerImpl;->setRetaining(Landroid/app/FragmentManagerNonConfig;)V

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 11

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->forcePostponedTransactions()V

    invoke-direct {p0}, Landroid/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [Landroid/app/FragmentState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_7

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Fragment;

    if-eqz v6, :cond_6

    iget v7, v6, Landroid/app/Fragment;->mIndex:I

    if-gez v7, :cond_1

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure saving state: active "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_1
    const/4 v5, 0x1

    new-instance v7, Landroid/app/FragmentState;

    invoke-direct {v7, v6}, Landroid/app/FragmentState;-><init>(Landroid/app/Fragment;)V

    aput-object v7, v2, v3

    iget v8, v6, Landroid/app/Fragment;->mState:I

    if-lez v8, :cond_4

    iget-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v8, :cond_4

    invoke-virtual {p0, v6}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v8, v6, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v8, :cond_5

    iget-object v8, v6, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v8, v8, Landroid/app/Fragment;->mIndex:I

    if-gez v8, :cond_2

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure saving state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_2
    iget-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v8, :cond_3

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_3
    iget-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v6, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {p0, v8, v9, v10}, Landroid/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    iget v8, v6, Landroid/app/Fragment;->mTargetRequestCode:I

    if-eqz v8, :cond_5

    iget-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    iget v10, v6, Landroid/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    iget-object v8, v6, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v8, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_5
    :goto_1
    sget-boolean v8, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved state of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    if-nez v5, :cond_9

    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "FragmentManager"

    const-string/jumbo v4, "saveAllState: no fragments!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_c

    new-array v0, v1, [I

    move v6, v4

    :goto_2
    if-ge v6, v1, :cond_c

    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Fragment;

    iget v7, v7, Landroid/app/Fragment;->mIndex:I

    aput v7, v0, v6

    aget v7, v0, v6

    if-gez v7, :cond_a

    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failure saving state: active "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_a
    sget-boolean v7, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_b

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saveAllState: adding fragment #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_c
    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_e

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    new-array v3, v1, [Landroid/app/BackStackState;

    nop

    :goto_3
    if-ge v4, v1, :cond_e

    new-instance v6, Landroid/app/BackStackState;

    iget-object v7, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/BackStackRecord;

    invoke-direct {v6, p0, v7}, Landroid/app/BackStackState;-><init>(Landroid/app/FragmentManagerImpl;Landroid/app/BackStackRecord;)V

    aput-object v6, v3, v4

    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_d

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveAllState: adding back stack #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_e
    new-instance v4, Landroid/app/FragmentManagerState;

    invoke-direct {v4}, Landroid/app/FragmentManagerState;-><init>()V

    iput-object v2, v4, Landroid/app/FragmentManagerState;->mActive:[Landroid/app/FragmentState;

    iput-object v0, v4, Landroid/app/FragmentManagerState;->mAdded:[I

    iput-object v3, v4, Landroid/app/FragmentManagerState;->mBackStack:[Landroid/app/BackStackState;

    iget v6, p0, Landroid/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput v6, v4, Landroid/app/FragmentManagerState;->mNextFragmentIndex:I

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    if-eqz v6, :cond_f

    iget-object v6, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    iput v6, v4, Landroid/app/FragmentManagerState;->mPrimaryNavActiveIndex:I

    :cond_f
    invoke-virtual {p0}, Landroid/app/FragmentManagerImpl;->saveNonConfig()V

    return-object v4

    :cond_10
    :goto_4
    return-object v0
.end method

.method saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    :cond_1
    iget-object v1, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/app/Fragment;)V

    :cond_2
    iget-object v1, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    :cond_3
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4
    iget-boolean v1, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_6

    if-nez v0, :cond_5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    :cond_5
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_6
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;
    .locals 3

    iget v0, p1, Landroid/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    :cond_0
    iget v0, p1, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    nop

    :cond_1
    return-object v1

    :cond_2
    return-object v1
.end method

.method saveFragmentViewState(Landroid/app/Fragment;)V
    .locals 2

    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :goto_0
    iget-object v0, p1, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method

.method saveNonConfig()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    move-object v4, v1

    move-object v1, v0

    move v0, v2

    :goto_0
    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    iget-object v5, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Fragment;

    if-eqz v5, :cond_5

    iget-boolean v6, v5, Landroid/app/Fragment;->mRetainInstance:Z

    if-eqz v6, :cond_2

    if-nez v1, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    iget v6, v6, Landroid/app/Fragment;->mIndex:I

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    :goto_1
    iput v6, v5, Landroid/app/Fragment;->mTargetIndex:I

    sget-boolean v6, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "retainNonConfig: keeping retained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, v5, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v6, :cond_3

    iget-object v6, v5, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v6}, Landroid/app/FragmentManagerImpl;->saveNonConfig()V

    iget-object v6, v5, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v6, v6, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    goto :goto_2

    :cond_3
    iget-object v6, v5, Landroid/app/Fragment;->mChildNonConfig:Landroid/app/FragmentManagerNonConfig;

    :goto_2
    if-nez v4, :cond_4

    if-eqz v6, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v7

    move v7, v2

    :goto_3
    if-ge v7, v0, :cond_4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move-object v0, v1

    move-object v1, v4

    :cond_7
    if-nez v0, :cond_8

    if-nez v1, :cond_8

    iput-object v3, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    goto :goto_4

    :cond_8
    new-instance v2, Landroid/app/FragmentManagerNonConfig;

    invoke-direct {v2, v0, v1}, Landroid/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput-object v2, p0, Landroid/app/FragmentManagerImpl;->mSavedNonConfig:Landroid/app/FragmentManagerNonConfig;

    :goto_4
    return-void
.end method

.method public setBackStackIndex(ILandroid/app/BackStackRecord;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    if-ge v0, p1, :cond_5

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    :cond_3
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    sget-boolean v1, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPrimaryNavigationFragment(Landroid/app/Fragment;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Landroid/app/Fragment;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    return-void
.end method

.method public showFragment(Landroid/app/Fragment;)V
    .locals 3

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/app/Fragment;->mHidden:Z

    iget-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroid/app/Fragment;->mHiddenChanged:Z

    :cond_1
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 2

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mActive:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mParent:Landroid/app/Fragment;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-static {v1, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_0
    const-string/jumbo v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterFragmentLifecycleCallbacks(Landroid/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 4

    iget-object v0, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Landroid/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
