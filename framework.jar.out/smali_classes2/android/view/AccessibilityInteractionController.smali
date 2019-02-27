.class final Landroid/view/AccessibilityInteractionController;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/AccessibilityInteractionController$MessageHolder;,
        Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;,
        Landroid/view/AccessibilityInteractionController$PrivateHandler;,
        Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    }
.end annotation


# static fields
.field private static final CONSIDER_REQUEST_PREPARERS:Z = false

.field private static final ENFORCE_NODE_TREE_CONSISTENT:Z = false

.field private static final IGNORE_REQUEST_PREPARERS:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionController"

.field private static final REQUEST_PREPARER_TIMEOUT_MS:J = 0x1f4L


# instance fields
.field private final mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveRequestPreparerId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mMessagesWaitingForRequestPreparer:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/AccessibilityInteractionController$MessageHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mMyLooperThreadId:J

.field private final mMyProcessId:I

.field private mNumActiveRequestPreparers:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

.field private final mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field private final mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    iget-object v0, p1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    new-instance v1, Landroid/view/AccessibilityInteractionController$PrivateHandler;

    invoke-direct {v1, p0, v0}, Landroid/view/AccessibilityInteractionController$PrivateHandler;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    new-instance v1, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic access$1000(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->prepareForExtraDataRequestUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->requestPreparerDoneUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/view/AccessibilityInteractionController;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->requestPreparerTimeoutUiThread()V

    return-void
.end method

.method static synthetic access$200(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;
    .locals 1

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->performAccessibilityActionUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$600(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->findFocusUiThread(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Landroid/view/AccessibilityInteractionController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController;->focusSearchUiThread(Landroid/os/Message;)V

    return-void
.end method

.method private adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V
    .locals 2

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v2, p2}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mApplicationScale:F

    invoke-direct {v0, v3, v2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    iget-object v4, v0, Landroid/view/AccessibilityInteractionController;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, v0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->scale(F)V

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->scale(F)V

    :cond_2
    if-eqz v2, :cond_3

    iget v6, v2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->scale(F)V

    iget v6, v2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->scale(F)V

    iget v6, v2, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v6, v6

    iget v7, v2, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->hasExtras()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    if-eqz v8, :cond_5

    move v9, v7

    :goto_0
    array-length v10, v8

    if-ge v9, v10, :cond_5

    aget-object v10, v8, v9

    check-cast v10, Landroid/graphics/RectF;

    invoke-virtual {v10, v3}, Landroid/graphics/RectF;->scale(F)V

    if-eqz v2, :cond_4

    iget v11, v2, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->scale(F)V

    iget v11, v2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v12, v2, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_8

    iget-object v6, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v6, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    if-nez v8, :cond_6

    return-void

    :cond_6
    iget v8, v6, Landroid/view/View$AttachInfo;->mApplicationScale:F

    iget v9, v2, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v8, v9

    iget-object v9, v0, Landroid/view/AccessibilityInteractionController;->mTempRect1:Landroid/graphics/Rect;

    iget v10, v6, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    iget v11, v2, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    iget v10, v6, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    iget v11, v2, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    iget v10, v9, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    iget-object v11, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v11, v11, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v11, v11

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->right:I

    iget v10, v9, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget-object v11, v0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v11, v11, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v11, v11

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, v6, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    iget-object v11, v0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    invoke-virtual {v10, v11}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v10, v0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, v0, Landroid/view/AccessibilityInteractionController;->mTempPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    iget-object v12, v0, Landroid/view/AccessibilityInteractionController;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {v12, v7, v7, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    :cond_7
    iget v13, v5, Landroid/graphics/Rect;->left:I

    iget v14, v5, Landroid/graphics/Rect;->top:I

    iget v15, v5, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v13, v14, v15, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    :cond_8
    return-void
.end method

.method private applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/MagnificationSpec;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    invoke-direct {p0, v0, p2}, Landroid/view/AccessibilityInteractionController;->shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v3, p2}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget v9, v8, Landroid/os/Message;->arg1:I

    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/android/internal/os/SomeArgs;

    iget v11, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v12, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v13, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/view/MagnificationSpec;

    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Region;

    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    invoke-virtual {v10}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v6, v7, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    :try_start_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    move-object/from16 v18, v6

    goto :goto_2

    :cond_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    const v1, 0x7ffffffe

    if-ne v11, v1, :cond_1

    :try_start_1
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v18, v6

    goto :goto_3

    :cond_1
    :try_start_2
    invoke-direct {v7, v11}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {v7, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mPrefetcher:Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v0

    move v3, v12

    move v4, v9

    move-object v5, v6

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    :try_start_3
    invoke-virtual/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    move-object/from16 v18, v6

    :goto_1
    move-object v1, v7

    move-object/from16 v2, v18

    move-object v3, v14

    move v4, v13

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    nop

    return-void

    :cond_3
    move-object/from16 v18, v6

    :goto_2
    move-object v1, v7

    move-object/from16 v2, v18

    move-object v3, v14

    move v4, v13

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v18, v6

    :goto_3
    move-object v1, v7

    move-object/from16 v2, v18

    move-object v3, v14

    move v4, v13

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v0
.end method

.method private findAccessibilityNodeInfosByTextUiThread(Landroid/os/Message;)V
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget v9, v8, Landroid/os/Message;->arg1:I

    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/view/MagnificationSpec;

    iget v14, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v15, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v6, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v0, v10, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Region;

    invoke-virtual {v10}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    move/from16 v17, v6

    goto/16 :goto_4

    :cond_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    const v1, 0x7ffffffe

    if-eq v14, v1, :cond_1

    :try_start_1
    invoke-direct {v7, v14}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v17, v6

    goto/16 :goto_5

    :cond_1
    :try_start_2
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    :try_start_3
    invoke-direct {v7, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v11, v15}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    move-object v2, v3

    goto/16 :goto_3

    :cond_2
    const/4 v3, -0x1

    if-ne v15, v3, :cond_6

    iget-object v4, v7, Landroid/view/AccessibilityInteractionController;->mTempArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x7

    invoke-virtual {v0, v4, v11, v5}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, v7, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    move-object v2, v5

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v17, 0x0

    :goto_1
    move/from16 v18, v17

    move/from16 v3, v18

    if-ge v3, v5, :cond_6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    move-object/from16 v19, v17

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v17

    move-object/from16 v1, v17

    if-eqz v1, :cond_4

    nop

    move-object/from16 v21, v4

    const/4 v4, -0x1

    invoke-virtual {v1, v11, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v17

    move-object/from16 v22, v17

    move-object/from16 v4, v22

    if-eqz v4, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    goto :goto_2

    :cond_4
    move-object/from16 v21, v4

    invoke-virtual {v0}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_5
    move-object/from16 v21, v4

    :goto_2
    add-int/lit8 v17, v3, 0x1

    move-object/from16 v0, v20

    move-object/from16 v4, v21

    const/4 v3, -0x1

    goto :goto_1

    :cond_6
    :goto_3
    move-object v0, v2

    move-object v1, v7

    move-object v2, v0

    move-object v3, v12

    move v4, v6

    move-object v5, v13

    move/from16 v17, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    nop

    return-void

    :cond_7
    move/from16 v17, v6

    :goto_4
    move-object v1, v7

    move-object v3, v12

    move/from16 v4, v17

    move-object v5, v13

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :catchall_1
    move-exception v0

    move/from16 v17, v6

    move-object/from16 v18, v2

    :goto_5
    move-object v1, v7

    move-object/from16 v2, v18

    move-object v3, v12

    move/from16 v4, v17

    move-object v5, v13

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v0
.end method

.method private findAccessibilityNodeInfosByViewIdUiThread(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget v9, v8, Landroid/os/Message;->arg1:I

    iget v10, v8, Landroid/os/Message;->arg2:I

    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    iget v12, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/view/MagnificationSpec;

    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Region;

    invoke-virtual {v11}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v6, v7, Landroid/view/AccessibilityInteractionController;->mTempAccessibilityNodeInfoList:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    :try_start_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    move/from16 v17, v9

    move-object v9, v6

    goto/16 :goto_2

    :cond_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    const v1, 0x7ffffffe

    if-eq v10, v1, :cond_1

    :try_start_1
    invoke-direct {v7, v10}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move/from16 v17, v9

    move-object v9, v6

    goto/16 :goto_3

    :cond_1
    :try_start_2
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v5, v1

    if-gtz v5, :cond_2

    move-object v1, v7

    move-object v2, v6

    move-object v3, v13

    move v4, v12

    move v8, v5

    move-object v5, v14

    move/from16 v17, v9

    move-object v9, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :cond_2
    move v8, v5

    move/from16 v17, v9

    move-object v9, v6

    :try_start_3
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    if-nez v1, :cond_3

    new-instance v1, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-direct {v1, v7, v2}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;-><init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V

    iput-object v1, v7, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    :cond_3
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v1, v8, v9}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->init(ILjava/util/List;)V

    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mAddNodeInfosForViewId:Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;

    invoke-virtual {v1}, Landroid/view/AccessibilityInteractionController$AddNodeInfosForViewId;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_4
    move/from16 v17, v9

    move-object v9, v6

    :goto_1
    move-object v1, v7

    move-object v2, v9

    move-object v3, v13

    move v4, v12

    move-object v5, v14

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    nop

    return-void

    :cond_5
    move/from16 v17, v9

    move-object v9, v6

    :goto_2
    move-object v1, v7

    move-object v2, v9

    move-object v3, v13

    move v4, v12

    move-object v5, v14

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :catchall_2
    move-exception v0

    move/from16 v17, v9

    move-object v9, v6

    :goto_3
    move-object v1, v7

    move-object v2, v9

    move-object v3, v13

    move v4, v12

    move-object v5, v14

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v0
.end method

.method private findFocusUiThread(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget v9, v8, Landroid/os/Message;->arg1:I

    iget v10, v8, Landroid/os/Message;->arg2:I

    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    iget v12, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v13, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v14, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/MagnificationSpec;

    iget-object v0, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/graphics/Region;

    invoke-virtual {v11}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v9, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v0, 0x0

    const v1, 0x7ffffffe

    if-eq v13, v1, :cond_1

    invoke-direct {v7, v13}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_9

    invoke-direct {v7, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_9

    packed-switch v10, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    goto :goto_2

    :pswitch_0
    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v1, :cond_9

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-direct {v7, v1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v4, :cond_5

    iget-object v4, v7, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    :cond_4
    const/4 v4, -0x1

    if-ne v14, v4, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object v2, v4

    :cond_5
    :goto_1
    goto :goto_3

    :pswitch_1
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-direct {v7, v1}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, v10}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object v2, v4

    :cond_7
    if-nez v2, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    move-object v2, v4

    :cond_8
    goto :goto_3

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown focus type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    :goto_3
    move-object v0, v2

    move-object v1, v7

    move-object v2, v0

    move-object v3, v15

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    nop

    return-void

    :cond_a
    :goto_4
    move-object v1, v7

    move-object v3, v15

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v18, v2

    move-object v1, v7

    move-object/from16 v2, v18

    move-object v3, v15

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findViewByAccessibilityId(I)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    return-object v2
.end method

.method private focusSearchUiThread(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v11, v10, Landroid/os/Message;->arg1:I

    iget v12, v10, Landroid/os/Message;->arg2:I

    iget-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/android/internal/os/SomeArgs;

    iget v14, v13, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v15, v13, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v0, v13, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v0, v13, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/MagnificationSpec;

    iget-object v0, v13, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/graphics/Region;

    invoke-virtual {v13}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, v9, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, v9, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v9, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v11, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v0, 0x0

    const v1, 0x7ffffffe

    if-eq v12, v1, :cond_1

    invoke-direct {v9, v12}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, v9, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {v9, v0}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v14}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    move-object v1, v9

    move-object v2, v0

    move-object/from16 v3, v16

    move v4, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    nop

    return-void

    :cond_3
    :goto_2
    move-object v1, v9

    move-object/from16 v3, v16

    move v4, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v9

    move-object v4, v2

    move-object/from16 v5, v16

    move v6, v15

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    invoke-direct/range {v3 .. v8}, Landroid/view/AccessibilityInteractionController;->updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v0
.end method

.method private handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 6

    const-string v0, "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/text/style/AccessibilityClickableSpan;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    return v2

    :cond_3
    move-object v4, v0

    check-cast v4, Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getOriginalText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/style/AccessibilityClickableSpan;->findClickableSpan(Ljava/lang/CharSequence;)Landroid/text/style/ClickableSpan;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    const/4 v2, 0x1

    return v2

    :cond_4
    return v2
.end method

.method private holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v9, v7, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget v0, v7, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    const/4 v10, 0x1

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    monitor-exit v9

    return v10

    :cond_0
    iget v0, v8, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    monitor-exit v9

    return v2

    :cond_1
    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    move-object v11, v1

    if-nez v11, :cond_2

    monitor-exit v9

    return v2

    :cond_2
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move v12, v1

    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v12}, Landroid/view/accessibility/AccessibilityManager;->getRequestPreparersForAccessibilityId(I)Ljava/util/List;

    move-result-object v1

    move-object v13, v1

    if-nez v13, :cond_3

    monitor-exit v9

    return v2

    :cond_3
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {v11, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    if-nez v14, :cond_4

    monitor-exit v9

    return v2

    :cond_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v7, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    nop

    :goto_0
    move v15, v2

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_6

    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v6, v1

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    move-object v4, v1

    nop

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_5

    const/4 v1, -0x1

    goto :goto_1

    :cond_5
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    :goto_1
    iput v1, v4, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object v14, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object v11, v4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v5, v1

    iget v1, v7, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    add-int/2addr v1, v10

    iput v1, v7, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    iput v1, v5, Landroid/os/Message;->arg1:I

    iput-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object v4, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v16, 0x1

    move-object v1, v7

    move-object v2, v6

    move/from16 v3, p2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-wide/from16 v4, p3

    move-object/from16 v19, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    iget-object v1, v7, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    add-int/lit8 v2, v15, 0x1

    goto :goto_0

    :cond_6
    invoke-direct/range {p0 .. p4}, Landroid/view/AccessibilityInteractionController;->queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V

    monitor-exit v9

    return v10

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isShown(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private performAccessibilityActionUiThread(Landroid/os/Message;)V
    .locals 13

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget v3, v2, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v4, v2, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v5, v2, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;

    iget-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    const/4 v8, 0x0

    move v9, v8

    :try_start_0
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v10, v10, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v10, :cond_5

    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-boolean v10, v10, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v10, :cond_0

    goto :goto_3

    :cond_0
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    const/4 v10, 0x0

    const v11, 0x7ffffffe

    if-eq v1, v11, :cond_1

    invoke-direct {p0, v1}, Landroid/view/AccessibilityInteractionController;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v11

    move-object v10, v11

    goto :goto_0

    :cond_1
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object v10, v11

    :goto_0
    if-eqz v10, :cond_4

    invoke-direct {p0, v10}, Landroid/view/AccessibilityInteractionController;->isShown(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_4

    const v11, 0x102016b

    if-ne v4, v11, :cond_2

    invoke-direct {p0, v10, v3, v7}, Landroid/view/AccessibilityInteractionController;->handleClickableSpanActionUiThread(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v11

    move v9, v11

    goto :goto_1

    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11, v3, v4, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v12

    move v9, v12

    goto :goto_1

    :cond_3
    const/4 v12, -0x1

    if-ne v3, v12, :cond_4

    invoke-virtual {v10, v4, v7}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v12

    :cond_4
    :goto_1
    :try_start_1
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v8, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-interface {v6, v9, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    nop

    :goto_2
    return-void

    :cond_5
    :goto_3
    :try_start_2
    iget-object v10, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v10, v10, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v8, v10, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-interface {v6, v9, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v8

    :goto_4
    return-void

    :catchall_0
    move-exception v10

    :try_start_3
    iget-object v11, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v11, v11, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v8, v11, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-interface {v6, v9, v5}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setPerformAccessibilityActionResult(ZI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v8

    :goto_5
    throw v10
.end method

.method private prepareForExtraDataRequestUiThread(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/AccessibilityRequestPreparer;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v5, Landroid/os/Message;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/view/accessibility/AccessibilityRequestPreparer;->onPrepareExtraData(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Message;)V

    return-void
.end method

.method private queueMessageToHandleOncePrepared(Landroid/os/Message;IJ)V
    .locals 2

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    :cond_0
    new-instance v0, Landroid/view/AccessibilityInteractionController$MessageHolder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController$MessageHolder;-><init>(Landroid/os/Message;IJ)V

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V
    .locals 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->recycle()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Region;->recycle()V

    :cond_1
    :goto_0
    return-void
.end method

.method private requestPreparerDoneUiThread(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    if-eq v1, v2, :cond_0

    const-string v1, "AccessibilityInteractionController"

    const-string v2, "Surprising AccessibilityRequestPreparer callback (likely late)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    iget v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestPreparerTimeoutUiThread()V
    .locals 3

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "AccessibilityInteractionController"

    const-string v2, "AccessibilityRequestPreparer timed out"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/view/AccessibilityInteractionController;->scheduleAllMessagesWaitingForRequestPreparerLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleAllMessagesWaitingForRequestPreparerLocked()V
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/AccessibilityInteractionController$MessageHolder;

    iget-object v5, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mMessage:Landroid/os/Message;

    iget v6, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingPid:I

    iget-wide v7, v3, Landroid/view/AccessibilityInteractionController$MessageHolder;->mInterrogatingTid:J

    if-nez v2, :cond_0

    const/4 v4, 0x1

    move v9, v4

    goto :goto_1

    :cond_0
    move v9, v1

    :goto_1
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/view/AccessibilityInteractionController;->mMessagesWaitingForRequestPreparer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mNumActiveRequestPreparers:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/AccessibilityInteractionController;->mActiveRequestPreparerId:I

    return-void
.end method

.method private scheduleMessage(Landroid/os/Message;IJZ)V
    .locals 2

    if-nez p5, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/AccessibilityInteractionController;->holdOffMessageIfNeeded(Landroid/os/Message;IJ)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Landroid/view/AccessibilityInteractionController;->mMyProcessId:I

    if-ne p2, v0, :cond_1

    iget-wide v0, p0, Landroid/view/AccessibilityInteractionController;->mMyLooperThreadId:J

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    invoke-static {p3, p4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->setSameThreadMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private shouldApplyAppScaleAndMagnificationSpec(FLandroid/view/MagnificationSpec;)Z
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private updateInfoForViewportAndReturnFindNodeResult(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/MagnificationSpec;)V

    invoke-direct {p0, p1, p5}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/graphics/Region;)V

    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v0

    :catch_0
    move-exception v0

    :goto_0
    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    nop

    return-void
.end method

.method private updateInfosForViewportAndReturnFindNodeResult(Ljava/util/List;Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;ILandroid/view/MagnificationSpec;Landroid/graphics/Region;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;",
            "I",
            "Landroid/view/MagnificationSpec;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/view/AccessibilityInteractionController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/View$AttachInfo;->mAccessibilityFetchFlags:I

    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController;->applyAppScaleAndMagnificationSpecIfNeeded(Ljava/util/List;Landroid/view/MagnificationSpec;)V

    invoke-direct {p0, p1, p5}, Landroid/view/AccessibilityInteractionController;->adjustIsVisibleToUserIfNeeded(Ljava/util/List;Landroid/graphics/Region;)V

    invoke-interface {p2, p1, p3}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;->setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    throw v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    invoke-direct {p0, p4, p5}, Landroid/view/AccessibilityInteractionController;->recycleMagnificationSpecAndRegionIfNeeded(Landroid/view/MagnificationSpec;Landroid/graphics/Region;)V

    nop

    return-void
.end method


# virtual methods
.method public findAccessibilityNodeInfoByAccessibilityIdClientThread(JLandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;Landroid/os/Bundle;)V
    .locals 15

    move-object v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/4 v0, 0x2

    iput v0, v7, Landroid/os/Message;->what:I

    move/from16 v8, p6

    iput v8, v7, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v10, p4

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v11, p5

    iput-object v11, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v12, p10

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v13, p3

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v14, p11

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, p7

    move-wide/from16 v3, p8

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    return-void
.end method

.method public findAccessibilityNodeInfosByTextClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15

    move-object v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/4 v0, 0x4

    iput v0, v7, Landroid/os/Message;->what:I

    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    move-object/from16 v10, p3

    iput-object v10, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v11, p6

    iput-object v11, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v12, p11

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v13, p5

    iput v13, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v14, p4

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    return-void
.end method

.method public findAccessibilityNodeInfosByViewIdClientThread(JLjava/lang/String;Landroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15

    move-object v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/4 v0, 0x3

    iput v0, v7, Landroid/os/Message;->what:I

    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v7, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    move/from16 v10, p5

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v11, p6

    iput-object v11, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v12, p11

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v13, p3

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v14, p4

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    return-void
.end method

.method public findFocusClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15

    move-object v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/4 v0, 0x5

    iput v0, v7, Landroid/os/Message;->what:I

    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    move/from16 v9, p3

    iput v9, v7, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v10

    move/from16 v11, p5

    iput v11, v10, Lcom/android/internal/os/SomeArgs;->argi1:I

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v10, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v12, p6

    iput-object v12, v10, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v13, p11

    iput-object v13, v10, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v14, p4

    iput-object v14, v10, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object v10, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    return-void
.end method

.method public focusSearchClientThread(JILandroid/graphics/Region;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJLandroid/view/MagnificationSpec;)V
    .locals 15

    move-object v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/4 v0, 0x6

    iput v0, v7, Landroid/os/Message;->what:I

    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v7, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    move/from16 v10, p3

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v11, p5

    iput v11, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v12, p6

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v13, p11

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v14, p4

    iput-object v14, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    return-void
.end method

.method public performAccessibilityActionClientThread(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    .locals 14

    move-object v6, p0

    iget-object v0, v6, Landroid/view/AccessibilityInteractionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    const/4 v0, 0x1

    iput v0, v7, Landroid/os/Message;->what:I

    move/from16 v8, p7

    iput v8, v7, Landroid/os/Message;->arg1:I

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    iput v0, v7, Landroid/os/Message;->arg2:I

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v9

    invoke-static/range {p1 .. p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    iput v0, v9, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v10, p3

    iput v10, v9, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v11, p5

    iput v11, v9, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v12, p6

    iput-object v12, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v13, p4

    iput-object v13, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, p8

    move-wide/from16 v3, p9

    invoke-direct/range {v0 .. v5}, Landroid/view/AccessibilityInteractionController;->scheduleMessage(Landroid/os/Message;IJZ)V

    return-void
.end method
