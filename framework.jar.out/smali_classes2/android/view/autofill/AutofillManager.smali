.class public final Landroid/view/autofill/AutofillManager;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillManager$AutofillManagerClient;,
        Landroid/view/autofill/AutofillManager$AutofillCallback;,
        Landroid/view/autofill/AutofillManager$TrackedViews;,
        Landroid/view/autofill/AutofillManager$CompatibilityBridge;,
        Landroid/view/autofill/AutofillManager$AutofillClient;
    }
.end annotation


# static fields
.field public static final ACTION_START_SESSION:I = 0x1

.field public static final ACTION_VALUE_CHANGED:I = 0x4

.field public static final ACTION_VIEW_ENTERED:I = 0x2

.field public static final ACTION_VIEW_EXITED:I = 0x3

.field private static final AUTHENTICATION_ID_DATASET_ID_MASK:I = 0xffff

.field private static final AUTHENTICATION_ID_DATASET_ID_SHIFT:I = 0x10

.field public static final AUTHENTICATION_ID_DATASET_ID_UNDEFINED:I = 0xffff

.field public static final EXTRA_ASSIST_STRUCTURE:Ljava/lang/String; = "android.view.autofill.extra.ASSIST_STRUCTURE"

.field public static final EXTRA_AUTHENTICATION_RESULT:Ljava/lang/String; = "android.view.autofill.extra.AUTHENTICATION_RESULT"

.field public static final EXTRA_CLIENT_STATE:Ljava/lang/String; = "android.view.autofill.extra.CLIENT_STATE"

.field public static final EXTRA_RESTORE_SESSION_TOKEN:Ljava/lang/String; = "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

.field public static final FC_SERVICE_TIMEOUT:I = 0x1388

.field public static final FLAG_ADD_CLIENT_DEBUG:I = 0x2

.field public static final FLAG_ADD_CLIENT_ENABLED:I = 0x1

.field public static final FLAG_ADD_CLIENT_VERBOSE:I = 0x4

.field private static final LAST_AUTOFILLED_DATA_TAG:Ljava/lang/String; = "android:lastAutoFilledData"

.field public static final NO_SESSION:I = -0x80000000

.field public static final PENDING_UI_OPERATION_CANCEL:I = 0x1

.field public static final PENDING_UI_OPERATION_RESTORE:I = 0x2

.field private static final SESSION_ID_TAG:Ljava/lang/String; = "android:sessionId"

.field public static final SET_STATE_FLAG_DEBUG:I = 0x8

.field public static final SET_STATE_FLAG_ENABLED:I = 0x1

.field public static final SET_STATE_FLAG_RESET_CLIENT:I = 0x4

.field public static final SET_STATE_FLAG_RESET_SESSION:I = 0x2

.field public static final SET_STATE_FLAG_VERBOSE:I = 0x10

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_DISABLED_BY_SERVICE:I = 0x4

.field public static final STATE_FINISHED:I = 0x2

.field public static final STATE_SHOWING_SAVE_UI:I = 0x3

.field private static final STATE_TAG:Ljava/lang/String; = "android:state"

.field public static final STATE_UNKNOWN:I = 0x0

.field public static final STATE_UNKNOWN_COMPAT_MODE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AutofillManager"


# instance fields
.field private mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mEnteredIds:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mFillableIds:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mIdShownFillUi:Landroid/view/autofill/AutofillId;

.field private mLastAutofilledData:Landroid/view/autofill/ParcelableMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mOnInvisibleCalled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSaveOnFinish:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSaveTriggerId:Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mService:Landroid/view/autofill/IAutoFillManager;

.field private mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mServiceClientCleaner:Lsun/misc/Cleaner;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSessionId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/autofill/IAutoFillManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    return-void
.end method

.method static synthetic access$1000(Landroid/view/autofill/AutofillManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->setSaveUiState(IZ)V

    return-void
.end method

.method static synthetic access$1100(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static synthetic access$1500(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->autofill(ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/view/autofill/AutofillManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->setState(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/autofill/AutofillManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;
    .locals 1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$TrackedViews;
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/autofill/AutofillManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->finishSessionLocked()V

    return-void
.end method

.method static synthetic access$700(Landroid/view/autofill/AutofillManager;)Z
    .locals 1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientVisibleForAutofillLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$900(Landroid/view/autofill/AutofillManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->setSessionFinished(I)V

    return-void
.end method

.method private addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    invoke-interface {v1, p2, p3, p4}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientAuthenticate(ILandroid/content/IntentSender;Landroid/content/Intent;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private autofill(ILjava/util/List;Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v0, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    move/from16 v3, p1

    if-eq v3, v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    move-object v4, v0

    if-nez v4, :cond_1

    monitor-exit v2

    return-void

    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    move v5, v0

    const/4 v0, 0x0

    const/4 v6, 0x0

    nop

    invoke-static/range {p2 .. p2}, Landroid/view/autofill/Helper;->toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewsByAutofillIdTraversal([Landroid/view/autofill/AutofillId;)[Landroid/view/View;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v8, 0x0

    move v10, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_8

    move-object/from16 v11, p2

    :try_start_1
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/autofill/AutofillId;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v13, p3

    :try_start_2
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v12}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v15

    aget-object v16, v7, v0

    move-object/from16 v17, v16

    move-object/from16 v9, v17

    if-nez v9, :cond_3

    const-string v3, "AutofillManager"

    move-object/from16 v19, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v7

    const-string v7, "autofill(): no View with id "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v3

    :cond_2
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v19, v4

    move-object/from16 v20, v7

    invoke-virtual {v12}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v6, :cond_4

    new-instance v3, Landroid/util/ArrayMap;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v6, v3

    :cond_4
    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-nez v3, :cond_5

    new-instance v4, Landroid/util/SparseArray;

    const/4 v7, 0x5

    invoke-direct {v4, v7}, Landroid/util/SparseArray;-><init>(I)V

    move-object v3, v4

    invoke-virtual {v6, v9, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v12}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v4

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-nez v3, :cond_7

    new-instance v3, Landroid/view/autofill/ParcelableMap;

    sub-int v4, v5, v0

    invoke-direct {v3, v4}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    iput-object v3, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    :cond_7
    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v3, v12, v14}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v14}, Landroid/view/View;->autofill(Landroid/view/autofill/AutofillValue;)V

    invoke-direct {v1, v9, v14}, Landroid/view/autofill/AutofillManager;->setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;)V

    add-int/lit8 v10, v10, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v19

    move-object/from16 v7, v20

    move/from16 v3, p1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_8
    move-object/from16 v11, p2

    move-object/from16 v13, p3

    move-object/from16 v19, v4

    move-object/from16 v20, v7

    if-eqz v8, :cond_a

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_9

    const-string v0, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autofill(): total failed views: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_9
    :try_start_3
    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v3, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v4, v1, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v0, v3, v8, v4}, Landroid/view/autofill/IAutoFillManager;->setAutofillFailure(ILjava/util/List;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_a
    :goto_2
    if-eqz v6, :cond_b

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/view/View;->autofill(Landroid/util/SparseArray;)V

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/2addr v10, v7

    add-int/lit8 v18, v0, 0x1

    goto :goto_3

    :cond_b
    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v3, 0x391

    invoke-direct {v1, v3}, Landroid/view/autofill/AutofillManager;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x392

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x393

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v11, p2

    :goto_4
    move-object/from16 v13, p3

    :goto_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5
.end method

.method private cancelLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelSessionLocked()V

    return-void
.end method

.method private cancelSessionLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSessionLocked(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager;->cancelSession(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private commitLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->finishSessionLocked()V

    return-void
.end method

.method private dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .locals 4

    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v3, p1, :cond_1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3, v0, p3}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientDispatchUnhandledKey(Landroid/view/View;Landroid/view/KeyEvent;)V

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private ensureServiceClientAddedIfNeededLocked()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    if-nez v0, :cond_4

    new-instance v0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;

    invoke-direct {v0, p0}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;)V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, v2, v0}, Landroid/view/autofill/IAutoFillManager;->addClient(Landroid/view/autofill/IAutoFillManagerClient;I)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    sput-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_3

    move v3, v4

    nop

    :cond_3
    sput-boolean v3, Landroid/view/autofill/Helper;->sVerbose:Z

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    new-instance v4, Landroid/view/autofill/-$$Lambda$AutofillManager$V76JiQu509LCUz3-ckpb-nB3JhA;

    invoke-direct {v4, v2, v3, v0}, Landroid/view/autofill/-$$Lambda$AutofillManager$V76JiQu509LCUz3-ckpb-nB3JhA;-><init>(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V

    invoke-static {p0, v4}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v4

    iput-object v4, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_4
    :goto_2
    return-void
.end method

.method private findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;
    .locals 2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientFindViewByAutofillIdTraversal(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private finishSessionLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishSessionLocked(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager;->finishSession(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;
    .locals 2

    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/View;->getAutofillViewId()I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/view/autofill/AutofillId;-><init>(II)V

    return-object v0
.end method

.method private getClient()Landroid/view/autofill/AutofillManager$AutofillClient;
    .locals 4

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_0

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No AutofillClient for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on context "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static getDatasetIdFromAuthenticationId(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getRequestIdFromAuthenticationId(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method private static getStateAsString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "UNKNOWN_COMPAT_MODE"

    return-object v0

    :pswitch_1
    const-string v0, "DISABLED_BY_SERVICE"

    return-object v0

    :pswitch_2
    const-string v0, "SHOWING_SAVE_UI"

    return-object v0

    :pswitch_3
    const-string v0, "FINISHED"

    return-object v0

    :pswitch_4
    const-string v0, "ACTIVE"

    return-object v0

    :pswitch_5
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getStateAsStringLocked()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-static {v0}, Landroid/view/autofill/AutofillManager;->getStateAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isActiveLocked()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isClientDisablingEnterExitEvent()Z
    .locals 2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->isDisablingEnterExitEventForAutofill()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isClientVisibleForAutofillLocked()Z
    .locals 2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientIsVisibleForAutofill()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isDisabledByServiceLocked()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFinishedLocked()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$ensureServiceClientAddedIfNeededLocked$1(Landroid/view/autofill/IAutoFillManager;Landroid/view/autofill/IAutoFillManagerClient;I)V
    .locals 1

    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/view/autofill/IAutoFillManager;->removeClient(Landroid/view/autofill/IAutoFillManagerClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onVisibleForAutofill$0(Landroid/view/autofill/AutofillManager;)V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v1}, Landroid/view/autofill/AutofillManager$TrackedViews;->onVisibleForAutofillChangedLocked()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static makeAuthenticationId(II)I
    .locals 2

    shl-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method private newLog(I)Landroid/metrics/LogMaker;
    .locals 3

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x5b0

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x586

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    :goto_0
    return-object v0
.end method

.method private notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V
    .locals 4

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyNoFillUi(): sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", autofillId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", sessionFinishedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v3, p1, :cond_2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-object v1, v3

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0, v3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    :cond_4
    :goto_0
    if-eqz p3, :cond_5

    invoke-direct {p0, p3}, Landroid/view/autofill/AutofillManager;->setSessionFinished(I)V

    :cond_5
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private notifyViewClicked(Landroid/view/autofill/AutofillId;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyViewClicked(): id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", trigger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, p1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggering commit by click of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->commitLocked()V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x4cd

    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->newLog(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_4
    monitor-exit v0

    return-void

    :cond_5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyViewEntered(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;ILandroid/graphics/Rect;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {v1, p1, p2, v0}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyViewEnteredLocked(Landroid/view/View;I)Landroid/view/autofill/AutofillManager$AutofillCallback;
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/view/autofill/AutofillManager;->shouldIgnoreViewEnteredLocked(Landroid/view/autofill/AutofillId;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v0, :cond_3

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v8

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, v6, v1, v8, p2}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v6

    move-object v3, v8

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    :goto_0
    invoke-direct {p0, v6}, Landroid/view/autofill/AutofillManager;->addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V

    :cond_3
    :goto_1
    return-object v7
.end method

.method private notifyViewEnteredLocked(Landroid/view/View;ILandroid/graphics/Rect;I)Landroid/view/autofill/AutofillManager$AutofillCallback;
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, p4}, Landroid/view/autofill/AutofillManager;->shouldIgnoreViewEnteredLocked(Landroid/view/autofill/AutofillId;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v7

    :cond_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v0, :cond_3

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v6, p3, v0, p4}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v6

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    :goto_0
    invoke-direct {p0, v6}, Landroid/view/autofill/AutofillManager;->addEnteredIdLocked(Landroid/view/autofill/AutofillId;)V

    :cond_3
    :goto_1
    return-object v7
.end method

.method private notifyViewExitedLocked(Landroid/view/View;I)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    :cond_0
    return-void
.end method

.method private notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V
    .locals 5

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p4, :cond_0

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    :goto_0
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "visibility changed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p3, :cond_3

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2

    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hidding UI when view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " became invisible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v1, p1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    :cond_3
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v2, v1, p3}, Landroid/view/autofill/AutofillManager$TrackedViews;->notifyViewVisibilityChangedLocked(Landroid/view/autofill/AutofillId;Z)V

    goto :goto_1

    :cond_4
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_5

    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring visibility change on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": no tracked views"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
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

.method private post(Ljava/lang/Runnable;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "AutofillManager"

    const-string v2, "ignoring post() because client is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRunOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRequestHideFillUi()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-object v0, v3

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v1

    invoke-virtual {v0, p2, v1, v2}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2, v2}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private requestHideFillUi(Landroid/view/autofill/AutofillId;Z)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    :goto_0
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestHideFillUi("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): anchor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRequestHideFillUi()Z

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    return-void
.end method

.method private requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 13

    move-object v1, p0

    move-object v2, p2

    invoke-direct {v1, v2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    const/4 v10, 0x0

    iget-object v11, v1, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget v0, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v12, p1

    if-ne v0, v12, :cond_1

    :try_start_1
    invoke-direct {v1}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v3, v0

    move-object v4, v9

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v3 .. v8}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientRequestShowFillUi(Landroid/view/View;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    move-object v10, v3

    iput-object v2, v1, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    :cond_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v10, :cond_3

    invoke-virtual {v2}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v0

    invoke-virtual {v10, v9, v0, v3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    goto :goto_0

    :cond_2
    invoke-virtual {v10, v9, v3}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    move v12, p1

    :goto_1
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private resetSessionLocked(Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    if-eqz p1, :cond_0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    :cond_0
    return-void
.end method

.method private setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    new-instance v2, Landroid/view/autofill/ParcelableMap;

    invoke-direct {v2, v3}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    :cond_0
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-virtual {v2, v4, p2}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAutofilled(Z)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method private setNotifyOnClickLocked(Landroid/view/autofill/AutofillId;Z)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNotifyOnClick(): invalid id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setNotifyAutofillManagerOnClick(Z)V

    return-void
.end method

.method private setSaveUiState(IZ)V
    .locals 5

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSaveUiState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    const-string v1, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSaveUiState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ") called on existing session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; cancelling it"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelSessionLocked()V

    :cond_1
    if-eqz p2, :cond_2

    iput p1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/4 v1, 0x3

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    goto :goto_0

    :cond_2
    iput v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setSessionFinished(I)V
    .locals 4

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSessionFinished(): from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getStateAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    iput v2, p0, Landroid/view/autofill/AutofillManager;->mState:I

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    iput p1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setState(I)V
    .locals 5

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    :try_start_0
    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_2

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0, v3}, Landroid/view/autofill/AutofillManager;->resetSessionLocked(Z)V

    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    invoke-virtual {v4}, Lsun/misc/Cleaner;->clean()V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mServiceClientCleaner:Lsun/misc/Cleaner;

    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v2

    :goto_1
    sput-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    move v2, v3

    nop

    :cond_6
    sput-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    .locals 6

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v1, p1, :cond_5

    if-eqz p3, :cond_0

    new-instance v1, Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-direct {v1, p0, p2}, Landroid/view/autofill/AutofillManager$TrackedViews;-><init>(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    :goto_0
    iput-boolean p4, p0, Landroid/view/autofill/AutofillManager;->mSaveOnFinish:Z

    const/4 v1, 0x0

    if-eqz p5, :cond_3

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-nez v2, :cond_1

    new-instance v2, Landroid/util/ArraySet;

    array-length v3, p5

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    :cond_1
    array-length v2, p5

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, p5, v3

    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_3

    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTrackedViews(): fillableIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mFillableIds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, p6}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-direct {p0, v2, v1}, Landroid/view/autofill/AutofillManager;->setNotifyOnClickLocked(Landroid/view/autofill/AutofillId;Z)V

    :cond_4
    if-eqz p6, :cond_5

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p6, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iput-object p6, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/view/autofill/AutofillManager;->setNotifyOnClickLocked(Landroid/view/autofill/AutofillId;Z)V

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldIgnoreViewEnteredLocked(Landroid/view/autofill/AutofillId;I)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isDisabledByServiceLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoring notifyViewEntered(flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") on state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because disabled by svc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isFinishedLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2

    const-string v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoring notifyViewEntered(flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") on state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " because view was already entered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_4

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not ignoring notifyViewEntered(flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", enteredIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V
    .locals 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move/from16 v14, p4

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSessionLocked(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", compatMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", enteredIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v15, p2

    move-object/from16 v12, p3

    :goto_0
    iget v0, v1, Landroid/view/autofill/AutofillManager;->mState:I

    if-eqz v0, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->isFinishedLocked()Z

    move-result v0

    if-nez v0, :cond_2

    and-int/lit8 v0, v14, 0x1

    if-nez v0, :cond_2

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not automatically starting session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " on state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and flags "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v2, v1, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetActivityToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, v1, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v4}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v1, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v8

    iget-object v5, v1, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v11, 0x1

    if-eqz v5, :cond_4

    move v9, v11

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    move v9, v5

    :goto_1
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v17

    move-object v5, v13

    move-object v6, v15

    move-object v7, v12

    move v10, v14

    move v13, v11

    move-object/from16 v11, v16

    move/from16 v12, v17

    invoke-interface/range {v2 .. v12}, Landroid/view/autofill/IAutoFillManager;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;Z)I

    move-result v2

    iput v2, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget v2, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_5

    iput v13, v1, Landroid/view/autofill/AutofillManager;->mState:I

    :cond_5
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientResetableStateAvailable()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .locals 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v1, p0

    move/from16 v15, p5

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSessionLocked(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p1

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p4

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move/from16 v11, p4

    :goto_0
    and-int/lit8 v0, v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-eqz v0, :cond_1

    move/from16 v0, v17

    goto :goto_1

    :cond_1
    move/from16 v0, v16

    :goto_1
    move/from16 v18, v0

    if-eqz v18, :cond_7

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v2, v1, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetActivityToken()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, v1, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v4}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v1, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v8

    iget-object v5, v1, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v5, :cond_3

    move/from16 v9, v17

    goto :goto_2

    :cond_3
    nop

    move/from16 v9, v16

    :goto_2
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v19

    iget v10, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v20

    move-object v5, v14

    move-object v6, v13

    move-object v7, v12

    move/from16 v21, v10

    move v10, v15

    move-object/from16 v11, v19

    move/from16 v12, v21

    move/from16 v13, p4

    move/from16 v14, v20

    invoke-interface/range {v2 .. v14}, Landroid/view/autofill/IAutoFillManager;->updateOrRestartSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;IIZ)I

    move-result v2

    iget v3, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq v2, v3, :cond_6

    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_4

    const-string v3, "AutofillManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session restarted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "=>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput v2, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget v3, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_5

    move/from16 v3, v16

    goto :goto_3

    :cond_5
    move/from16 v3, v17

    :goto_3
    iput v3, v1, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientResetableStateAvailable()V

    :cond_6
    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_7
    iget-object v2, v1, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v3, v1, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v0, v1, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v9

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move v8, v15

    invoke-interface/range {v2 .. v9}, Landroid/view/autofill/IAutoFillManager;->updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    nop

    return-void

    :goto_5
    nop

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public cancel()V
    .locals 2

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    const-string v1, "cancel() called by app"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public commit()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "AutofillManager"

    const-string v1, "commit() called by app"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->commitLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableAutofillServices()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/autofill/IAutoFillManager;->disableOwnedAutofillServices(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disableOwnedAutofillServices()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->disableAutofillServices()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "AutofillManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "sessionId: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "state: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "context: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "client: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "enabled: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "hasService: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "hasCallback: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "onInvisibleCalled "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "last autofilled data: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "tracked views: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-nez v1, :cond_2

    const-string/jumbo v1, "null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "visible:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager$TrackedViews;->access$000(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "invisible:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager$TrackedViews;->access$100(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "fillable ids: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "entered ids: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mEnteredIds:Landroid/util/ArraySet;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "save trigger id: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mSaveTriggerId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "save on finish(): "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mSaveOnFinish:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "compat mode enabled: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isCompatibilityModeEnabledLocked()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "debug: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " verbose: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public enableCompatibilityMode()V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    invoke-direct {v1, p0}, Landroid/view/autofill/AutofillManager$CompatibilityBridge;-><init>(Landroid/view/autofill/AutofillManager;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAutofillServiceComponentName()Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManager;->getAutofillServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAvailableFieldClassificationAlgorithms()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManager;->getAvailableFieldClassificationAlgorithms()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return-object v1
.end method

.method public getDefaultFieldClassificationAlgorithm()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManager;->getDefaultFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return-object v1
.end method

.method public getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManager;->getFillEventHistory()Landroid/service/autofill/FillEventHistory;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return-object v1
.end method

.method public getNextAutofillId()Landroid/view/autofill/AutofillId;
    .locals 5

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetNextAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v1

    if-nez v1, :cond_1

    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextAutofillId(): client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " returned null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public getUserData()Landroid/service/autofill/UserData;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManager;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return-object v1
.end method

.method public getUserDataId()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManager;->getUserDataId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return-object v1
.end method

.method public hasAutofillFeature()Z
    .locals 1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEnabledAutofillServices()Z
    .locals 3

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/autofill/IAutoFillManager;->isServiceEnabled(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAutofillSupported()Z
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/autofill/IAutoFillManager;->isServiceSupported(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAutofillUiShowing()Z
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientIsFillUiShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isCompatibilityModeEnabledLocked()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCompatibilityBridge:Landroid/view/autofill/AutofillManager$CompatibilityBridge;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isDisabledByServiceLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFieldClassificationEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManager;->isFieldClassificationEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return v1
.end method

.method public notifyValueChanged(Landroid/view/View;)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    invoke-virtual {p1, v5}, Landroid/view/View;->setAutofilled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    move-object v0, v4

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v4, v0}, Landroid/view/autofill/ParcelableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    move-object v2, v4

    const/4 v1, 0x1

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v4, v0}, Landroid/view/autofill/ParcelableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->setAutofilled(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v5}, Landroid/view/View;->setAutofilled(Z)V

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v4, v0}, Landroid/view/autofill/ParcelableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setAutofilled(Z)V

    :goto_0
    iget-boolean v4, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v4, :cond_7

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    move-object v0, v4

    :cond_5
    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    move-object v2, v4

    :cond_6
    const/4 v7, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v0

    move-object v8, v2

    invoke-direct/range {v5 .. v10}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    monitor-exit v3

    return-void

    :cond_7
    :goto_1
    sget-boolean v4, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_8

    const-string v4, "AutofillManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyValueChanged("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "): ignoring on state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_3

    const-string v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyValueChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): ignoring on state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyViewClicked(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->notifyViewClicked(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public notifyViewClicked(Landroid/view/View;I)V
    .locals 1

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/autofill/AutofillManager;->notifyViewClicked(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public notifyViewEntered(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    return-void
.end method

.method public notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    return-void
.end method

.method public notifyViewExited(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillManager;->notifyViewExitedLocked(Landroid/view/View;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyViewExited(Landroid/view/View;I)V
    .locals 3

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyViewExited("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->notifyViewExitedLocked(Landroid/view/View;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyViewExitedLocked(Landroid/view/View;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isClientDisablingEnterExitEvent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V

    :cond_0
    return-void
.end method

.method public notifyViewVisibilityChanged(Landroid/view/View;IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V

    return-void
.end method

.method public notifyViewVisibilityChanged(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V

    return-void
.end method

.method public onActivityFinishing()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mSaveOnFinish:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "AutofillManager"

    const-string/jumbo v2, "onActivityFinishing(): calling commitLocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->commitLocked()V

    goto :goto_0

    :cond_2
    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "AutofillManager"

    const-string/jumbo v2, "onActivityFinishing(): calling cancelLocked()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelLocked()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAuthenticationResult(ILandroid/content/Intent;Landroid/view/View;)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationResult(): d="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    if-nez v1, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->canNotifyAutofillEnterExitEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p3}, Landroid/view/autofill/AutofillManager;->notifyViewExitedLocked(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-direct {p0, p3, v1}, Landroid/view/autofill/AutofillManager;->notifyViewEnteredLocked(Landroid/view/View;I)Landroid/view/autofill/AutofillManager$AutofillCallback;

    :cond_3
    if-nez p2, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    const-string v1, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :try_start_1
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v5, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-interface {v4, v2, v5, p1, v6}, Landroid/view/autofill/IAutoFillManager;->setAuthenticationResult(Landroid/os/Bundle;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "AutofillManager"

    const-string v6, "Error delivering authentication result"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "android:lastAutoFilledData"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/ParcelableMap;

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AutofillManager"

    const-string v2, "New session was started before onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    const-string v1, "android:sessionId"

    const/high16 v2, -0x80000000

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const-string v1, "android:state"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq v1, v2, :cond_4

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    :try_start_1
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v5, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientGetActivityToken()Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v7}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Landroid/view/autofill/IAutoFillManager;->restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v5, "AutofillManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " could not be restored"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iput v3, p0, Landroid/view/autofill/AutofillManager;->mState:I

    goto :goto_0

    :cond_2
    sget-boolean v2, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_3

    const-string v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "session "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " was restored"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillClientResetableStateAvailable()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "AutofillManager"

    const-string v4, "Could not figure out if there was an autofill session"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onInvisibleForAutofill()V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mOnInvisibleCalled:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPendingSaveUi(ILandroid/os/IBinder;)V
    .locals 3

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPendingSaveUi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManager;->onPendingSaveUi(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    const-string v1, "android:sessionId"

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    if-eqz v1, :cond_2

    const-string v1, "android:state"

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-eqz v1, :cond_3

    const-string v1, "android:lastAutoFilledData"

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVisibleForAutofill()V
    .locals 4

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Landroid/view/autofill/-$$Lambda$AutofillManager$YfpJNFodEuj5lbXfPlc77fsEvC8;

    invoke-direct {v1, p0}, Landroid/view/autofill/-$$Lambda$AutofillManager$YfpJNFodEuj5lbXfPlc77fsEvC8;-><init>(Landroid/view/autofill/AutofillManager;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public registerCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_1

    :try_start_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    :try_start_1
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v4, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-interface {v3, v4, v5, v2}, Landroid/view/autofill/IAutoFillManager;->setHasCallback(IIZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestAutofill(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    return-void
.end method

.method public requestAutofill(Landroid/view/View;ILandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    return-void
.end method

.method public requestHideFillUi()V
    .locals 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mIdShownFillUi:Landroid/view/autofill/AutofillId;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method public setUserData(Landroid/service/autofill/UserData;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v0, p1}, Landroid/view/autofill/IAutoFillManager;->setUserData(Landroid/service/autofill/UserData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public unregisterCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/autofill/IAutoFillManager;->setHasCallback(IIZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
