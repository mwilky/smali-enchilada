.class public Lcom/android/server/accessibility/AccessibilityManagerService;
.super Landroid/view/accessibility/IAccessibilityManager$Stub;
.source "AccessibilityManagerService.java"

# interfaces
.implements Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;,
        Lcom/android/server/accessibility/AccessibilityManagerService$UserState;,
        Lcom/android/server/accessibility/AccessibilityManagerService$Client;,
        Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;,
        Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;,
        Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;,
        Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;,
        Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final DEBUG:Z = false

.field private static final FUNCTION_DUMP:Ljava/lang/String; = "dump"

.field private static final FUNCTION_REGISTER_UI_TEST_AUTOMATION_SERVICE:Ljava/lang/String; = "registerUiTestAutomationService"

.field private static final GET_WINDOW_TOKEN:Ljava/lang/String; = "getWindowToken"

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManagerService"

.field public static final MAGNIFICATION_GESTURE_HANDLER_ID:I = 0x0

.field private static final OWN_PROCESS_ID:I

.field private static final SET_PIP_ACTION_REPLACEMENT:Ljava/lang/String; = "setPictureInPictureActionReplacingConnection"

.field private static final TEMPORARY_ENABLE_ACCESSIBILITY_UNTIL_KEYGUARD_REMOVED:Ljava/lang/String; = "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

.field private static final WAIT_FOR_USER_STATE_FULLY_INITIALIZED_MILLIS:I = 0xbb8

.field private static final WAIT_MOTION_INJECTOR_TIMEOUT_MILLIS:I = 0x3e8

.field private static final WAIT_WINDOWS_TIMEOUT_MILLIS:I = 0x1388

.field private static sIdCounter:I

.field private static sNextWindowId:I


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

.field private mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

.field private final mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

.field private final mGlobalClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalInteractionConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlobalWindowTokens:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInputFilter:Z

.field private mInitialized:Z

.field private mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

.field private mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

.field private mIsAccessibilityButtonShown:Z

.field private mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

.field private final mLock:Ljava/lang/Object;

.field private mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

.field private final mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

.field private mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mTempAccessibilityServiceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempComponentNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempIntArray:Landroid/util/IntArray;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private final mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

.field private mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    new-instance v0, Landroid/util/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager;

    invoke-direct {v0}, Lcom/android/server/accessibility/UiAutomationManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    iput v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v0, Lcom/android/server/accessibility/GlobalActionPerformer;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/GlobalActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeUser(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionLocked(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/AccessibilityManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/IBinder;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowIdLocked(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2508()I
    .locals 2

    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/GlobalActionPerformer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempRect1:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/appwidget/AppWidgetManagerInternal;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAppWidgetManager()Landroid/appwidget/AppWidgetManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/accessibility/AccessibilityManagerService;I)Landroid/os/IBinder;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowTokenLocked(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000()I
    .locals 1

    sget v0, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/UiAutomationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChange(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateDisplayDaltonizerLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateDisplayInversionLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readSoftKeyboardShowModeChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifySoftKeyboardShowModeChangedLocked(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->switchUser(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/AccessibilityManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->unlockUser(I)V

    return-void
.end method

.method private announceNewUserIfNeeded()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isHandlingAccessibilityEvents()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10406b4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V

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

.method private broadcastToClients(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accessibility/AccessibilityManagerService$UserState;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$Client;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->broadcastForEachCookie(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private canRegisterService(Landroid/content/pm/ServiceInfo;)Z
    .locals 7

    const-string v0, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "AccessibilityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping accessibility service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": it does not require the permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v3, "android:bind_accessibility_service"

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "AccessibilityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping accessibility service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": disallowed by AppOps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->canReceiveEventsLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x11

    const/4 v3, 0x1

    if-gt v0, v2, :cond_3

    iget-object v0, p2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v2, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$bNCuysjTCG2afhYMHuqu25CfY5g;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$bNCuysjTCG2afhYMHuqu25CfY5g;

    invoke-static {v2, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    return v3

    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    return v1
.end method

.method private computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageWhitelist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getRelevantEventTypes()I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    or-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isClientInPackageWhitelist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->getRelevantEventTypes()I

    move-result v2

    nop

    :cond_2
    or-int v0, v3, v2

    return v0
.end method

.method private disableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V
    .locals 3

    new-instance v0, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-direct {v0, v1, v2, p2}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->remove(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    :cond_0
    return-void
.end method

.method private enableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V
    .locals 3

    new-instance v0, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-direct {v0, v1, v2, p2}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->add(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    :cond_0
    return-void
.end method

.method private findWindowIdLocked(Landroid/os/IBinder;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    return v3

    :cond_1
    const/4 v3, -0x1

    return v3
.end method

.method private findWindowTokenLocked(I)Landroid/os/IBinder;
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    return-object v1
.end method

.method private getAppWidgetManager()Landroid/appwidget/AppWidgetManagerInternal;
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.app_widgets"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Landroid/appwidget/AppWidgetManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetManagerInternal;

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method private getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInteractionBridge:Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUserState(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private static isClientInPackageWhitelist(Landroid/accessibilityservice/AccessibilityServiceInfo;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mPackageNames:[Ljava/lang/String;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    nop

    return v2
.end method

.method public static synthetic lambda$5vwr6qV-eqdCr73CeDmVnsJlZHM(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToAllClients(II)V

    return-void
.end method

.method public static synthetic lambda$687mZTUrupnt857GOjw3XcKgrWE(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/RemoteCallbackList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendServicesStateChanged(Landroid/os/RemoteCallbackList;)V

    return-void
.end method

.method public static synthetic lambda$BX2CMQr5jU9WhPYx7Aaae4zgxf4(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEventToInputFilter(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static synthetic lambda$Gu-W_dQ2mWyy8l4tm19TzFxGbeM(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->announceNewUserIfNeeded()V

    return-void
.end method

.method public static synthetic lambda$UqJpHUxGOFXcIrjlVaMMAhCDDjA(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityButtonToInputFilter()V

    return-void
.end method

.method public static synthetic lambda$bNCuysjTCG2afhYMHuqu25CfY5g(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    return-void
.end method

.method public static synthetic lambda$jMhXm1Zlw_GKL4YQW-GQVpZTTP4(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->showAccessibilityButtonTargetSelection()V

    return-void
.end method

.method public static synthetic lambda$mAPLBShddfLlktd9Q8jVo04VVXo(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method static synthetic lambda$notifyClientsOfServicesStateChange$3(Landroid/view/accessibility/IAccessibilityManagerClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->notifyServicesStateChanged()V

    return-void
.end method

.method static synthetic lambda$sendStateToClients$2(ILandroid/view/accessibility/IAccessibilityManagerClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V

    return-void
.end method

.method public static synthetic lambda$updateRelevantEventsLocked$0(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->computeRelevantEventTypesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$Client;)I

    move-result v2

    iget v3, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    if-eq v3, v2, :cond_0

    iput v2, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mCallback:Landroid/view/accessibility/IAccessibilityManagerClient;

    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManagerClient;->setRelevantEventTypes(I)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static synthetic lambda$updateRelevantEventsLocked$1(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$CNt8wbTQCYcsUnUkUCQHtKqr-tY;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$CNt8wbTQCYcsUnUkUCQHtKqr-tY;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->broadcastToClients(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$w0ifSldCn8nADYgU7v1foSdmfe0(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method public static synthetic lambda$zXJtauhUptSkQJSF-M55-grAVbo(Lcom/android/server/accessibility/AccessibilityManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(II)V

    return-void
.end method

.method private notifyAccessibilityButtonClickedLocked()V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-boolean v5, v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    if-ne v1, v3, :cond_5

    iget-boolean v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$UqJpHUxGOFXcIrjlVaMMAhCDDjA;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$UqJpHUxGOFXcIrjlVaMMAhCDDjA;

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_a

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityButtonClickedLocked()V

    return-void

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    if-nez v2, :cond_6

    iget-boolean v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$jMhXm1Zlw_GKL4YQW-GQVpZTTP4;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$jMhXm1Zlw_GKL4YQW-GQVpZTTP4;

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_6
    iget-boolean v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$UqJpHUxGOFXcIrjlVaMMAhCDDjA;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$UqJpHUxGOFXcIrjlVaMMAhCDDjA;

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_7
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_2
    if-ltz v2, :cond_9

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v4, :cond_8

    iget-object v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mComponentName:Landroid/content/ComponentName;

    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityButtonClickedLocked()V

    return-void

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_9
    :goto_3
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$jMhXm1Zlw_GKL4YQW-GQVpZTTP4;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$jMhXm1Zlw_GKL4YQW-GQVpZTTP4;

    invoke-static {v3, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_a
    return-void
.end method

.method private notifyAccessibilityButtonVisibilityChangedLocked(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityButtonShown:Z

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-boolean v3, v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v3, :cond_0

    nop

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIsDefault:Z

    if-ne v4, p2, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method

.method private notifyClearAccessibilityCacheLocked()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyClearAccessibilityNodeInfoCache()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$ffR9e75U5oQEFdGZAdynWg701xE;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$ffR9e75U5oQEFdGZAdynWg701xE;

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private notifyGestureLocked(IZ)Z
    .locals 5

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestTouchExplorationMode:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mIsDefault:Z

    if-ne v4, p2, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyGesture(I)V

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private notifyMagnificationChangedLocked(Landroid/graphics/Region;FFF)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyMagnificationChangedLocked(Landroid/graphics/Region;FFF)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySoftKeyboardShowModeChangedLocked(I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifySoftKeyboardShowModeChangedLocked(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityShortcutLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityFocusBehaviorLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updatePerformGesturesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateDisplayDaltonizerLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateDisplayInversionLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateSoftKeyboardShowModeLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateRelevantEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method private readAccessibilityButtonSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_target_component"

    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-nez v1, :cond_0

    return v4

    :cond_0
    iput-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    iput-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    return v3

    :cond_1
    const-class v1, Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    if-eqz v1, :cond_2

    return v4

    :cond_2
    iput-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    iput-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    return v3

    :cond_3
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v4

    :cond_4
    iput-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceAssignedToAccessibilityButton:Landroid/content/ComponentName;

    iput-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationAssignedToAccessibilityButton:Z

    return v3
.end method

.method private readAccessibilityShortcutSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    nop

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    iput-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    return v1

    :cond_2
    :goto_0
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    if-nez v3, :cond_3

    return v2

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    return v1
.end method

.method private readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_enabled"

    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    if-eq v0, v2, :cond_1

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    return v1

    :cond_1
    return v3
.end method

.method private readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    return-void
.end method

.method private readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_0

    :cond_4
    return-void
.end method

.method private readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityShortcutSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityButtonSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-string v0, "enabled_accessibility_services"

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    return v0
.end method

.method private readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_text_contrast_enabled"

    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTextHighContrastEnabled:Z

    if-eq v0, v2, :cond_1

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTextHighContrastEnabled:Z

    return v1

    :cond_1
    return v3
.end method

.method private readInstalledAccessibilityServiceLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const v0, 0xc8084

    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBindInstantServiceAllowed:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->canRegisterService(Landroid/content/pm/ServiceInfo;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    new-instance v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v4, v7}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "AccessibilityManagerService"

    const-string v8, "Error while initializing AccessibilityServiceInfo"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x1

    return v2

    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempAccessibilityServiceInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    return v2
.end method

.method private readMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_display_magnification_navbar_enabled"

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v2, v4, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    if-ne v0, v4, :cond_3

    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eq v2, v4, :cond_2

    goto :goto_2

    :cond_2
    return v3

    :cond_3
    :goto_2
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    iput-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    return v1
.end method

.method private readSoftKeyboardShowModeChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_soft_keyboard_mode"

    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    if-eq v0, v1, :cond_0

    iput v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    const/4 v1, 0x1

    return v1

    :cond_0
    return v3
.end method

.method private readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "touch_exploration_enabled"

    iget v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eq v0, v2, :cond_1

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    return v1

    :cond_1
    return v3
.end method

.method private readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const-string/jumbo v0, "touch_exploration_granted_accessibility_services"

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromSettingLocked(Ljava/lang/String;ILjava/util/Set;)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    return v0
.end method

.method private registerBroadcastReceivers()V
    .locals 8

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$2;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/util/SparseArray<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->unlinkToDeath()V

    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->remove(I)V

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private removeAccessibilityInteractionConnectionLocked(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    return-void
.end method

.method private removeUser(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleNotifyClientsOfServicesStateChange(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$687mZTUrupnt857GOjw3XcKgrWE;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$687mZTUrupnt857GOjw3XcKgrWE;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private scheduleUpdateClientsIfNeededLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    move-result v0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    iput v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mLastSentClientState:I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v2, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$5vwr6qV-eqdCr73CeDmVnsJlZHM;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$5vwr6qV-eqdCr73CeDmVnsJlZHM;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, p0, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private scheduleUpdateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$mAPLBShddfLlktd9Q8jVo04VVXo;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$mAPLBShddfLlktd9Q8jVo04VVXo;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private scheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$w0ifSldCn8nADYgU7v1foSdmfe0;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$w0ifSldCn8nADYgU7v1foSdmfe0;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendAccessibilityButtonToInputFilter()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityButtonClicked()V

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

.method private sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v1, Lcom/android/server/accessibility/-$$Lambda$X8i00nfnUx_qUoIgZixkfu6ddSY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$X8i00nfnUx_qUoIgZixkfu6ddSY;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendAccessibilityEventToInputFilter(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendServicesStateChanged(Landroid/os/RemoteCallbackList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;)V

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;)V

    return-void
.end method

.method private sendStateToAllClients(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(II)V

    return-void
.end method

.method private sendStateToClients(II)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserState(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    return-void
.end method

.method private sendStateToClients(ILandroid/os/RemoteCallbackList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$K4sS36agT2_B03tVUTy8mldugxY;

    invoke-direct {v0, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$K4sS36agT2_B03tVUTy8mldugxY;-><init>(I)V

    invoke-static {v0}, Lcom/android/internal/util/FunctionalUtils;->ignoreRemoteException(Lcom/android/internal/util/FunctionalUtils$RemoteExceptionIgnoringConsumer;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private showAccessibilityButtonTargetSelection()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private showEnableTouchExplorationDialog(Lcom/android/server/accessibility/AccessibilityServiceConnection;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-boolean v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v3, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$4;

    invoke-direct {v5, p0, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$4;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$3;

    invoke-direct {v5, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$3;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x10401ec

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10401eb

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private switchUser(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInitialized:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->onSwitchToAnotherUserLocked()V

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v4, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$zXJtauhUptSkQJSF-M55-grAVbo;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$zXJtauhUptSkQJSF-M55-grAVbo;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, p0, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    move v3, v5

    nop

    :cond_2
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    invoke-direct {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v6, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gu-W_dQ2mWyy8l4tm19TzFxGbeM;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$Gu-W_dQ2mWyy8l4tm19TzFxGbeM;

    invoke-static {v6, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xbb8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

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

.method private unbindAllServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unlockUser(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1600(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)I

    move-result v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

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

.method private updateAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 3

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestAccessibilityButton:Z

    if-eqz v2, :cond_0

    nop

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isAccessibilityButtonAvailableLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->notifyAccessibilityButtonAvailabilityChangedLocked(Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAccessibilityEnabledSetting(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v2}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isHandlingAccessibilityEvents()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_enabled"

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v5, v6, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private updateAccessibilityFocusBehaviorLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 6

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->canRetrieveInteractiveWindowsLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    iput-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mAccessibilityFocusOnlyInActiveWindow:Z

    return-void
.end method

.method private updateAccessibilityShortcutLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 8

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    if-nez v2, :cond_2

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_shortcut_target_service"

    iget v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v5, v6, v0, v7}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "accessibility_shortcut_enabled"

    iget v6, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v0, v5, v1, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method private updateDisplayDaltonizerLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->applyDaltonizerSetting(Landroid/content/Context;I)V

    return-void
.end method

.method private updateDisplayInversionLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/accessibility/DisplayAdjustmentUtils;->applyInversionSetting(Landroid/content/Context;I)V

    return-void
.end method

.method private updateFilterKeyEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mRequestFilterKeyEvents:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    return-void
.end method

.method private updateFingerprintGestureHandling(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.fingerprint"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    :try_start_1
    const-string v7, "fingerprint"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v7

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v6, :cond_0

    new-instance v7, Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v7, v6, v8, v9}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;-><init>(Landroid/hardware/fingerprint/IFingerprintService;Landroid/content/res/Resources;Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    goto :goto_1

    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->updateClientList(Ljava/util/List;)V

    :cond_2
    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private updateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    if-eqz v4, :cond_1

    or-int/lit8 v3, v3, 0x1

    :cond_1
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-eqz v4, :cond_2

    or-int/lit8 v3, v3, 0x40

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->userHasMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_3

    or-int/lit8 v3, v3, 0x20

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isHandlingAccessibilityEvents()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x2

    :cond_4
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsFilterKeyEventsEnabled:Z

    if-eqz v4, :cond_5

    or-int/lit8 v3, v3, 0x4

    :cond_5
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    if-eqz v4, :cond_6

    or-int/lit8 v3, v3, 0x8

    :cond_6
    iget-boolean v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsPerformGesturesEnabled:Z

    if-eqz v4, :cond_7

    or-int/lit8 v3, v3, 0x10

    :cond_7
    if-eqz v3, :cond_a

    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-nez v4, :cond_9

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-nez v4, :cond_8

    new-instance v4, Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    :cond_8
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-object v1, v4

    const/4 v0, 0x1

    :cond_9
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v4, v5, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setUserAndEnabledFeatures(II)V

    goto :goto_0

    :cond_a
    iget-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    iget v6, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v5, v6, v4}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setUserAndEnabledFeatures(II)V

    const/4 v1, 0x0

    const/4 v0, 0x1

    :cond_b
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    :cond_c
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private updateLegacyCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 7

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x11

    if-gt v4, v5, :cond_0

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v5

    or-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setCapabilities(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateMagnificationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->userHasListeningMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->register()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController;->unregister()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updatePerformGesturesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getCapabilities()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsPerformGesturesEnabled:Z

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsPerformGesturesEnabled:Z

    return-void
.end method

.method private updateRelevantEventsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$RFkfb_W9wnTTs_gy8Dg3k2uQOYQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$RFkfb_W9wnTTs_gy8Dg3k2uQOYQ;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 23

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    iget-object v14, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iget v1, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v15

    const/4 v0, 0x0

    iget-object v1, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v11, v0

    :goto_0
    move v10, v1

    if-ge v11, v10, :cond_6

    iget-object v0, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/accessibilityservice/AccessibilityServiceInfo;

    nop

    invoke-virtual {v9}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    if-nez v15, :cond_0

    invoke-virtual {v9}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isDirectBootAware()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AccessibilityManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring non-encryption-aware service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    move/from16 v22, v10

    move/from16 v18, v11

    move-object/from16 v21, v14

    goto/16 :goto_3

    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v7, :cond_2

    new-instance v16, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v2, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v0, v5, 0x1

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    iget-object v6, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v4, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    iget-object v3, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v1, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v0, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v18, v1

    move-object v1, v13

    move-object/from16 v19, v3

    move-object v3, v8

    move-object/from16 v20, v4

    move-object v4, v9

    move-object/from16 v21, v14

    move-object v14, v7

    move-object/from16 v7, v20

    move-object/from16 v20, v8

    move-object/from16 v8, v19

    move-object/from16 v19, v9

    move-object v9, v12

    move/from16 v22, v10

    move-object/from16 v10, v18

    move/from16 v18, v11

    move-object/from16 v11, v17

    invoke-direct/range {v0 .. v11}, Lcom/android/server/accessibility/AccessibilityServiceConnection;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Landroid/content/Context;Landroid/content/ComponentName;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;)V

    move-object/from16 v7, v16

    move-object v14, v7

    goto :goto_2

    :cond_2
    move-object/from16 v20, v8

    move-object/from16 v19, v9

    move/from16 v22, v10

    move/from16 v18, v11

    move-object/from16 v21, v14

    move-object v14, v7

    iget-object v0, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->bindLocked()V

    goto :goto_3

    :cond_4
    move-object/from16 v20, v8

    move-object/from16 v19, v9

    move/from16 v22, v10

    move/from16 v18, v11

    move-object/from16 v21, v14

    move-object v14, v7

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->unbindLocked()V

    :cond_5
    :goto_3
    add-int/lit8 v11, v18, 0x1

    move-object/from16 v14, v21

    move/from16 v1, v22

    goto/16 :goto_0

    :cond_6
    move-object/from16 v21, v14

    iget-object v0, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->clear()V

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_8

    iget-object v2, v13, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v3, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Landroid/util/IntArray;->add(I)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    if-eqz v1, :cond_9

    iget-object v2, v12, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempIntArray:Landroid/util/IntArray;

    invoke-virtual {v1, v2}, Landroid/media/AudioManagerInternal;->setAccessibilityServiceUids(Landroid/util/IntArray;)V

    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->updateAccessibilityEnabledSetting(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method private updateSoftKeyboardShowModeLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 8

    iget v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v0, v1, :cond_0

    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_soft_keyboard_mode"

    iget v6, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    iput v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceChangingSoftKeyboardMode:Landroid/content/ComponentName;

    iget v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mSoftKeyboardShowMode:I

    invoke-direct {p0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifySoftKeyboardShowModeChangedLocked(I)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_0
    :goto_0
    return-void
.end method

.method private updateTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->isTouchExplorationEnabledLocked()Z

    move-result v0

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-direct {p0, v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->canRequestAndRequestsTouchExplorationLocked(Lcom/android/server/accessibility/AccessibilityServiceConnection;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    if-eq v0, v3, :cond_3

    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "touch_exploration_enabled"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    iget v7, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-static {v5, v6, v2, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_3
    :goto_2
    return-void
.end method

.method private updateWindowsForAccessibilityCallbackLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager;->canRetrieveInteractiveWindowsLocked()Z

    move-result v0

    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-nez v0, :cond_1

    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->canRetrieveInteractiveWindowsLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    invoke-direct {v3, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->clearWindowsLocked()V

    :cond_4
    return-void
.end method

.method private userHasListeningMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 5

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isMagnificationCallbackEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private userHasMagnificationServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    .locals 5

    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method accessibilityFocusOnlyInActiveWindow()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v14, p0

    move/from16 v15, p4

    iget-object v13, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, v15}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v3, p3

    :try_start_1
    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveValidReportedPackageLocked(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget v1, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/android/server/accessibility/AccessibilityManagerService;->sNextWindowId:I

    move v12, v1

    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, v15}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v8, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    const/4 v7, -0x1

    move-object v1, v8

    move-object v2, v14

    move v3, v12

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    move-object v1, v8

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->linkToDeath()V

    iget-object v2, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    nop

    move v2, v12

    move-object v4, v13

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v1

    move-object v8, v14

    move v9, v12

    move-object/from16 v10, p2

    move-object v11, v5

    move v2, v12

    move v12, v6

    move-object v4, v13

    move v13, v0

    :try_start_3
    invoke-direct/range {v7 .. v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->linkToDeath()V

    invoke-direct {v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    iget-object v7, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v7, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v7, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    monitor-exit v4

    return v2

    :catchall_0
    move-exception v0

    move-object v4, v13

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v3, p3

    :goto_1
    move-object v4, v13

    move-object v5, v3

    :goto_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2
.end method

.method public addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J
    .locals 10

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService$Client;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/accessibility/AccessibilityManagerService$Client;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/view/accessibility/IAccessibilityManagerClient;ILcom/android/server/accessibility/AccessibilityManagerService$UserState;Lcom/android/server/accessibility/AccessibilityManagerService$1;)V

    move-object v3, v9

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v4, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->isCallerInteractingAcrossUsers(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, p1, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    nop

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    move-result v4

    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    invoke-static {v4, v5}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v4

    monitor-exit v0

    return-wide v4

    :cond_0
    iget-object v4, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, p1, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    iget v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v1, v4, :cond_1

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->getClientState()I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget v5, v3, Lcom/android/server/accessibility/AccessibilityManagerService$Client;->mLastSentRelevantEventTypes:I

    invoke-static {v4, v5}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v4

    monitor-exit v0

    return-wide v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clearAccessibilityFocus(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->clearAccessibilityFocusNotLocked(I)V

    return-void
.end method

.method clearAccessibilityFocus(Ljava/util/function/IntSupplier;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->clearAccessibilityFocus(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "AccessibilityManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ACCESSIBILITY MANAGER (dumpsys accessibility)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User state[attributes:{id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", currentUser="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserId:I

    iget v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", touchExplorationEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", displayMagnificationEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", navBarMagnificationEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", autoclickEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v5}, Lcom/android/server/accessibility/UiAutomationManager;->isUiAutomationRunningLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ", "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/accessibility/UiAutomationManager;->dumpUiAutomationService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_2
    const-string/jumbo v5, "}"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v5, "           services:{"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v5, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_4

    if-lez v6, :cond_3

    const-string v7, ", "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v7, "                     "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    :cond_3
    iget-object v7, v4, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    invoke-virtual {v7, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v6, "}]"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    nop

    :goto_3
    if-ge v2, v3, :cond_7

    if-lez v2, :cond_6

    const/16 v4, 0x2c

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_6
    const-string v4, "Window["

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/16 v5, 0x5d

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ensureWindowsAvailableTimed()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v3, v3, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->mWindows:Ljava/util/List;

    if-nez v3, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x1388

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gtz v7, :cond_3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {v7, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :goto_1
    goto :goto_0

    :cond_4
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->getAccessibilityFocusClickPointInScreenNotLocked(Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method getActiveWindowId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->getActiveWindowId()I

    move-result v0

    return v0
.end method

.method getBindInstantServiceAllowed(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Z

    move-result v0

    return v0
.end method

.method public getCompatibleMagnificationSpecLocked(I)Landroid/view/MagnificationSpec;
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/os/IBinder;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerInternal;->getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->access$2200(Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCurrentUserIdLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    return v0
.end method

.method public getEnabledAccessibilityServiceList(II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v3}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :cond_0
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget v8, v7, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mFeedbackType:I

    and-int/2addr v8, p1

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFingerprintGestureDispatcher()Lcom/android/server/accessibility/FingerprintGestureDispatcher;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    return-object v0
.end method

.method public getInstalledAccessibilityServiceList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInstalledServices:Ljava/util/List;

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/accessibility/KeyEventDispatcher;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/KeyEventDispatcher;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mKeyEventDispatcher:Lcom/android/server/accessibility/KeyEventDispatcher;

    return-object v0
.end method

.method public getMagnificationController()Lcom/android/server/accessibility/MagnificationController;
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/accessibility/MagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/accessibility/MagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController;->setUserId(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMotionEventInjectorLocked()Lcom/android/server/accessibility/MotionEventInjector;
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    :goto_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    if-nez v2, :cond_1

    const-string v2, "AccessibilityManagerService"

    const-string v3, "MotionEventInjector installation timed out"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    return-object v2
.end method

.method public getPendingIntentActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method getWindowBounds(ILandroid/graphics/Rect;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    move-object v1, v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getWindowToken(II)Landroid/os/IBinder;
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v1, "android.permission.RETRIEVE_WINDOW_TOKEN"

    const-string v2, "getWindowToken"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v0

    return-object v3

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->findWindowTokenLocked(I)Landroid/os/IBinder;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interrupt(I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v1

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    nop

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    iget-object v7, v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mService:Landroid/os/IBinder;

    iget-object v8, v6, Lcom/android/server/accessibility/AccessibilityServiceConnection;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onInterrupt()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v4, "AccessibilityManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error sending interrupt request to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isAccessibilityButtonShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mIsAccessibilityButtonShown:Z

    return v0
.end method

.method public notifyAccessibilityButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityButtonClickedLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR_SERVICE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyAccessibilityButtonVisibilityChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityButtonVisibilityChangedLocked(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller does not hold permission android.permission.STATUS_BAR_SERVICE"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyKeyEvent(Landroid/view/KeyEvent;I)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    nop

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mBoundServices:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getKeyEventDispatcher()Lcom/android/server/accessibility/KeyEventDispatcher;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/accessibility/KeyEventDispatcher;->notifyKeyEventLocked(Landroid/view/KeyEvent;ILjava/util/List;)Z

    move-result v2

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyMagnificationChanged(Landroid/graphics/Region;FFF)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClearAccessibilityCacheLocked()V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChangedLocked(Landroid/graphics/Region;FFF)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onClientChange(Z)V
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->scheduleNotifyClientsOfServicesStateChange(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    :cond_0
    return-void
.end method

.method onGesture(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyGestureLocked(IZ)Z

    move-result v2

    move v1, v2

    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/accessibility/AccessibilityShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/AccessibilityShellCommand;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/accessibility/AccessibilityShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method onTouchInteractionEnd()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionEnd()V

    return-void
.end method

.method onTouchInteractionStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->onTouchInteractionStart()V

    return-void
.end method

.method public performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)Z
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v14, p4

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getConnectionLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    move-result-object v0

    const/4 v15, 0x0

    if-nez v0, :cond_0

    monitor-exit v4

    return v15

    :cond_0
    const/16 v5, 0x40

    const/16 v16, 0x1

    if-eq v14, v5, :cond_2

    const/16 v5, 0x80

    if-ne v14, v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v15

    goto :goto_1

    :cond_2
    :goto_0
    move/from16 v5, v16

    :goto_1
    iget-object v6, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v6, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v6

    if-nez v5, :cond_3

    iget-object v7, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {v7, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$2100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;I)Landroid/view/WindowInfo;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v8, v7, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object v3, v8

    :cond_3
    move-object v12, v3

    if-eqz v6, :cond_4

    :try_start_1
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    if-eqz v3, :cond_4

    if-nez v5, :cond_4

    iget-object v3, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v12

    goto/16 :goto_6

    :cond_4
    :goto_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v13, v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v10, v3

    :try_start_3
    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v4, v5, v15}, Landroid/os/PowerManager;->userActivity(JII)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v12, :cond_5

    :try_start_4
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v12}, Landroid/app/ActivityManagerInternal;->setFocusedActivity(Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-wide v1, v10

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    goto :goto_4

    :catch_0
    move-exception v0

    move-wide v1, v10

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    goto :goto_5

    :cond_5
    :goto_3
    :try_start_5
    invoke-static {v13}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->access$2200(Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-wide/from16 v4, p2

    move v6, v14

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-wide v1, v10

    move/from16 v10, p8

    move/from16 v11, v17

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    move-wide/from16 v12, p9

    :try_start_6
    invoke-interface/range {v3 .. v13}, Landroid/view/accessibility/IAccessibilityInteractionConnection;->performAccessibilityAction(JILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIJ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v16

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-wide v1, v10

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_2
    move-exception v0

    move-wide v1, v10

    move-object/from16 v19, v12

    move-object/from16 v18, v13

    :goto_5
    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v15

    :catchall_4
    move-exception v0

    move-object/from16 v19, v12

    move-object/from16 v3, v19

    goto :goto_6

    :catchall_5
    move-exception v0

    :goto_6
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public performAccessibilityShortcut()V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "performAccessibilityShortcut requires the WRITE_SECURE_SETTINGS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mServiceToEnableWithShortcut:Landroid/content/ComponentName;

    if-nez v3, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    new-instance v5, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {v5, v6, v7, v8}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingOnValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingOffValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, v2, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mComponentNameToServiceMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v3, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->enableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V

    goto :goto_2

    :cond_5
    iget v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    invoke-direct {p0, v3, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->disableAccessibilityServiceLocked(Landroid/content/ComponentName;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public performActionOnAccessibilityFocusedItem(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getInteractionBridge()Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->performActionOnAccessibilityFocusedItemNotLocked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v0

    return v0
.end method

.method public persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;I)V
    .locals 16

    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v1, "android.permission.RETRIEVE_WINDOW_CONTENT"

    const-string/jumbo v2, "registerUiTestAutomationService"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v15, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    iget-object v1, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    iget-object v4, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    add-int/lit8 v0, v6, 0x1

    sput v0, Lcom/android/server/accessibility/AccessibilityManagerService;->sIdCounter:I

    iget-object v7, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    iget-object v8, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    iget-object v9, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    iget-object v11, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v12, v14, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalActionPerformer:Lcom/android/server/accessibility/GlobalActionPerformer;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object v10, v14

    move/from16 v13, p4

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/accessibility/UiAutomationManager;->registerUiTestAutomationServiceLocked(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/GlobalActionPerformer;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    invoke-direct {v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    monitor-exit v15

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalWindowTokens:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalInteractionConnections:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v2

    if-ltz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    iget-object v6, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mWindowTokens:Landroid/util/SparseArray;

    iget-object v7, v5, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mInteractionConnections:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v6, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->removeAccessibilityInteractionConnectionInternalLocked(Landroid/os/IBinder;Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v6

    if-ltz v6, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public replaceCallbackIfNeeded(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IIIJ)Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;
    .locals 9

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->findA11yWindowInfoById(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/accessibility/ActionReplacingCallback;

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->access$2200(Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v4

    move-object v2, v1

    move-object v3, p1

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/ActionReplacingCallback;-><init>(Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback;Landroid/view/accessibility/IAccessibilityInteractionConnection;IIJ)V

    return-object v1

    :cond_1
    :goto_0
    return-object p1
.end method

.method restoreEnabledAccessibilityServicesLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readComponentNamesFromStringLocked(Ljava/lang/String;Ljava/util/Set;Z)V

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTempComponentNameSet:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v2, "enabled_accessibility_services"

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    const/4 v3, -0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v2, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveCallingUserIdEnforcingPermissionsLocked(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->resolveValidReportedPackageLocked(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1300(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getAction()I

    move-result v9

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateActiveAndAccessibilityFocusedWindowLocked(IJII)V

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-virtual {v3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMainHandler:Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;

    sget-object v4, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$BX2CMQr5jU9WhPYx7Aaae4zgxf4;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$BX2CMQr5jU9WhPYx7Aaae4zgxf4;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    invoke-static {v4, p0, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowsForAccessibilityCallback:Lcom/android/server/accessibility/AccessibilityManagerService$WindowsForAccessibilityCallback;

    if-eqz v1, :cond_3

    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->computeWindowsForAccessibility()V

    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyAccessibilityServicesDelayedLocked(Landroid/view/accessibility/AccessibilityEvent;Z)V

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/UiAutomationManager;->sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_4
    :goto_0
    sget v1, Lcom/android/server/accessibility/AccessibilityManagerService;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-eq v1, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    :cond_5
    return-void

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public sendFingerprintGesture(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->onFingerprintGesture(I)Z

    move-result v0

    return v0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only SYSTEM can call sendFingerprintGesture"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setBindInstantServiceAllowed(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    invoke-static {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;IZ)V

    return-void
.end method

.method setMotionEventInjector(Lcom/android/server/accessibility/MotionEventInjector;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mMotionEventInjector:Lcom/android/server/accessibility/MotionEventInjector;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v1, "android.permission.MODIFY_ACCESSIBILITY_DATA"

    const-string/jumbo v2, "setPictureInPictureActionReplacingConnection"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->unlinkToDeath()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    const/4 v4, -0x3

    const-string v6, "foo.bar.baz"

    const/16 v7, 0x3e8

    const/4 v8, -0x1

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mPictureInPictureActionReplacingConnection:Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$RemoteAccessibilityConnection;->linkToDeath()V

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

.method public temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;

    const-string v1, "android.permission.TEMPORARY_ENABLE_ACCESSIBILITY"

    const-string/jumbo v2, "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;->access$1400(Lcom/android/server/accessibility/AccessibilityManagerService$SecurityPolicy;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v1

    iput-boolean p2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsTouchExplorationEnabled:Z

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsDisplayMagnificationEnabled:Z

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsNavBarMagnificationEnabled:Z

    iput-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsAutoclickEnabled:Z

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/UiAutomationManager;->unregisterUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
