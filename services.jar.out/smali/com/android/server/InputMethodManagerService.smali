.class public Lcom/android/server/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputMethodManagerService$ShellCommandImpl;,
        Lcom/android/server/InputMethodManagerService$LocalServiceImpl;,
        Lcom/android/server/InputMethodManagerService$InputMethodFileManager;,
        Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;,
        Lcom/android/server/InputMethodManagerService$Lifecycle;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardListener;,
        Lcom/android/server/InputMethodManagerService$MethodCallback;,
        Lcom/android/server/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;,
        Lcom/android/server/InputMethodManagerService$SettingsObserver;,
        Lcom/android/server/InputMethodManagerService$StartInputHistory;,
        Lcom/android/server/InputMethodManagerService$StartInputInfo;,
        Lcom/android/server/InputMethodManagerService$ClientState;,
        Lcom/android/server/InputMethodManagerService$SessionState;,
        Lcom/android/server/InputMethodManagerService$DebugFlags;,
        Lcom/android/server/InputMethodManagerService$DebugFlag;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardBehavior;,
        Lcom/android/server/InputMethodManagerService$ShellCommandResult;
    }
.end annotation


# static fields
.field private static final ACTION_SHOW_INPUT_METHOD_PICKER:Ljava/lang/String; = "com.android.server.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

.field static final DEBUG:Z = false

.field private static final IME_CONNECTION_BIND_FLAGS:I = 0x40800005

.field private static final IME_VISIBLE_BIND_FLAGS:I = 0x2c000001

.field static final MSG_ATTACH_TOKEN:I = 0x410

.field static final MSG_BIND_CLIENT:I = 0xbc2

.field static final MSG_BIND_INPUT:I = 0x3f2

.field static final MSG_CREATE_SESSION:I = 0x41a

.field static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field static final MSG_HIDE_CURRENT_INPUT_METHOD:I = 0x40b

.field static final MSG_HIDE_SOFT_INPUT:I = 0x406

.field static final MSG_REPORT_FULLSCREEN_MODE:I = 0xbe5

.field static final MSG_SET_ACTIVE:I = 0xbcc

.field static final MSG_SET_INTERACTIVE:I = 0xbd6

.field static final MSG_SET_USER_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = 0xbe0

.field static final MSG_SHOW_IM_CONFIG:I = 0x3

.field static final MSG_SHOW_IM_SUBTYPE_ENABLER:I = 0x2

.field static final MSG_SHOW_IM_SUBTYPE_PICKER:I = 0x1

.field static final MSG_SHOW_SOFT_INPUT:I = 0x3fc

.field static final MSG_START_INPUT:I = 0x7d0

.field static final MSG_START_VR_INPUT:I = 0x7da

.field static final MSG_SWITCH_IME:I = 0xbea

.field static final MSG_SYSTEM_UNLOCK_USER:I = 0x1388

.field static final MSG_UNBIND_CLIENT:I = 0xbb8

.field static final MSG_UNBIND_INPUT:I = 0x3e8

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field static final SECURE_SUGGESTION_SPANS_MAX_SIZE:I = 0x14

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field static final TIME_TO_RECONNECT:J = 0xbb8L


# instance fields
.field private LONGSHOT_BLOCK_SHOWING_TIMEOUT:I

.field private mAccessibilityRequestingNoSoftKeyboard:Z

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBackDisposition:I

.field private mBindInstantServiceAllowed:Z

.field mBoundToMethod:Z

.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/InputMethodManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mCurAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field private mCurClientInKeyguard:Z

.field mCurFocusedWindow:Landroid/os/IBinder;

.field mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field mCurFocusedWindowSoftInputMode:I

.field mCurId:Ljava/lang/String;

.field mCurInputContext:Lcom/android/internal/view/IInputContext;

.field mCurInputContextMissingMethods:I

.field mCurIntent:Landroid/content/Intent;

.field mCurMethod:Lcom/android/internal/view/IInputMethod;

.field mCurMethodId:Ljava/lang/String;

.field mCurSeq:I

.field mCurToken:Landroid/os/IBinder;

.field mCurUserActionNotificationSequenceNumber:I

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

.field private mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

.field final mHandler:Landroid/os/Handler;

.field private final mHardKeyboardBehavior:I

.field private final mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

.field final mHasFeature:Z

.field mHaveConnection:Z

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field private mImeSwitchPendingIntent:Landroid/app/PendingIntent;

.field private mImeSwitcherNotification:Landroid/app/Notification$Builder;

.field mImeWindowVis:I

.field private mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field mInFullscreenMode:Z

.field mInputShown:Z

.field mIsInteractive:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastBindTime:J

.field private mLastSystemLocales:Landroid/os/LocaleList;

.field private mLongshotBlockShowing:Z

.field final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMethodMapUpdateCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation
.end field

.field private final mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationShown:Z

.field final mRes:Landroid/content/res/Resources;

.field private final mSecureSuggestionSpans:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/text/style/SuggestionSpan;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field final mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

.field private final mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field mShowExplicitlyRequested:Z

.field mShowForced:Z

.field private mShowImeWithHardKeyboard:Z

.field private mShowOngoingImeSwitcherForPhones:Z

.field mShowRequested:Z

.field private final mSlotIme:Ljava/lang/String;

.field private final mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation
.end field

.field private final mStartInputMap:Ljava/util/WeakHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/InputMethodManagerService$StartInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

.field private mSubtypeIds:[I

.field private mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

.field private final mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

.field private mSwitchingDialog:Landroid/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field private mSwitchingDialogToken:Landroid/os/IBinder;

.field mSystemReady:Z

.field private final mUserManager:Landroid/os/UserManager;

.field mVisibleBound:Z

.field final mVisibleConnection:Landroid/content/ServiceConnection;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    .line 1347
    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 321
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    .line 322
    new-instance v0, Landroid/util/LruCache;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    .line 329
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 333
    new-instance v3, Lcom/android/server/InputMethodManagerService$1;

    invoke-direct {v3, v1}, Lcom/android/server/InputMethodManagerService$1;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v3, v1, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    .line 340
    iput-boolean v0, v1, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 382
    new-instance v3, Lcom/android/server/InputMethodManagerService$2;

    invoke-direct {v3, v1}, Lcom/android/server/InputMethodManagerService$2;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v3, v1, Lcom/android/server/InputMethodManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 427
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    .line 514
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    .line 588
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    .line 590
    iput v0, v1, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    .line 592
    iput v0, v1, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    .line 614
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    .line 622
    new-instance v4, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v4, v1}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    .line 633
    iput-boolean v0, v1, Lcom/android/server/InputMethodManagerService;->mBindInstantServiceAllowed:Z

    .line 689
    new-instance v4, Ljava/util/WeakHashMap;

    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mStartInputMap:Ljava/util/WeakHashMap;

    .line 831
    new-instance v4, Lcom/android/server/InputMethodManagerService$StartInputHistory;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/server/InputMethodManagerService$StartInputHistory;-><init>(Lcom/android/server/InputMethodManagerService$1;)V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;

    .line 2630
    const/16 v4, 0x3e8

    iput v4, v1, Lcom/android/server/InputMethodManagerService;->LONGSHOT_BLOCK_SHOWING_TIMEOUT:I

    .line 2631
    iput-boolean v0, v1, Lcom/android/server/InputMethodManagerService;->mLongshotBlockShowing:Z

    .line 1348
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1349
    iput-object v2, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1350
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1351
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1353
    new-instance v4, Lcom/android/server/InputMethodManagerService$SettingsObserver;

    iget-object v6, v1, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v1, v6}, Lcom/android/server/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    .line 1354
    const-string/jumbo v4, "window"

    .line 1355
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1354
    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1356
    const-class v4, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1357
    new-instance v4, Lcom/android/internal/os/HandlerCaller;

    new-instance v6, Lcom/android/server/InputMethodManagerService$3;

    invoke-direct {v6, v1}, Lcom/android/server/InputMethodManagerService$3;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-direct {v4, v2, v5, v6, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1363
    iget-object v4, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/AppOpsManager;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1364
    iget-object v4, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/UserManager;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1365
    new-instance v4, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    invoke-direct {v4, v1, v5}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$1;)V

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    .line 1366
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.software.input_methods"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/InputMethodManagerService;->mHasFeature:Z

    .line 1368
    iget-object v4, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040646

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 1369
    iget-object v4, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v1, Lcom/android/server/InputMethodManagerService;->mHardKeyboardBehavior:I

    .line 1372
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1373
    .local v4, "extras":Landroid/os/Bundle;
    const-string v5, "android.allowDuringSetup"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1374
    iget-object v5, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1060157

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 1376
    .local v5, "accentColor":I
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->VIRTUAL_KEYBOARD:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1378
    const v7, 0x10804a2

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1379
    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1380
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1381
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string/jumbo v7, "sys"

    .line 1382
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1383
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 1385
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.server.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1386
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1387
    .local v6, "intent":Landroid/content/Intent;
    iget-object v7, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7, v0, v6, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 1389
    iput-boolean v0, v1, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1391
    iput-boolean v0, v1, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    .line 1392
    move v7, v0

    .line 1394
    .local v7, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v0

    .line 1397
    goto :goto_0

    .line 1395
    :catch_0
    move-exception v0

    .line 1396
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "InputMethodManagerService"

    const-string v9, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1400
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v11, v1, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1401
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v14, v1, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-boolean v8, v1, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    xor-int/lit8 v16, v8, 0x1

    move-object v10, v0

    move v15, v7

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1403
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1404
    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v3, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v0, v3, v7}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 1405
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    .line 1408
    const-string/jumbo v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/service/vr/IVrManager;

    .line 1409
    .local v3, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v3, :cond_0

    .line 1411
    :try_start_1
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v3, v0}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1414
    goto :goto_1

    .line 1412
    :catch_1
    move-exception v0

    .line 1413
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v8, "InputMethodManagerService"

    const-string v9, "Failed to register VR mode state listener."

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 186
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->restoreNonVrImeFromSettingsNoCheck()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 186
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 186
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/InputMethodManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 186
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/InputMethodManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Z

    .line 186
    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mLongshotBlockShowing:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 186
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/InputMethodManagerService;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 186
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;
    .param p2, "x2"    # Z

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/InputMethodManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 186
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/InputMethodManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Z

    .line 186
    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/ShellCommand;

    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->handleSetBindInstantServiceAllowed(Landroid/os/ShellCommand;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/InputMethodManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 186
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/InputMethodManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # I

    .line 186
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->getComponentMatchingFlags(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 186
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;

    .line 186
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 186
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    return-void
.end method

.method private bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .line 1631
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 1638
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_1

    .line 1639
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->setCurrentIME(Landroid/content/Intent;)V

    .line 1643
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBindInstantServiceAllowed:Z

    if-eqz v0, :cond_2

    .line 1644
    const/high16 v0, 0x400000

    or-int/2addr p3, v0

    .line 1647
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1648
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 1647
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 1632
    :cond_3
    :goto_0
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    const/4 v0, 0x0

    return v0
.end method

.method private calledFromValidUser()Z
    .locals 5

    .line 1572
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1573
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1581
    .local v1, "userId":I
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1590
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1597
    return v2

    .line 1600
    :cond_1
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--- IPC called from background users. Ignore. callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    .line 1601
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1600
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    const/4 v2, 0x0

    return v2

    .line 1582
    :cond_2
    :goto_0
    return v2
.end method

.method private calledWithValidToken(Landroid/os/IBinder;)Z
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1612
    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1617
    return v0

    .line 1619
    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 1625
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 1621
    :cond_2
    :goto_0
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " due to an invalid token. uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " token:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1621
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    return v0
.end method

.method private canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 3025
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3026
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_0

    .line 3027
    return v2

    .line 3028
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 3029
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v1, v3, :cond_1

    .line 3030
    return v2

    .line 3031
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 3034
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3031
    invoke-static {v1, v0, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3035
    return v2

    .line 3036
    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 3039
    return v2

    .line 3042
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private chooseNewDefaultIMELocked()Z
    .locals 2

    .line 3667
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3668
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 3667
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 3669
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_0

    .line 3673
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 3674
    const/4 v1, 0x1

    return v1

    .line 3677
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;
    .locals 17
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 4179
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    .line 4180
    .local v2, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v3, 0x0

    .line 4181
    .local v3, "mostApplicableIMI":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v4, 0x0

    .line 4182
    .local v4, "mostApplicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v5, 0x0

    .line 4185
    .local v5, "foundInSystemIME":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 4186
    .local v7, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 4187
    .local v9, "imiId":Ljava/lang/String;
    if-eqz v5, :cond_0

    iget-object v10, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 4188
    goto :goto_0

    .line 4190
    :cond_0
    const/4 v10, 0x0

    .line 4191
    .local v10, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v11, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 4192
    const/4 v13, 0x1

    invoke-virtual {v11, v12, v7, v13}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 4194
    .local v11, "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v14, 0x0

    if-eqz v12, :cond_1

    .line 4195
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v15, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4196
    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v15

    .line 4195
    invoke-static {v12, v11, v1, v15, v14}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 4200
    :cond_1
    if-nez v10, :cond_2

    .line 4201
    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v12, v11, v1, v8, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 4204
    :cond_2
    nop

    .line 4205
    invoke-static {v7, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 4207
    .local v12, "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 4208
    invoke-static {v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v15

    goto :goto_1

    .line 4209
    :cond_3
    move-object v15, v12

    .line 4211
    .local v15, "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :goto_1
    if-nez v10, :cond_4

    iget-object v8, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v8, :cond_4

    .line 4212
    iget-object v8, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v13, v0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4213
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    .line 4212
    invoke-static {v8, v15, v1, v13, v14}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 4217
    :cond_4
    if-nez v10, :cond_5

    .line 4218
    iget-object v8, v0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v8, v15, v1, v14, v13}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    .line 4221
    :cond_5
    if-eqz v10, :cond_7

    .line 4222
    iget-object v8, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4224
    move-object v3, v7

    .line 4225
    move-object v4, v10

    .line 4226
    goto :goto_2

    .line 4227
    :cond_6
    if-nez v5, :cond_7

    .line 4229
    move-object v3, v7

    .line 4230
    move-object v4, v10

    .line 4231
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v13, 0x1

    and-int/2addr v8, v13

    if-eqz v8, :cond_7

    .line 4233
    const/4 v5, 0x1

    .line 4237
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v9    # "imiId":Ljava/lang/String;
    .end local v10    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v11    # "enabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v12    # "overridingImplicitlyEnabledSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v15    # "subtypesForSearch":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_7
    goto/16 :goto_0

    .line 4249
    :cond_8
    :goto_2
    if-eqz v3, :cond_9

    .line 4250
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 4252
    :cond_9
    const/4 v6, 0x0

    return-object v6
.end method

.method private finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .locals 5
    .param p1, "sessionState"    # Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2141
    if-eqz p1, :cond_1

    .line 2142
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2144
    :try_start_0
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2148
    goto :goto_0

    .line 2145
    :catch_0
    move-exception v0

    .line 2146
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "InputMethodManagerService"

    const-string v3, "Session failed to close due to remote exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2147
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2149
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 2151
    :cond_0
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    .line 2152
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2153
    iput-object v1, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    .line 2156
    :cond_1
    return-void
.end method

.method private getAppShowFlags()I
    .locals 2

    .line 1797
    const/4 v0, 0x0

    .line 1798
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_0

    .line 1799
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1800
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v1, :cond_1

    .line 1801
    or-int/lit8 v0, v0, 0x1

    .line 1803
    :cond_1
    :goto_0
    return v0
.end method

.method private getComponentMatchingFlags(I)I
    .locals 2
    .param p1, "baseFlags"    # I

    .line 3682
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3683
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mBindInstantServiceAllowed:Z

    if-eqz v1, :cond_0

    .line 3684
    const/high16 v1, 0x800000

    or-int/2addr p1, v1

    .line 3686
    :cond_0
    monitor-exit v0

    return p1

    .line 3687
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 8

    .line 4271
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4272
    return-object v1

    .line 4274
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    move-result v0

    .line 4275
    .local v0, "subtypeIsSelected":Z
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 4276
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 4279
    :cond_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4280
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 4281
    :cond_2
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v3

    .line 4282
    .local v3, "subtypeId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 4286
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 4287
    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 4290
    .local v4, "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 4291
    const/4 v1, 0x0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_0

    .line 4292
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 4293
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v7, "keyboard"

    invoke-static {v5, v4, v7, v1, v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4296
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v5, :cond_4

    .line 4297
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-static {v5, v4, v1, v1, v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4302
    .end local v4    # "explicitlyOrImplicitlyEnabledSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_4
    :goto_0
    goto :goto_1

    .line 4303
    :cond_5
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4306
    .end local v3    # "subtypeId":I
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v1

    .line 4277
    :cond_7
    :goto_2
    return-object v1
.end method

.method private getImeShowFlags()I
    .locals 2

    .line 1786
    const/4 v0, 0x0

    .line 1787
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_0

    .line 1788
    or-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 1790
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-eqz v1, :cond_1

    .line 1791
    or-int/lit8 v0, v0, 0x1

    .line 1793
    :cond_1
    :goto_0
    return v0
.end method

.method private getInputMethodList(Z)Ljava/util/List;
    .locals 5
    .param p1, "isVrOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1662
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1663
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1665
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1666
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1667
    .local v1, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 1669
    .local v3, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v4

    if-ne v4, p1, :cond_1

    .line 1670
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1672
    .end local v3    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    goto :goto_0

    .line 1673
    :cond_2
    monitor-exit v0

    return-object v1

    .line 1674
    .end local v1    # "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleSetBindInstantServiceAllowed(Landroid/os/ShellCommand;)I
    .locals 8
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 4934
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 4935
    .local v0, "allowedString":Ljava/lang/String;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 4936
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no true/false specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4937
    return v1

    .line 4939
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 4940
    .local v2, "allowed":Z
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4941
    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.MANAGE_BIND_INSTANT_SERVICE"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 4944
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Caller must have MANAGE_BIND_INSTANT_SERVICE permission"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4946
    monitor-exit v3

    return v1

    .line 4949
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mBindInstantServiceAllowed:Z

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    .line 4951
    monitor-exit v3

    return v4

    .line 4953
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mBindInstantServiceAllowed:Z

    .line 4956
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4959
    .local v5, "ident":J
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 4961
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 4962
    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 4963
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4965
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4966
    nop

    .line 4967
    .end local v5    # "ident":J
    monitor-exit v3

    .line 4968
    return v4

    .line 4965
    .restart local v5    # "ident":J
    :catchall_0
    move-exception v1

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 4967
    .end local v5    # "ident":J
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private handleSetInteractive(Z)V
    .locals 7
    .param p1, "interactive"    # Z

    .line 3627
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3628
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    .line 3629
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 3632
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_1

    .line 3633
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbcc

    .line 3634
    iget-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 3633
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3637
    :cond_1
    monitor-exit v0

    .line 3638
    return-void

    .line 3637
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleShellCommandEnableDisableInputMethod(Landroid/os/ShellCommand;Z)I
    .locals 5
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;
    .param p2, "enabled"    # Z

    .line 5022
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5023
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Must be called from the foreground user or with INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5025
    const/4 v0, -0x1

    return v0

    .line 5027
    :cond_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 5030
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5031
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 5041
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5043
    .local v2, "ident":J
    :try_start_1
    invoke-virtual {p0, v0, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5045
    .local v4, "previouslyEnabled":Z
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5046
    nop

    .line 5045
    .end local v2    # "ident":J
    nop

    .line 5047
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5048
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 5049
    .local v1, "pr":Ljava/io/PrintWriter;
    const-string v2, "Input method "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5050
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5051
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5052
    if-ne p2, v4, :cond_1

    const-string v2, "already "

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "now "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5053
    if-eqz p2, :cond_2

    const-string v2, "enabled"

    goto :goto_1

    :cond_2
    const-string v2, "disabled"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5054
    const/4 v2, 0x0

    return v2

    .line 5045
    .end local v1    # "pr":Ljava/io/PrintWriter;
    .end local v4    # "previouslyEnabled":Z
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 5034
    .end local v2    # "ident":J
    :cond_3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Caller must have WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5036
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5047
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private handleShellCommandListInputMethods(Landroid/os/ShellCommand;)I
    .locals 10
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 4979
    const/4 v0, 0x0

    .line 4980
    .local v0, "all":Z
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 4982
    .local v0, "brief":Z
    .local v2, "all":Z
    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    .line 4983
    .local v3, "nextOption":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 4984
    nop

    .line 4995
    .end local v3    # "nextOption":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 4996
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 4997
    .local v3, "methods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :goto_1
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 4998
    .local v4, "pr":Ljava/io/PrintWriter;
    new-instance v5, Lcom/android/server/-$$Lambda$InputMethodManagerService$87vt08aKi27xQgvHZ-wOyJeb5jo;

    .local v5, "printer":Landroid/util/Printer;
    invoke-direct {v5, v4}, Lcom/android/server/-$$Lambda$InputMethodManagerService$87vt08aKi27xQgvHZ-wOyJeb5jo;-><init>(Ljava/io/PrintWriter;)V

    .line 4999
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 5000
    .local v6, "N":I
    move v7, v1

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_2

    .line 5001
    if-eqz v0, :cond_1

    .line 5002
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 5004
    :cond_1
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5005
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    const-string v9, "  "

    invoke-virtual {v8, v5, v9}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 5000
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 5008
    .end local v7    # "i":I
    :cond_2
    return v1

    .line 4986
    .end local v4    # "pr":Ljava/io/PrintWriter;
    .end local v5    # "printer":Landroid/util/Printer;
    .end local v6    # "N":I
    .local v3, "nextOption":Ljava/lang/String;
    :cond_3
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x5d4

    if-eq v5, v6, :cond_5

    const/16 v6, 0x5e6

    if-eq v5, v6, :cond_4

    goto :goto_4

    :cond_4
    const-string v5, "-s"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const-string v5, "-a"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v4, v1

    :cond_6
    :goto_4
    packed-switch v4, :pswitch_data_0

    .end local v3    # "nextOption":Ljava/lang/String;
    goto :goto_5

    .line 4991
    .restart local v3    # "nextOption":Ljava/lang/String;
    :pswitch_0
    const/4 v0, 0x1

    .end local v3    # "nextOption":Ljava/lang/String;
    goto :goto_5

    .line 4988
    .restart local v3    # "nextOption":Ljava/lang/String;
    :pswitch_1
    const/4 v2, 0x1

    .line 4989
    nop

    .line 4994
    .end local v3    # "nextOption":Ljava/lang/String;
    :goto_5
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleShellCommandResetInputMethod(Landroid/os/ShellCommand;)I
    .locals 10
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 5083
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5084
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Must be called from the foreground user or with INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5086
    const/4 v0, -0x1

    return v0

    .line 5088
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5089
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 5100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5102
    .local v1, "ident":J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5103
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p0, v5, v4}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 5104
    invoke-virtual {p0, v5}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    .line 5106
    invoke-direct {p0, v4}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 5108
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v6, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 5111
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5112
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v4

    .line 5113
    .local v4, "enabledImes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5114
    .local v6, "N":I
    move v7, v5

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 5115
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v5}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 5114
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5120
    .end local v4    # "enabledImes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v6    # "N":I
    .end local v7    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 5121
    invoke-static {v4, v6}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 5122
    .local v4, "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5123
    .restart local v6    # "N":I
    move v7, v5

    .restart local v7    # "i":I
    :goto_1
    const/4 v8, 0x1

    if-ge v7, v6, :cond_2

    .line 5124
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v8}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 5123
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 5127
    .end local v4    # "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v6    # "N":I
    .end local v7    # "i":I
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 5128
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5129
    invoke-virtual {v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 5130
    invoke-virtual {v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 5131
    invoke-virtual {v8}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v8

    .line 5128
    invoke-static {v4, v6, v7, v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 5132
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    .line 5133
    .local v4, "nextIme":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v6

    .line 5134
    .local v6, "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5136
    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5137
    nop

    .line 5136
    nop

    .line 5138
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 5139
    .local v3, "pr":Ljava/io/PrintWriter;
    const-string v7, "Reset current and enabled IMEs"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5140
    const-string v7, "Newly selected IME:"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5141
    const-string v7, "  "

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5142
    const-string v7, "Newly enabled IMEs:"

    invoke-virtual {v3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5144
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 5145
    .local v7, "N":I
    move v8, v5

    .local v8, "i":I
    :goto_2
    if-ge v8, v7, :cond_3

    .line 5146
    const-string v9, "  "

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5147
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5145
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 5150
    .end local v7    # "N":I
    .end local v8    # "i":I
    :cond_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return v5

    .line 5134
    .end local v3    # "pr":Ljava/io/PrintWriter;
    .end local v4    # "nextIme":Ljava/lang/String;
    .end local v6    # "nextEnabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5136
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 5092
    .end local v1    # "ident":J
    :cond_4
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Caller must have WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5094
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5151
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method private handleShellCommandSetInputMethod(Landroid/os/ShellCommand;)I
    .locals 3
    .param p1, "shellCommand"    # Landroid/os/ShellCommand;

    .line 5065
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 5066
    .local v0, "id":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 5067
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 5068
    .local v1, "pr":Ljava/io/PrintWriter;
    const-string v2, "Input method "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5069
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5070
    const-string v2, "  selected"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5071
    const/4 v2, 0x0

    return v2
.end method

.method private handleSwitchInputMethod(Z)V
    .locals 6
    .param p1, "forwardDirection"    # Z

    .line 3641
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3642
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 3643
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3642
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v3, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v1

    .line 3644
    .local v1, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v1, :cond_0

    .line 3645
    monitor-exit v0

    return-void

    .line 3647
    :cond_0
    iget-object v2, v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 3648
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 3649
    .local v2, "newInputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v2, :cond_1

    .line 3650
    monitor-exit v0

    return-void

    .line 3652
    :cond_1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3, v2, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3654
    .local v3, "toastText":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3655
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    if-nez v5, :cond_2

    .line 3656
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    goto :goto_0

    .line 3659
    :cond_2
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    invoke-virtual {v4, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3661
    :goto_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 3663
    .end local v1    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v2    # "newInputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "toastText":Ljava/lang/CharSequence;
    :cond_3
    monitor-exit v0

    .line 3664
    return-void

    .line 3663
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static imeWindowStatusToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "imeWindowVis"    # I

    .line 4603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4604
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 4605
    .local v1, "first":Z
    and-int/lit8 v2, p0, 0x1

    if-eqz v2, :cond_0

    .line 4606
    const-string v2, "Active"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4607
    const/4 v1, 0x0

    .line 4609
    :cond_0
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_2

    .line 4610
    if-nez v1, :cond_1

    .line 4611
    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4613
    :cond_1
    const-string v2, "Visible"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4615
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .line 2299
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isScreenLocked()Z
    .locals 1

    .line 3857
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3858
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3857
    :goto_0
    return v0
.end method

.method static synthetic lambda$handleShellCommandListInputMethods$0(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p0, "pr"    # Ljava/io/PrintWriter;
    .param p1, "x"    # Ljava/lang/String;

    .line 4998
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1420
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1421
    return-void

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1424
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 1423
    invoke-static {p1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1425
    .local v0, "suitableImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1426
    const-string v1, "InputMethodManagerService"

    const-string v2, "No default found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    return-void

    .line 1429
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 1433
    .local v2, "defIm":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 1434
    return-void
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .locals 7
    .param p1, "newDefaultIme"    # Ljava/lang/String;

    .line 4159
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4160
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v1, -0x1

    .line 4162
    .local v1, "lastSubtypeId":I
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4163
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4164
    .local v2, "subtypeHashCode":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 4166
    nop

    .line 4167
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4166
    invoke-static {v0, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 4170
    goto :goto_0

    .line 4168
    :catch_0
    move-exception v3

    .line 4169
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HashCode for subtype looks broken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4173
    .end local v2    # "subtypeHashCode":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 4174
    return-void
.end method

.method private restoreNonVrImeFromSettingsNoCheck()V
    .locals 3

    .line 393
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, "lastInputId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 396
    invoke-virtual {v2, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v2

    .line 395
    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 397
    .end local v1    # "lastInputId":Ljava/lang/String;
    monitor-exit v0

    .line 398
    return-void

    .line 397
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    .line 3328
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3329
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3330
    monitor-exit v0

    .line 3331
    return-void

    .line 3330
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtypeId"    # I

    .line 3334
    if-nez p1, :cond_1

    .line 3335
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3338
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3342
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v0, p1, :cond_2

    .line 3343
    const-string v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring setInputMethod of uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3345
    return-void

    .line 3348
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3350
    .local v0, "ident":J
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3352
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3353
    nop

    .line 3354
    return-void

    .line 3352
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .locals 6
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtypeId"    # I
    .param p3, "setSubtypeOnly"    # Z

    .line 4112
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4113
    .local v1, "isVrInput":Z
    :goto_0
    if-nez v1, :cond_1

    .line 4115
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 4118
    :cond_1
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    add-int/2addr v2, v0

    .line 4119
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    .line 4125
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v0, :cond_2

    .line 4126
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbe0

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 4131
    :cond_2
    if-eqz v1, :cond_3

    .line 4133
    return-void

    .line 4137
    :cond_3
    const/4 v0, -0x1

    if-eqz p1, :cond_6

    if-gez p2, :cond_4

    goto :goto_1

    .line 4141
    :cond_4
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-ge p2, v2, :cond_5

    .line 4142
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 4143
    .local v0, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 4144
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4145
    .end local v0    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_2

    .line 4146
    :cond_5
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 4148
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_2

    .line 4138
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 4139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4152
    :goto_2
    if-nez p3, :cond_8

    .line 4154
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    const-string v2, ""

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 4156
    :cond_8
    return-void
.end method

.method private shouldShowImeSwitcherLocked(I)Z
    .locals 16
    .param p1, "visibility"    # I

    move-object/from16 v0, p0

    .line 2238
    iget-boolean v1, v0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2239
    :cond_0
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    return v2

    .line 2240
    :cond_1
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2241
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 2242
    :cond_2
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_3

    return v2

    .line 2243
    :cond_3
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 2244
    iget v1, v0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardBehavior:I

    if-nez v1, :cond_5

    .line 2249
    return v3

    .line 2251
    :cond_4
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_5

    .line 2252
    return v2

    .line 2255
    :cond_5
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 2256
    .local v1, "imis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 2257
    .local v4, "N":I
    const/4 v5, 0x2

    if-le v4, v5, :cond_6

    return v3

    .line 2258
    :cond_6
    if-ge v4, v3, :cond_7

    return v2

    .line 2259
    :cond_7
    const/4 v5, 0x0

    .line 2260
    .local v5, "nonAuxCount":I
    const/4 v6, 0x0

    .line 2261
    .local v6, "auxCount":I
    const/4 v7, 0x0

    .line 2262
    .local v7, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v8, 0x0

    .line 2263
    .local v8, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    move-object v9, v8

    move-object v8, v7

    move v7, v6

    move v6, v5

    move v5, v2

    .local v5, "i":I
    .local v6, "nonAuxCount":I
    .local v7, "auxCount":I
    .local v8, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v9, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_0
    if-ge v5, v4, :cond_b

    .line 2264
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 2265
    .local v10, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v11, v0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v12, v0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2266
    invoke-virtual {v11, v12, v10, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 2267
    .local v11, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 2268
    .local v12, "subtypeCount":I
    if-nez v12, :cond_8

    .line 2269
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2271
    :cond_8
    move-object v13, v9

    move-object v9, v8

    move v8, v7

    move v7, v6

    move v6, v2

    .local v6, "j":I
    .local v7, "nonAuxCount":I
    .local v8, "auxCount":I
    .local v9, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v13, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_1
    if-ge v6, v12, :cond_a

    .line 2272
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    .line 2273
    .local v14, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v15

    if-nez v15, :cond_9

    .line 2274
    add-int/lit8 v7, v7, 0x1

    .line 2275
    move-object v9, v14

    goto :goto_2

    .line 2277
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 2278
    move-object v13, v14

    .line 2271
    .end local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2263
    .end local v6    # "j":I
    .end local v10    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v11    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v12    # "subtypeCount":I
    :cond_a
    move v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v13

    .end local v13    # "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v6, "nonAuxCount":I
    .local v7, "auxCount":I
    .local v8, "nonAuxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v9, "auxSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2283
    .end local v5    # "i":I
    :cond_b
    if-gt v6, v3, :cond_10

    if-le v7, v3, :cond_c

    goto :goto_4

    .line 2285
    :cond_c
    if-ne v6, v3, :cond_f

    if-ne v7, v3, :cond_f

    .line 2286
    if-eqz v8, :cond_e

    if-eqz v9, :cond_e

    .line 2287
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 2288
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v5

    if-nez v5, :cond_d

    .line 2289
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    const-string v5, "TrySuppressingImeSwitcher"

    .line 2290
    invoke-virtual {v8, v5}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2291
    return v2

    .line 2293
    :cond_e
    return v3

    .line 2295
    :cond_f
    return v2

    .line 2284
    :cond_10
    :goto_4
    return v3
.end method

.method private showConfigureInputMethods()V
    .locals 4

    .line 3849
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3850
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3853
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3854
    return-void
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputMethodId"    # Ljava/lang/String;

    .line 3834
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3835
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3838
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3839
    const-string/jumbo v1, "input_method_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3842
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3843
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 3844
    .local v2, "userId":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3845
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3846
    return-void

    .line 3844
    .end local v2    # "userId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private showInputMethodMenu(Z)V
    .locals 24
    .param p1, "showAuxSubtypes"    # Z

    move-object/from16 v1, p0

    .line 3864
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isScreenLocked()Z

    move-result v2

    .line 3866
    .local v2, "isScreenLocked":Z
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 3867
    .local v3, "lastInputMethodId":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v4

    .line 3870
    .local v4, "lastInputMethodSubtypeId":I
    iget-object v5, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 3871
    :try_start_0
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v6, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3872
    invoke-virtual {v0, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 3874
    .local v0, "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 3875
    move/from16 v7, p1

    move-object/from16 v16, v0

    move/from16 v19, v2

    move-object/from16 v21, v3

    goto/16 :goto_3

    .line 3878
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 3880
    iget-object v6, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3881
    move/from16 v7, p1

    :try_start_1
    invoke-virtual {v6, v7, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3884
    .local v6, "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    const/4 v8, -0x1

    if-ne v4, v8, :cond_1

    .line 3885
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v9

    .line 3886
    .local v9, "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v9, :cond_1

    .line 3887
    iget-object v10, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v11, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 3888
    .local v10, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    nop

    .line 3889
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v11

    .line 3888
    invoke-static {v10, v11}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v11

    .end local v9    # "currentSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_0

    .line 4003
    .end local v0    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v6    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :catchall_0
    move-exception v0

    move/from16 v19, v2

    move-object/from16 v21, v3

    goto/16 :goto_5

    .line 3893
    .restart local v0    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .restart local v6    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    :cond_1
    :goto_0
    :try_start_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .line 3894
    .local v9, "N":I
    new-array v10, v9, [Landroid/view/inputmethod/InputMethodInfo;

    iput-object v10, v1, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 3895
    new-array v10, v9, [I

    iput-object v10, v1, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 3896
    const/4 v10, 0x0

    .line 3897
    .local v10, "checkedItem":I
    const/4 v11, 0x0

    move v12, v10

    move v10, v11

    .local v10, "i":I
    .local v12, "checkedItem":I
    :goto_1
    if-ge v10, v9, :cond_5

    .line 3898
    :try_start_4
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 3899
    .local v13, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v14, v1, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    iget-object v15, v13, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    aput-object v15, v14, v10

    .line 3900
    iget-object v14, v1, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    iget v15, v13, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    aput v15, v14, v10

    .line 3901
    iget-object v14, v1, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v14, v14, v10

    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 3902
    iget-object v14, v1, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    aget v14, v14, v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3903
    .local v14, "subtypeId":I
    if-eq v14, v8, :cond_3

    if-ne v4, v8, :cond_2

    if-eqz v14, :cond_3

    :cond_2
    if-ne v14, v4, :cond_4

    .line 3906
    :cond_3
    move v12, v10

    .line 3897
    .end local v13    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v14    # "subtypeId":I
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3912
    .end local v10    # "i":I
    :cond_5
    :try_start_5
    new-instance v8, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v10

    iget-object v13, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3913
    invoke-static {v13}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v13

    const/4 v14, 0x2

    new-array v15, v14, [I

    fill-array-data v15, :array_0

    invoke-virtual {v13, v15}, Landroid/content/res/ThemeController;->getCorrectThemeResource([I)I

    move-result v13

    invoke-direct {v8, v10, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3921
    .local v8, "settingsContext":Landroid/content/Context;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v10, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 3922
    iget-object v10, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v13, Lcom/android/server/InputMethodManagerService$6;

    invoke-direct {v13, v1}, Lcom/android/server/InputMethodManagerService$6;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v10, v13}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 3929
    iget-object v10, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 3930
    .local v10, "dialogContext":Landroid/content/Context;
    sget-object v13, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v15, 0x101005d

    const/4 v14, 0x0

    invoke-virtual {v10, v14, v13, v15, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 3933
    .local v13, "a":Landroid/content/res/TypedArray;
    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 3935
    .local v15, "dialogIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3937
    iget-object v11, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v11, v15}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 3939
    const-class v11, Landroid/view/LayoutInflater;

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 3940
    .local v11, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v16, v0

    const v0, 0x1090075

    .end local v0    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local v16, "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-virtual {v11, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3942
    .local v0, "tv":Landroid/view/View;
    iget-object v14, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3945
    iput-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 3946
    iget-object v14, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    move-object/from16 v17, v0

    const v0, 0x1020285

    .line 3947
    .end local v0    # "tv":Landroid/view/View;
    .local v17, "tv":Landroid/view/View;
    invoke-virtual {v14, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3948
    iget-object v14, v1, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3949
    nop

    .line 3948
    const/4 v14, 0x0

    goto :goto_2

    .line 3949
    :cond_6
    const/16 v14, 0x8

    .line 3948
    :goto_2
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 3950
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v14, 0x1020286

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 3952
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    iget-boolean v14, v1, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v14}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3953
    new-instance v14, Lcom/android/server/InputMethodManagerService$7;

    invoke-direct {v14, v1}, Lcom/android/server/InputMethodManagerService$7;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v14}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3963
    new-instance v14, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    move-object/from16 v18, v0

    const v0, 0x1090076

    .end local v0    # "hardKeySwitch":Landroid/widget/Switch;
    .local v18, "hardKeySwitch":Landroid/widget/Switch;
    invoke-direct {v14, v10, v0, v6, v12}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    move-object v0, v14

    .line 3965
    .local v0, "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    new-instance v14, Lcom/android/server/InputMethodManagerService$8;

    invoke-direct {v14, v1, v0}, Lcom/android/server/InputMethodManagerService$8;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 3987
    .local v14, "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    move/from16 v19, v2

    :try_start_6
    iget-object v2, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .end local v2    # "isScreenLocked":Z
    .local v19, "isScreenLocked":Z
    invoke-virtual {v2, v0, v12, v14}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3989
    iget-object v2, v1, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 3990
    iget-object v2, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    move-object/from16 v20, v0

    const/4 v0, 0x1

    .end local v0    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .local v20, "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3991
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3992
    .local v0, "w":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3993
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v21, v3

    const/16 v3, 0x7dc

    .end local v3    # "lastInputMethodId":Ljava/lang/String;
    .local v21, "lastInputMethodId":Ljava/lang/String;
    :try_start_7
    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 3997
    iget-object v3, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3998
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3999
    const-string v3, "Select input method"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 4000
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4001
    iget-object v3, v1, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    move-object/from16 v22, v0

    iget v0, v1, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    .end local v0    # "w":Landroid/view/Window;
    .local v22, "w":Landroid/view/Window;
    move-object/from16 v23, v2

    iget v2, v1, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    .end local v2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v23, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/InputMethodManagerService;->updateSystemUi(Landroid/os/IBinder;II)V

    .line 4002
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4003
    .end local v6    # "imList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    .end local v8    # "settingsContext":Landroid/content/Context;
    .end local v9    # "N":I
    .end local v10    # "dialogContext":Landroid/content/Context;
    .end local v11    # "inflater":Landroid/view/LayoutInflater;
    .end local v12    # "checkedItem":I
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v14    # "choiceListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v15    # "dialogIcon":Landroid/graphics/drawable/Drawable;
    .end local v16    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v17    # "tv":Landroid/view/View;
    .end local v18    # "hardKeySwitch":Landroid/widget/Switch;
    .end local v20    # "adapter":Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;
    .end local v22    # "w":Landroid/view/Window;
    .end local v23    # "attrs":Landroid/view/WindowManager$LayoutParams;
    monitor-exit v5

    .line 4004
    return-void

    .line 4003
    .end local v21    # "lastInputMethodId":Ljava/lang/String;
    .restart local v3    # "lastInputMethodId":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v21, v3

    .end local v3    # "lastInputMethodId":Ljava/lang/String;
    .restart local v21    # "lastInputMethodId":Ljava/lang/String;
    goto :goto_5

    .end local v19    # "isScreenLocked":Z
    .end local v21    # "lastInputMethodId":Ljava/lang/String;
    .local v2, "isScreenLocked":Z
    .restart local v3    # "lastInputMethodId":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 3875
    .local v0, "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    :cond_7
    move/from16 v7, p1

    move-object/from16 v16, v0

    move/from16 v19, v2

    move-object/from16 v21, v3

    .end local v0    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v2    # "isScreenLocked":Z
    .end local v3    # "lastInputMethodId":Ljava/lang/String;
    .restart local v16    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .restart local v19    # "isScreenLocked":Z
    .restart local v21    # "lastInputMethodId":Ljava/lang/String;
    :goto_3
    monitor-exit v5

    return-void

    .line 4003
    .end local v16    # "immis":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .end local v19    # "isScreenLocked":Z
    .end local v21    # "lastInputMethodId":Ljava/lang/String;
    .restart local v2    # "isScreenLocked":Z
    .restart local v3    # "lastInputMethodId":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move/from16 v7, p1

    :goto_4
    move/from16 v19, v2

    move-object/from16 v21, v3

    .end local v2    # "isScreenLocked":Z
    .end local v3    # "lastInputMethodId":Ljava/lang/String;
    .restart local v19    # "isScreenLocked":Z
    .restart local v21    # "lastInputMethodId":Ljava/lang/String;
    :goto_5
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_5

    :array_0
    .array-data 4
        0x103023a
        0x1030226
    .end array-data
.end method

.method private startInput(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 4
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p4, "missingMethods"    # I
    .param p5, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p6, "controlFlags"    # I

    .line 2015
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2016
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 2018
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2029
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2031
    .local v1, "ident":J
    :try_start_1
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/InputMethodManagerService;->startInputLocked(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2034
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 2031
    return-object v3

    .line 2034
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2036
    .end local v1    # "ident":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private startVrInputMethodNoCheck(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 948
    if-nez p1, :cond_0

    .line 950
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->restoreNonVrImeFromSettingsNoCheck()V

    .line 951
    return-void

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 955
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 956
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 957
    .local v3, "info":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 959
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 960
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 961
    goto :goto_1

    .line 963
    .end local v3    # "info":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    goto :goto_0

    .line 964
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    :goto_1
    monitor-exit v0

    .line 965
    return-void

    .line 964
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private switchUserLocked(I)V
    .locals 6
    .param p1, "newUserId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .line 1442
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1446
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1447
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 1448
    .local v0, "useCopyOnWriteSettings":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3, p1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1449
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1451
    new-instance v3, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v3, v4, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 1452
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 1462
    .local v3, "defaultImiId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1463
    .local v4, "initialUserSwitch":Z
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1466
    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v5, :cond_3

    .line 1467
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 1468
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 1469
    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1470
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1473
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1475
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1477
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    goto :goto_2

    .line 1478
    :catch_0
    move-exception v1

    .line 1479
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "InputMethodManagerService"

    const-string v5, "Unexpected exception"

    invoke-static {v2, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1483
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 1484
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1485
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1486
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    .line 1484
    invoke-static {v1, v2, p1, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1491
    :cond_4
    return-void
.end method

.method private updateSystemUi(Landroid/os/IBinder;II)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .line 2338
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2339
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2340
    monitor-exit v0

    .line 2341
    return-void

    .line 2340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSystemUiLocked(Landroid/os/IBinder;II)V
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .line 2345
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2346
    return-void

    .line 2351
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2354
    .local v0, "ident":J
    if-eqz p2, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    if-nez v2, :cond_1

    .line 2355
    const/4 p2, 0x0

    goto :goto_0

    .line 2397
    :catchall_0
    move-exception v2

    goto/16 :goto_3

    .line 2358
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    move-result v2

    .line 2359
    .local v2, "needsToShowImeSwitcher":Z
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v3, :cond_2

    .line 2360
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v3, p1, p2, p3, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 2363
    :cond_2
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 2364
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 2366
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v7, 0x10405e9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2368
    .local v6, "title":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v7, v3, v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2370
    .local v7, "summary":Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 2371
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 2372
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2374
    :try_start_1
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 2375
    invoke-interface {v8}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v8

    if-nez v8, :cond_3

    .line 2379
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitcherNotification:Landroid/app/Notification$Builder;

    .line 2381
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2379
    invoke-virtual {v8, v5, v4, v9, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 2382
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2385
    :cond_3
    goto :goto_1

    .line 2384
    :catch_0
    move-exception v4

    .line 2386
    .end local v6    # "title":Ljava/lang/CharSequence;
    .end local v7    # "summary":Ljava/lang/CharSequence;
    :goto_1
    goto :goto_2

    .line 2387
    :cond_4
    :try_start_2
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v6, :cond_5

    .line 2391
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v5, v4, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2393
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2397
    .end local v2    # "needsToShowImeSwitcher":Z
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_5
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2398
    nop

    .line 2399
    return-void

    .line 2397
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private windowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;II)Lcom/android/internal/view/InputBindResult;
    .locals 24
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "controlFlags"    # I
    .param p5, "softInputMode"    # I
    .param p6, "windowFlags"    # I
    .param p7, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p9, "missingMethods"    # I
    .param p10, "unverifiedTargetSdkVersion"    # I

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 2836
    move/from16 v13, p10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v14

    .line 2837
    .local v14, "calledFromValidUser":Z
    const/4 v15, 0x0

    .line 2838
    .local v15, "res":Lcom/android/internal/view/InputBindResult;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v6, v0

    .line 2840
    .local v6, "ident":J
    :try_start_0
    iget-object v5, v8, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 2853
    :try_start_1
    iget-object v0, v8, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    move-object v4, v0

    .line 2854
    .local v4, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-eqz v4, :cond_13

    .line 2860
    :try_start_2
    iget-object v0, v8, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2870
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3018
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2870
    return-object v0

    .line 2873
    :cond_0
    goto :goto_0

    .line 3016
    .end local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v5

    move-wide v1, v6

    move v12, v13

    move/from16 v16, v14

    goto/16 :goto_a

    .line 2872
    .restart local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :catch_0
    move-exception v0

    .line 2875
    :goto_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    if-nez v14, :cond_1

    .line 2876
    :try_start_4
    const-string v1, "InputMethodManagerService"

    const-string v2, "A background user is requesting window. Hiding IME."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    const-string v1, "InputMethodManagerService"

    const-string v2, "If you want to interect with IME, you need android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    invoke-virtual {v8, v0, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 2880
    sget-object v0, Lcom/android/internal/view/InputBindResult;->INVALID_USER:Lcom/android/internal/view/InputBindResult;

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3018
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2880
    return-object v0

    .line 2883
    :cond_1
    :try_start_5
    iget-object v1, v8, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-ne v1, v9, :cond_3

    .line 2888
    if-eqz p7, :cond_2

    .line 2889
    move-object v1, v8

    move-object v2, v4

    move-object/from16 v3, p8

    move/from16 v16, v14

    move-object v14, v4

    move/from16 v4, p9

    .line 2889
    .end local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .local v14, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .local v16, "calledFromValidUser":Z
    move-object/from16 v17, v5

    move-object/from16 v5, p7

    move-wide v12, v6

    move v6, v10

    .line 2889
    .end local v6    # "ident":J
    .local v12, "ident":J
    move/from16 v7, p1

    :try_start_6
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3018
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2889
    return-object v0

    .line 3016
    .end local v14    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :catchall_1
    move-exception v0

    move-wide v1, v12

    move/from16 v12, p10

    goto/16 :goto_a

    .line 2892
    .end local v12    # "ident":J
    .end local v16    # "calledFromValidUser":Z
    .restart local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v6    # "ident":J
    .local v14, "calledFromValidUser":Z
    :cond_2
    move-object/from16 v17, v5

    move-wide v12, v6

    move/from16 v16, v14

    move-object v14, v4

    .line 2892
    .end local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v6    # "ident":J
    .restart local v12    # "ident":J
    .local v14, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v16    # "calledFromValidUser":Z
    :try_start_7
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3018
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2892
    return-object v0

    .line 2896
    .end local v12    # "ident":J
    .end local v16    # "calledFromValidUser":Z
    .restart local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v6    # "ident":J
    .local v14, "calledFromValidUser":Z
    :cond_3
    move-object/from16 v17, v5

    move-wide v12, v6

    move/from16 v16, v14

    move-object v14, v4

    .line 2896
    .end local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v6    # "ident":J
    .restart local v12    # "ident":J
    .local v14, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v16    # "calledFromValidUser":Z
    :try_start_8
    iput-object v9, v8, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 2897
    iput v11, v8, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 2898
    iput-object v14, v8, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 2907
    and-int/lit16 v1, v11, 0xf0

    const/16 v2, 0x10

    const/4 v7, 0x1

    if-eq v1, v2, :cond_5

    :try_start_9
    iget-object v1, v8, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 2910
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v7

    :goto_2
    move/from16 v18, v1

    .line 2912
    .local v18, "doAutoShow":Z
    and-int/lit8 v1, v10, 0x2

    if-eqz v1, :cond_6

    move v1, v7

    goto :goto_3

    :cond_6
    move v1, v0

    :goto_3
    move/from16 v19, v1

    .line 2919
    .local v19, "isTextEditor":Z
    const/16 v20, 0x0

    .line 2921
    .local v20, "didStart":Z
    and-int/lit8 v1, v11, 0xf

    packed-switch v1, :pswitch_data_0

    .line 3001
    move-wide/from16 v21, v12

    move/from16 v12, p10

    .line 3001
    .end local v12    # "ident":J
    .local v21, "ident":J
    goto/16 :goto_7

    .line 2985
    .end local v21    # "ident":J
    .restart local v12    # "ident":J
    :pswitch_0
    move-wide v5, v12

    move/from16 v12, p10

    :try_start_a
    invoke-static {v12, v10}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2985
    .end local v12    # "ident":J
    .local v5, "ident":J
    if-eqz v0, :cond_8

    .line 2987
    if-eqz p7, :cond_7

    .line 2988
    move-object v1, v8

    move-object v2, v14

    move-object v0, v3

    move-object/from16 v3, p8

    move/from16 v4, p9

    move-wide/from16 v21, v5

    move-object/from16 v5, p7

    .line 2988
    .end local v5    # "ident":J
    .restart local v21    # "ident":J
    move v6, v10

    move v0, v7

    move/from16 v7, p1

    :try_start_b
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    move-object v15, v1

    .line 2990
    const/16 v20, 0x1

    goto :goto_4

    .line 2992
    .end local v21    # "ident":J
    .restart local v5    # "ident":J
    :cond_7
    move-wide/from16 v21, v5

    move v0, v7

    .line 2992
    .end local v5    # "ident":J
    .restart local v21    # "ident":J
    :goto_4
    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_7

    .line 2994
    .end local v21    # "ident":J
    .restart local v5    # "ident":J
    :cond_8
    move-wide/from16 v21, v5

    .line 2994
    .end local v5    # "ident":J
    .restart local v21    # "ident":J
    const-string v0, "InputMethodManagerService"

    const-string v1, "SOFT_INPUT_STATE_ALWAYS_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3016
    .end local v14    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v18    # "doAutoShow":Z
    .end local v19    # "isTextEditor":Z
    .end local v20    # "didStart":Z
    .end local v21    # "ident":J
    .restart local v5    # "ident":J
    :catchall_2
    move-exception v0

    move-wide v1, v5

    .line 3016
    .end local v5    # "ident":J
    .restart local v21    # "ident":J
    goto/16 :goto_a

    .line 2964
    .end local v21    # "ident":J
    .restart local v12    # "ident":J
    .restart local v14    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v18    # "doAutoShow":Z
    .restart local v19    # "isTextEditor":Z
    .restart local v20    # "didStart":Z
    :pswitch_1
    move v0, v7

    move-wide/from16 v21, v12

    move/from16 v12, p10

    .line 2964
    .end local v12    # "ident":J
    .restart local v21    # "ident":J
    and-int/lit16 v1, v11, 0x100

    if-eqz v1, :cond_e

    .line 2967
    invoke-static {v12, v10}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSoftInputModeStateVisibleAllowed(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2969
    if-eqz p7, :cond_9

    .line 2970
    move-object v1, v8

    move-object v2, v14

    move-object/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p7

    move v6, v10

    move/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    move-object v15, v1

    .line 2973
    const/16 v20, 0x1

    .line 2975
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto/16 :goto_7

    .line 2977
    :cond_a
    const-string v0, "InputMethodManagerService"

    const-string v1, "SOFT_INPUT_STATE_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2961
    .end local v21    # "ident":J
    .restart local v12    # "ident":J
    :pswitch_2
    move-object v7, v3

    move-wide/from16 v21, v12

    move/from16 v12, p10

    .line 2961
    .end local v12    # "ident":J
    .restart local v21    # "ident":J
    invoke-virtual {v8, v0, v7}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 2962
    goto/16 :goto_7

    .line 3016
    .end local v14    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v18    # "doAutoShow":Z
    .end local v19    # "isTextEditor":Z
    .end local v20    # "didStart":Z
    :catchall_3
    move-exception v0

    move-wide/from16 v1, v21

    goto/16 :goto_a

    .line 2953
    .end local v21    # "ident":J
    .restart local v12    # "ident":J
    .restart local v14    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v18    # "doAutoShow":Z
    .restart local v19    # "isTextEditor":Z
    .restart local v20    # "didStart":Z
    :pswitch_3
    move-object v7, v3

    move-wide/from16 v21, v12

    move/from16 v12, p10

    .line 2953
    .end local v12    # "ident":J
    .restart local v21    # "ident":J
    and-int/lit16 v1, v11, 0x100

    if-eqz v1, :cond_e

    .line 2956
    invoke-virtual {v8, v0, v7}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_7

    .line 2951
    .end local v21    # "ident":J
    .restart local v12    # "ident":J
    :pswitch_4
    move-wide/from16 v21, v12

    move/from16 v12, p10

    .line 2951
    .end local v12    # "ident":J
    .restart local v21    # "ident":J
    goto :goto_7

    .line 2923
    .end local v21    # "ident":J
    .restart local v12    # "ident":J
    :pswitch_5
    move v0, v7

    move-wide/from16 v21, v12

    move/from16 v12, p10

    move-object v7, v3

    .line 2923
    .end local v12    # "ident":J
    .restart local v21    # "ident":J
    if-eqz v19, :cond_d

    if-nez v18, :cond_b

    goto :goto_6

    .line 2931
    :cond_b
    if-eqz v19, :cond_e

    if-eqz v18, :cond_e

    and-int/lit16 v1, v11, 0x100

    if-eqz v1, :cond_e

    .line 2941
    if-eqz p7, :cond_c

    .line 2942
    move-object v1, v8

    move-object v2, v14

    move-object/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p7

    move v6, v10

    move-object v0, v7

    move/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    move-object v15, v1

    .line 2944
    const/4 v1, 0x1

    .line 2946
    .end local v20    # "didStart":Z
    .local v1, "didStart":Z
    move/from16 v20, v1

    goto :goto_5

    .line 2946
    .end local v1    # "didStart":Z
    .restart local v20    # "didStart":Z
    :cond_c
    move-object v0, v7

    :goto_5
    const/4 v1, 0x1

    invoke-virtual {v8, v1, v0}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_7

    .line 2924
    :cond_d
    :goto_6
    move-object v0, v7

    invoke-static/range {p6 .. p6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2929
    const/4 v1, 0x2

    invoke-virtual {v8, v1, v0}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 3001
    :cond_e
    :goto_7
    if-nez v20, :cond_12

    .line 3002
    if-eqz p7, :cond_11

    .line 3003
    sget-object v0, Lcom/android/server/InputMethodManagerService$DebugFlags;->FLAG_OPTIMIZE_START_INPUT:Lcom/android/server/InputMethodManagerService$DebugFlag;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService$DebugFlag;->value()Z

    move-result v0

    if-eqz v0, :cond_10

    and-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_f

    goto :goto_8

    .line 3010
    :cond_f
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NO_EDITOR:Lcom/android/internal/view/InputBindResult;

    move-object v15, v0

    goto :goto_9

    .line 3006
    :cond_10
    :goto_8
    move-object v1, v8

    move-object v2, v14

    move-object/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p7

    move v6, v10

    move/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    move-object v15, v0

    goto :goto_9

    .line 3013
    :cond_11
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/view/InputBindResult;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object v15, v0

    .line 3016
    .end local v14    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v18    # "doAutoShow":Z
    .end local v19    # "isTextEditor":Z
    .end local v20    # "didStart":Z
    :cond_12
    :goto_9
    :try_start_c
    monitor-exit v17
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 3018
    move-wide/from16 v1, v21

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3019
    .end local v21    # "ident":J
    .local v1, "ident":J
    nop

    .line 3021
    return-object v15

    .line 3016
    .end local v1    # "ident":J
    .restart local v21    # "ident":J
    :catchall_4
    move-exception v0

    move-wide/from16 v1, v21

    .line 3016
    .end local v21    # "ident":J
    .restart local v1    # "ident":J
    goto :goto_a

    .line 3016
    .end local v1    # "ident":J
    .restart local v12    # "ident":J
    :catchall_5
    move-exception v0

    move-wide v1, v12

    move/from16 v12, p10

    .line 3016
    .end local v12    # "ident":J
    .restart local v1    # "ident":J
    goto :goto_a

    .line 2855
    .end local v1    # "ident":J
    .end local v16    # "calledFromValidUser":Z
    .restart local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v6    # "ident":J
    .local v14, "calledFromValidUser":Z
    :cond_13
    move-object/from16 v17, v5

    move-wide v1, v6

    move v12, v13

    move/from16 v16, v14

    move-object v14, v4

    .line 2855
    .end local v4    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v6    # "ident":J
    .restart local v1    # "ident":J
    .local v14, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    .restart local v16    # "calledFromValidUser":Z
    :try_start_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2856
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3016
    .end local v1    # "ident":J
    .end local v16    # "calledFromValidUser":Z
    .restart local v6    # "ident":J
    .local v14, "calledFromValidUser":Z
    :catchall_6
    move-exception v0

    move-object/from16 v17, v5

    move-wide v1, v6

    move v12, v13

    move/from16 v16, v14

    .line 3016
    .end local v6    # "ident":J
    .end local v14    # "calledFromValidUser":Z
    .restart local v1    # "ident":J
    .restart local v16    # "calledFromValidUser":Z
    :goto_a
    monitor-exit v17
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 3018
    :catchall_7
    move-exception v0

    goto :goto_b

    .line 3016
    :catchall_8
    move-exception v0

    goto :goto_a

    .line 3018
    .end local v1    # "ident":J
    .end local v16    # "calledFromValidUser":Z
    .restart local v6    # "ident":J
    .restart local v14    # "calledFromValidUser":Z
    :catchall_9
    move-exception v0

    move-wide v1, v6

    move v12, v13

    move/from16 v16, v14

    .line 3018
    .end local v6    # "ident":J
    .end local v14    # "calledFromValidUser":Z
    .restart local v1    # "ident":J
    .restart local v16    # "calledFromValidUser":Z
    :goto_b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    nop

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


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 1717
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1718
    return-void

    .line 1720
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1721
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService$ClientState;-><init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    monitor-exit v0

    .line 1724
    return-void

    .line 1723
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;
    .locals 19
    .param p1, "startInputReason"    # I
    .param p2, "initial"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    move-object/from16 v0, p0

    .line 1810
    iget-boolean v1, v0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-nez v1, :cond_0

    .line 1811
    iget-object v1, v0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3f2

    iget-object v4, v0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1813
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    .line 1816
    :cond_0
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 1817
    .local v1, "startInputToken":Landroid/os/Binder;
    new-instance v11, Lcom/android/server/InputMethodManagerService$StartInputInfo;

    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget-object v4, v0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    xor-int/lit8 v6, p2, 0x1

    iget-object v7, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    iget-object v8, v0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v9, v0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    iget v10, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    move-object v2, v11

    move/from16 v5, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/InputMethodManagerService$StartInputInfo;-><init>(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V

    move-object v10, v11

    .line 1820
    .local v10, "info":Lcom/android/server/InputMethodManagerService$StartInputInfo;
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mStartInputMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;

    invoke-virtual {v2, v10}, Lcom/android/server/InputMethodManagerService$StartInputHistory;->addEntry(Lcom/android/server/InputMethodManagerService$StartInputInfo;)V

    .line 1823
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v11, v2, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 1824
    .local v11, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    iget-object v12, v11, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x7d0

    iget v4, v0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    .line 1825
    xor-int/lit8 v5, p2, 0x1

    iget-object v8, v0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v9, v0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1824
    move-object v6, v1

    move-object v7, v11

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIOOOO(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v12, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1827
    iget-boolean v2, v0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1829
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->getAppShowFlags()I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 1831
    :cond_1
    new-instance v2, Lcom/android/internal/view/InputBindResult;

    const/4 v13, 0x0

    iget-object v14, v11, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 1832
    iget-object v4, v11, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_2

    iget-object v3, v11, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v3

    :goto_0
    move-object v15, v3

    goto :goto_1

    :cond_2
    goto :goto_0

    :goto_1
    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, v0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v12, v2

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    invoke-direct/range {v12 .. v18}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    .line 1831
    return-object v2
.end method

.method buildInputMethodListLocked(Z)V
    .locals 14
    .param p1, "resetDefaultEnabledIme"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .line 3696
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 3697
    const-string v0, "InputMethodManagerService"

    const-string v1, "buildInputMethodListLocked is not allowed until system is ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3698
    return-void

    .line 3700
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3701
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3702
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 3703
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->clearKnownImePackageNamesLocked()V

    .line 3706
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3711
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.view.InputMethod"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x8080

    .line 3713
    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->getComponentMatchingFlags(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3715
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    .line 3711
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 3717
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 3718
    invoke-virtual {v3}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;

    move-result-object v3

    .line 3719
    .local v3, "additionalSubtypeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 3720
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 3721
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3722
    .local v7, "si":Landroid/content/pm/ServiceInfo;
    invoke-static {v6}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v8

    .line 3723
    .local v8, "imeId":Ljava/lang/String;
    const-string v9, "android.permission.BIND_INPUT_METHOD"

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 3724
    const-string v9, "InputMethodManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping input method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": it does not require the permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    goto :goto_1

    .line 3732
    :cond_1
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 3734
    .local v9, "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :try_start_0
    new-instance v10, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v6, v9}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 3735
    .local v10, "p":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3736
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    .line 3737
    .local v11, "id":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v12, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3744
    .end local v10    # "p":Landroid/view/inputmethod/InputMethodInfo;
    .end local v11    # "id":Ljava/lang/String;
    goto :goto_1

    .line 3742
    :catch_0
    move-exception v10

    .line 3743
    .local v10, "e":Ljava/lang/Exception;
    const-string v11, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to load input method "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3719
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "imeId":Ljava/lang/String;
    .end local v9    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3754
    .end local v5    # "i":I
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.view.InputMethod"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x200

    .line 3756
    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->getComponentMatchingFlags(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3757
    invoke-virtual {v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    .line 3754
    invoke-virtual {v0, v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    .line 3758
    .local v5, "allInputMethodServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 3759
    .local v6, "N":I
    move v7, v4

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_4

    .line 3760
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3761
    .local v8, "si":Landroid/content/pm/ServiceInfo;
    const-string v9, "android.permission.BIND_INPUT_METHOD"

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3762
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->addKnownImePackageNameLocked(Ljava/lang/String;)V

    .line 3759
    .end local v8    # "si":Landroid/content/pm/ServiceInfo;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3767
    .end local v5    # "allInputMethodServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "N":I
    .end local v7    # "i":I
    :cond_4
    const/4 v5, 0x0

    .line 3769
    .local v5, "reenableMinimumNonAuxSystemImes":Z
    if-nez p1, :cond_8

    .line 3770
    const/4 v6, 0x0

    .line 3771
    .local v6, "enabledImeFound":Z
    const/4 v7, 0x0

    .line 3772
    .local v7, "enabledNonAuxImeFound":Z
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v8

    .line 3773
    .local v8, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 3774
    .local v9, "N":I
    move v10, v6

    move v6, v4

    .local v6, "i":I
    .local v10, "enabledImeFound":Z
    :goto_3
    if-ge v6, v9, :cond_6

    .line 3775
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 3776
    .local v11, "imi":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v12, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3777
    const/4 v10, 0x1

    .line 3778
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    move-result v12

    if-nez v12, :cond_5

    .line 3779
    const/4 v7, 0x1

    .line 3780
    goto :goto_4

    .line 3774
    .end local v11    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 3784
    .end local v6    # "i":I
    :cond_6
    :goto_4
    if-nez v10, :cond_7

    .line 3788
    const/4 p1, 0x1

    .line 3789
    const-string v6, ""

    invoke-direct {p0, v6}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    goto :goto_5

    .line 3790
    :cond_7
    if-nez v7, :cond_8

    .line 3794
    const/4 v5, 0x1

    .line 3798
    .end local v7    # "enabledNonAuxImeFound":Z
    .end local v8    # "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v9    # "N":I
    .end local v10    # "enabledImeFound":Z
    :cond_8
    :goto_5
    if-nez p1, :cond_9

    if-eqz v5, :cond_a

    .line 3799
    :cond_9
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 3800
    invoke-static {v6, v7, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 3802
    .local v6, "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3803
    .local v7, "N":I
    nop

    .local v4, "i":I
    :goto_6
    if-ge v4, v7, :cond_a

    .line 3804
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 3808
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 3803
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3812
    .end local v4    # "i":I
    .end local v6    # "defaultEnabledIme":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v7    # "N":I
    :cond_a
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v4

    .line 3813
    .local v4, "defaultImiId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 3814
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 3815
    const-string v6, "InputMethodManagerService"

    const-string v7, "Default IME is uninstalled. Choose new default IME."

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3816
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 3817
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    goto :goto_7

    .line 3821
    :cond_b
    invoke-virtual {p0, v4, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 3828
    :cond_c
    :goto_7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 3829
    return-void
.end method

.method clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .locals 1
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2135
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 2136
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2137
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2138
    return-void
.end method

.method clearCurMethodLocked()V
    .locals 3

    .line 2159
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_1

    .line 2160
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2161
    .local v1, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2162
    .end local v1    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    goto :goto_0

    .line 2164
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 2165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2166
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2168
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2169
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2171
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    .line 2172
    return-void
.end method

.method public clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3295
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3296
    return-void

    .line 3298
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3299
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3300
    monitor-exit v0

    return-void

    .line 3302
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3303
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->clearLastInputMethodWindowForTransition()V

    .line 3304
    return-void

    .line 3302
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .locals 11
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 4621
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4622
    return-object v1

    .line 4625
    :cond_0
    if-eqz p1, :cond_7

    .line 4628
    if-eqz p3, :cond_6

    .line 4631
    if-eqz p2, :cond_5

    .line 4634
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 4635
    .local v0, "contentUriScheme":Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4639
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 4640
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4641
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 4642
    monitor-exit v2

    return-object v1

    .line 4644
    :cond_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v4, p1, :cond_2

    .line 4645
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring createInputContentUriToken mCurToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    monitor-exit v2

    return-object v1

    .line 4652
    :cond_2
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, v4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 4653
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring createInputContentUriToken mCurAttribute.packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v6, v6, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4655
    monitor-exit v2

    return-object v1

    .line 4658
    :cond_3
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4660
    .local v1, "imeUserId":I
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 4662
    .local v9, "appUserId":I
    invoke-static {p2, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 4664
    .local v8, "contentUriOwnerUserId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 4671
    .local v5, "contentUriWithoutUserId":Landroid/net/Uri;
    new-instance v10, Lcom/android/server/InputContentUriTokenHandler;

    move-object v4, v10

    move v6, v3

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/InputContentUriTokenHandler;-><init>(Landroid/net/Uri;ILjava/lang/String;II)V

    monitor-exit v2

    return-object v10

    .line 4673
    .end local v1    # "imeUserId":I
    .end local v3    # "uid":I
    .end local v5    # "contentUriWithoutUserId":Landroid/net/Uri;
    .end local v8    # "contentUriOwnerUserId":I
    .end local v9    # "appUserId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4636
    :cond_4
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "contentUri must have content scheme"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4632
    .end local v0    # "contentUriScheme":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentUri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4629
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4626
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "token"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 4695
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string v1, "InputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4701
    :cond_0
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4703
    .local v0, "p":Landroid/util/Printer;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4704
    :try_start_0
    const-string v2, "Current Input Method Manager state:"

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4705
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4706
    .local v2, "N":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Input Methods: mMethodMapUpdateCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mBindInstantServiceAllowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mBindInstantServiceAllowed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4708
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 4709
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 4710
    .local v4, "info":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  InputMethod #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4711
    const-string v5, "    "

    invoke-virtual {v4, v0, v5}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4708
    .end local v4    # "info":Landroid/view/inputmethod/InputMethodInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4713
    .end local v3    # "i":I
    :cond_1
    const-string v3, "  Clients:"

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4714
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4715
    .local v4, "ci":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4716
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4717
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    inputContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4718
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    sessionRequested="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4719
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    curSession="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4720
    .end local v4    # "ci":Lcom/android/server/InputMethodManagerService$ClientState;
    goto :goto_1

    .line 4721
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mCurMethodId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4722
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4723
    .local v3, "client":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurClient="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mCurSeq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4724
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCurFocusedWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " softInputMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 4726
    invoke-static {v5}, Lcom/android/internal/view/InputMethodClient;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4724
    invoke-interface {v0, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4728
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4729
    .local v4, "focusedWindowClient":Lcom/android/server/InputMethodManagerService$ClientState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mHaveConnect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mBoundToMethod="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4731
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4732
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mCurIntent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4733
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 4734
    .local v5, "method":Lcom/android/internal/view/IInputMethod;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurMethod="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4735
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mEnabledSession="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4736
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mImeWindowVis="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    invoke-static {v7}, Lcom/android/server/InputMethodManagerService;->imeWindowStatusToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4737
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mShowRequested="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mShowExplicitlyRequested="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mShowForced="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mInputShown="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4741
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mInFullscreenMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4742
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurUserActionNotificationSequenceNumber="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4744
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSystemReady="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mInteractive="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4745
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mSettingsObserver="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4746
    const-string v6, "  mSwitchingController:"

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4747
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v6, v0}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    .line 4748
    const-string v6, "  mSettings:"

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4749
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string v7, "    "

    invoke-virtual {v6, v0, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4751
    const-string v6, "  mStartInputHistory:"

    invoke-interface {v0, v6}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4752
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;

    const-string v7, "   "

    invoke-virtual {v6, p2, v7}, Lcom/android/server/InputMethodManagerService$StartInputHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4753
    .end local v2    # "N":I
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4755
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4756
    if-eqz v3, :cond_3

    .line 4757
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4759
    :try_start_1
    iget-object v1, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 4760
    :catch_0
    move-exception v1

    .line 4761
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to dump input method client: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4762
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 4764
    :cond_3
    const-string v1, "No input method client."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4767
    :goto_3
    if-eqz v4, :cond_4

    if-eq v3, v4, :cond_4

    .line 4768
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4769
    const-string v1, "Warning: Current input method client doesn\'t match the last focused. window."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4771
    const-string v1, "Dumping input method client in the last focused window just in case."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4772
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4773
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4775
    :try_start_2
    iget-object v1, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4778
    goto :goto_4

    .line 4776
    :catch_1
    move-exception v1

    .line 4777
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to dump input method client in focused window: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4781
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_4
    const-string v1, " "

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4782
    if-eqz v5, :cond_5

    .line 4783
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4785
    :try_start_3
    invoke-interface {v5}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 4786
    :catch_2
    move-exception v1

    .line 4787
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to dump input method service: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4788
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    goto :goto_6

    .line 4790
    :cond_5
    const-string v1, "No input method service."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4792
    :goto_6
    return-void

    .line 4753
    .end local v3    # "client":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v4    # "focusedWindowClient":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v5    # "method":Lcom/android/internal/view/IInputMethod;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .locals 1
    .param p1, "target"    # Landroid/os/IInterface;
    .param p2, "msg"    # Landroid/os/Message;

    .line 1753
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1756
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 1757
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 1759
    :goto_0
    return-void
.end method

.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 0
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 2041
    return-void
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    .line 4262
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4263
    const/4 v0, 0x0

    return-object v0

    .line 4265
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4266
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1680
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1681
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1683
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1684
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1685
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "allowsImplicitlySelectedSubtypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .line 1696
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1697
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1699
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1701
    if-nez p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1702
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_0

    .line 1711
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1704
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 1706
    .restart local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    if-nez v1, :cond_2

    .line 1707
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1709
    :cond_2
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1711
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInputMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1653
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->getInputMethodList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodWindowVisibleHeight()I
    .locals 1

    .line 3290
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getInputMethodWindowVisibleHeight()I

    move-result v0

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 7

    .line 3224
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3225
    return-object v1

    .line 3227
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3228
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v2

    .line 3230
    .local v2, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_5

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    .line 3231
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 3232
    :cond_1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 3233
    .local v3, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v3, :cond_2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 3235
    :cond_2
    :try_start_1
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3236
    .local v4, "lastSubtypeHash":I
    nop

    .line 3237
    invoke-static {v3, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v5

    .line 3238
    .local v5, "lastSubtypeId":I
    if-ltz v5, :cond_4

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v6

    if-lt v5, v6, :cond_3

    goto :goto_0

    .line 3241
    :cond_3
    invoke-virtual {v3, v5}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v6

    .line 3239
    :cond_4
    :goto_0
    monitor-exit v0

    return-object v1

    .line 3242
    .end local v4    # "lastSubtypeHash":I
    .end local v5    # "lastSubtypeId":I
    :catch_0
    move-exception v4

    .line 3243
    .local v4, "e":Ljava/lang/NumberFormatException;
    monitor-exit v0

    return-object v1

    .line 3231
    .end local v3    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    :goto_1
    monitor-exit v0

    return-object v1

    .line 3245
    .end local v2    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/List;
    .locals 6

    .line 4313
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4314
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4315
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 4319
    const-string/jumbo v2, "voice"

    .line 4320
    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 4322
    .local v2, "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v2, :cond_0

    .line 4323
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4324
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4326
    :cond_0
    monitor-exit v0

    return-object v1

    .line 4328
    .end local v2    # "info":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 4329
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4330
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodSubtype;

    .line 4331
    .local v5, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4332
    .end local v5    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_1

    .line 4333
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    goto :goto_0

    .line 4334
    :cond_3
    monitor-exit v0

    return-object v1

    .line 4335
    .end local v1    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVrInputMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 1657
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->getInputMethodList(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 3423
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 3623
    return v1

    .line 3619
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3620
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->onUnlockUser(I)V

    .line 3621
    return v2

    .line 3616
    .end local v0    # "userId":I
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(Z)V

    .line 3617
    return v2

    .line 3585
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->handleSwitchInputMethod(Z)V

    .line 3586
    return v2

    .line 3602
    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_2

    move v1, v2

    nop

    :cond_2
    move v0, v1

    .line 3603
    .local v0, "fullscreen":Z
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 3605
    .local v1, "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :try_start_0
    iget-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v3, v0}, Lcom/android/internal/view/IInputMethodClient;->reportFullscreenMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3610
    goto :goto_0

    .line 3606
    :catch_0
    move-exception v3

    .line 3607
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got RemoteException sending reportFullscreen("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ") notification to pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3611
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return v2

    .line 3588
    .end local v0    # "fullscreen":Z
    .end local v1    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3589
    .local v0, "sequenceNumber":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 3591
    .restart local v1    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :try_start_1
    iget-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v3, v0}, Lcom/android/internal/view/IInputMethodClient;->setUserActionNotificationSequenceNumber(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3598
    goto :goto_1

    .line 3592
    :catch_1
    move-exception v3

    .line 3593
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got RemoteException sending setUserActionNotificationSequenceNumber("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") notification to pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3599
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    return v2

    .line 3579
    .end local v0    # "sequenceNumber":I
    .end local v1    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->handleSetInteractive(Z)V

    .line 3580
    return v2

    .line 3571
    :sswitch_6
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_5

    move v1, v2

    nop

    :cond_5
    invoke-interface {v0, v3, v1}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3576
    goto :goto_3

    .line 3572
    :catch_2
    move-exception v0

    .line 3573
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got RemoteException sending setActive(false) notification to pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3577
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    return v2

    .line 3552
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3553
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethodClient;

    .line 3554
    .local v1, "client":Lcom/android/internal/view/IInputMethodClient;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/InputBindResult;

    .line 3556
    .local v3, "res":Lcom/android/internal/view/InputBindResult;
    :try_start_3
    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3562
    iget-object v4, v3, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_6

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3563
    :goto_4
    iget-object v4, v3, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    goto :goto_5

    .line 3562
    :catchall_0
    move-exception v2

    goto :goto_6

    .line 3557
    :catch_3
    move-exception v4

    .line 3558
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v5, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Client died receiving input method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3562
    .end local v4    # "e":Landroid/os/RemoteException;
    iget-object v4, v3, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_6

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    .line 3566
    :cond_6
    :goto_5
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3567
    return v2

    .line 3562
    :goto_6
    iget-object v4, v3, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v4, :cond_7

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3563
    iget-object v4, v3, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v4}, Landroid/view/InputChannel;->dispose()V

    :cond_7
    throw v2

    .line 3546
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "client":Lcom/android/internal/view/IInputMethodClient;
    .end local v3    # "res":Lcom/android/internal/view/InputBindResult;
    :sswitch_8
    :try_start_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethodClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v3}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 3549
    goto :goto_7

    .line 3547
    :catch_4
    move-exception v0

    .line 3550
    :goto_7
    return v2

    .line 3582
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->startVrInputMethodNoCheck(Landroid/content/ComponentName;)V

    .line 3583
    return v2

    .line 3525
    :sswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3526
    .local v0, "missingMethods":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_8

    move v8, v2

    goto :goto_8

    :cond_8
    move v8, v1

    .line 3527
    .local v8, "restarting":Z
    :goto_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 3528
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Landroid/os/IBinder;

    .line 3529
    .local v9, "startInputToken":Landroid/os/IBinder;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v10, v3

    check-cast v10, Lcom/android/server/InputMethodManagerService$SessionState;

    .line 3530
    .local v10, "session":Lcom/android/server/InputMethodManagerService$SessionState;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Lcom/android/internal/view/IInputContext;

    .line 3531
    .local v11, "inputContext":Lcom/android/internal/view/IInputContext;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Landroid/view/inputmethod/EditorInfo;

    .line 3533
    .local v7, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    :try_start_6
    invoke-virtual {p0, v10}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 3534
    iget-object v3, v10, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    move-object v4, v9

    move-object v5, v11

    move v6, v0

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/view/IInputMethod;->startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 3537
    goto :goto_9

    .line 3536
    :catch_5
    move-exception v3

    .line 3538
    :goto_9
    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3539
    return v2

    .line 3506
    .end local v0    # "missingMethods":I
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v7    # "editorInfo":Landroid/view/inputmethod/EditorInfo;
    .end local v8    # "restarting":Z
    .end local v9    # "startInputToken":Landroid/os/IBinder;
    .end local v10    # "session":Lcom/android/server/InputMethodManagerService$SessionState;
    .end local v11    # "inputContext":Lcom/android/internal/view/IInputContext;
    :sswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3507
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    .line 3508
    .local v1, "method":Lcom/android/internal/view/IInputMethod;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/InputChannel;

    .line 3510
    .local v3, "channel":Landroid/view/InputChannel;
    :try_start_7
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/IInputSessionCallback;

    invoke-interface {v1, v3, v4}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3515
    if-eqz v3, :cond_a

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_a

    :catchall_1
    move-exception v2

    if-eqz v3, :cond_9

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3516
    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    :cond_9
    throw v2

    .line 3511
    :catch_6
    move-exception v4

    .line 3515
    if-eqz v3, :cond_a

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3516
    :goto_a
    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    .line 3519
    :cond_a
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3520
    return v2

    .line 3497
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "method":Lcom/android/internal/view/IInputMethod;
    .end local v3    # "channel":Landroid/view/InputChannel;
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3500
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_8
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethod;->attachToken(Landroid/os/IBinder;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    .line 3502
    goto :goto_b

    .line 3501
    :catch_7
    move-exception v1

    .line 3503
    :goto_b
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3504
    return v2

    .line 3492
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_d
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3493
    const/4 v3, 0x0

    :try_start_9
    invoke-virtual {p0, v1, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 3494
    monitor-exit v0

    .line 3495
    return v2

    .line 3494
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1

    .line 3482
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3486
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_a
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethod;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/ResultReceiver;

    invoke-interface {v3, v1, v4}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_8

    .line 3488
    goto :goto_c

    .line 3487
    :catch_8
    move-exception v1

    .line 3489
    :goto_c
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3490
    return v2

    .line 3472
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3476
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_b
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/ResultReceiver;

    invoke-interface {v1, v3, v4}, Lcom/android/internal/view/IInputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_9

    .line 3478
    goto :goto_d

    .line 3477
    :catch_9
    move-exception v1

    .line 3479
    :goto_d
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3480
    return v2

    .line 3464
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3466
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_c
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_a

    .line 3468
    goto :goto_e

    .line 3467
    :catch_a
    move-exception v1

    .line 3469
    :goto_e
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3470
    return v2

    .line 3458
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_11
    :try_start_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_b

    .line 3461
    goto :goto_f

    .line 3459
    :catch_b
    move-exception v0

    .line 3462
    :goto_f
    return v2

    .line 3451
    :sswitch_12
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    .line 3452
    return v2

    .line 3447
    :sswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    .line 3448
    return v2

    .line 3426
    :sswitch_14
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 3440
    const-string v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown subtype picker mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    return v1

    .line 3437
    :pswitch_0
    const/4 v0, 0x0

    .line 3438
    .local v0, "showAuxSubtypes":Z
    goto :goto_10

    .line 3434
    .end local v0    # "showAuxSubtypes":Z
    :pswitch_1
    const/4 v0, 0x1

    .line 3435
    .restart local v0    # "showAuxSubtypes":Z
    goto :goto_10

    .line 3431
    .end local v0    # "showAuxSubtypes":Z
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 3432
    .restart local v0    # "showAuxSubtypes":Z
    nop

    .line 3441
    :goto_10
    nop

    .line 3443
    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V

    .line 3444
    return v2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_13
        0x3 -> :sswitch_12
        0x3e8 -> :sswitch_11
        0x3f2 -> :sswitch_10
        0x3fc -> :sswitch_f
        0x406 -> :sswitch_e
        0x40b -> :sswitch_d
        0x410 -> :sswitch_c
        0x41a -> :sswitch_b
        0x7d0 -> :sswitch_a
        0x7da -> :sswitch_9
        0xbb8 -> :sswitch_8
        0xbc2 -> :sswitch_7
        0xbcc -> :sswitch_6
        0xbd6 -> :sswitch_5
        0xbe0 -> :sswitch_4
        0xbe5 -> :sswitch_3
        0xbea -> :sswitch_2
        0xfa0 -> :sswitch_1
        0x1388 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 6
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2756
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_1

    .line 2759
    :cond_0
    return v1

    .line 2761
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v0, :cond_2

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    .line 2763
    return v1

    .line 2774
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    move v2, v1

    :goto_0
    move v0, v2

    .line 2777
    .local v0, "shouldHideSoftInput":Z
    if-eqz v0, :cond_5

    .line 2782
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x406

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2784
    const/4 v2, 0x1

    .local v2, "res":Z
    goto :goto_1

    .line 2786
    .end local v2    # "res":Z
    :cond_5
    move v2, v1

    .line 2788
    .restart local v2    # "res":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v3, :cond_6

    .line 2789
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2790
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 2792
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 2793
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 2794
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2795
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    .line 2796
    return v2
.end method

.method hideInputMethodMenu()V
    .locals 2

    .line 4047
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4048
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 4049
    monitor-exit v0

    .line 4050
    return-void

    .line 4049
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hideInputMethodMenuLocked()V
    .locals 4

    .line 4055
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4056
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4057
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 4058
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 4061
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 4062
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 4063
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 4064
    return-void
.end method

.method public hideMySoftInput(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 3358
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3359
    return-void

    .line 3361
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3362
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3363
    monitor-exit v0

    return-void

    .line 3367
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-nez v1, :cond_2

    .line 3368
    const-string v1, "InputMethodManagerService"

    const-string v2, "No currently bound IM, ignore hide request from app"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    monitor-exit v0

    return-void

    .line 3372
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3374
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3376
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3377
    nop

    .line 3378
    .end local v1    # "ident":J
    monitor-exit v0

    .line 3379
    return-void

    .line 3376
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3378
    .end local v1    # "ident":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 7
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2724
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2725
    return v1

    .line 2727
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2728
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2730
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2731
    :try_start_1
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 2732
    invoke-interface {v5}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v5, v6, :cond_3

    .line 2737
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v5, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_2

    .line 2740
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2751
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2740
    return v1

    .line 2744
    :cond_2
    nop

    .line 2748
    :cond_3
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v1

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2751
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2748
    return v1

    .line 2742
    :catch_0
    move-exception v5

    .line 2743
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2751
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2743
    return v1

    .line 2749
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2751
    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
    .locals 8
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2636
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2637
    const/4 v0, 0x0

    return v0

    .line 2639
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2640
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2642
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2643
    :try_start_1
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Longshot requesting input be hidden, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/InputMethodManagerService;->mLongshotBlockShowing:Z

    .line 2646
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/InputMethodManagerService$5;

    invoke-direct {v5, p0}, Lcom/android/server/InputMethodManagerService$5;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iget v6, p0, Lcom/android/server/InputMethodManagerService;->LONGSHOT_BLOCK_SHOWING_TIMEOUT:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2654
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2657
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2654
    return v4

    .line 2655
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2657
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isInputMethodPickerShownForTest()Z
    .locals 2

    .line 3066
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3067
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 3068
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 3070
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3071
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    .locals 9
    .param p1, "span"    # Landroid/text/style/SuggestionSpan;
    .param p2, "originalString"    # Ljava/lang/String;
    .param p3, "index"    # I

    .line 2419
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2420
    return v1

    .line 2422
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2423
    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 2425
    .local v2, "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_3

    .line 2426
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v3

    .line 2427
    .local v3, "suggestions":[Ljava/lang/String;
    if-ltz p3, :cond_2

    array-length v4, v3

    if-lt p3, v4, :cond_1

    goto :goto_0

    .line 2428
    :cond_1
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v1

    .line 2429
    .local v1, "className":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2432
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2433
    const-string v5, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2434
    const-string v5, "before"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2435
    const-string v5, "after"

    aget-object v6, v3, p3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2436
    const-string v5, "hashcode"

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2437
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2439
    .local v5, "ident":J
    :try_start_1
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2441
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2442
    nop

    .line 2443
    const/4 v7, 0x1

    monitor-exit v0

    return v7

    .line 2441
    :catchall_0
    move-exception v7

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 2427
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "ident":J
    :cond_2
    :goto_0
    monitor-exit v0

    return v1

    .line 2445
    .end local v2    # "targetImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "suggestions":[Ljava/lang/String;
    :cond_3
    monitor-exit v0

    .line 2446
    return v1

    .line 2445
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public notifyUserAction(I)V
    .locals 4
    .param p1, "sequenceNumber"    # I

    .line 3311
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3312
    :try_start_0
    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    if-eq v1, p1, :cond_0

    .line 3318
    monitor-exit v0

    return-void

    .line 3320
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 3321
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v1, :cond_1

    .line 3322
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3324
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    monitor-exit v0

    .line 3325
    return-void

    .line 3324
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onActionLocaleChanged()V
    .locals 4

    .line 976
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 977
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 978
    .local v1, "possibleNewLocale":Landroid/os/LocaleList;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 979
    monitor-exit v0

    return-void

    .line 981
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 983
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 984
    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 985
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 986
    .end local v1    # "possibleNewLocale":Landroid/os/LocaleList;
    monitor-exit v0

    .line 987
    return-void

    .line 986
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2045
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2046
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2047
    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2048
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 2049
    const-string v1, "InputMethodManagerService"

    const-string v2, "Service connected without a token!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    .line 2051
    monitor-exit v0

    return-void

    .line 2054
    :cond_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x410

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2056
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_1

    .line 2057
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2058
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2061
    :cond_1
    monitor-exit v0

    .line 2062
    return-void

    .line 2061
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2183
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2186
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2187
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2188
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2191
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    .line 2192
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 2193
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 2194
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2196
    :cond_0
    monitor-exit v0

    .line 2197
    return-void

    .line 2196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .locals 6
    .param p1, "method"    # Lcom/android/internal/view/IInputMethod;
    .param p2, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .line 2066
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2067
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2068
    invoke-interface {v1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 2069
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_1

    .line 2070
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2071
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    new-instance v2, Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/android/server/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    iput-object v2, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2073
    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    .line 2075
    .local v1, "res":Lcom/android/internal/view/InputBindResult;
    iget-object v2, v1, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v2, :cond_0

    .line 2076
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0xbc2

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2079
    :cond_0
    monitor-exit v0

    return-void

    .line 2082
    .end local v1    # "res":Lcom/android/internal/view/InputBindResult;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2085
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    .line 2086
    return-void

    .line 2082
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4800
    new-instance v0, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;-><init>(Lcom/android/server/InputMethodManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/InputMethodManagerService$ShellCommandImpl;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4802
    return-void
.end method

.method onSwitchUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 1342
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1343
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V

    .line 1344
    monitor-exit v0

    .line 1345
    return-void

    .line 1344
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1502
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1503
    :catch_0
    move-exception v0

    .line 1506
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 1507
    const-string v1, "InputMethodManagerService"

    const-string v2, "Input Method Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1509
    :cond_0
    throw v0
.end method

.method onUnlockUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1324
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1325
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    .line 1329
    .local v1, "currentUserId":I
    if-eq p1, v1, :cond_0

    .line 1330
    monitor-exit v0

    return-void

    .line 1332
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1333
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v2, :cond_1

    .line 1335
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1336
    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 1338
    .end local v1    # "currentUserId":I
    :cond_1
    monitor-exit v0

    .line 1339
    return-void

    .line 1338
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .locals 5
    .param p1, "spans"    # [Landroid/text/style/SuggestionSpan;

    .line 2403
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2404
    return-void

    .line 2406
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2407
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 2408
    .local v1, "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 2409
    aget-object v3, p1, v2

    .line 2410
    .local v3, "ss":Landroid/text/style/SuggestionSpan;
    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2411
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v4, v3, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2408
    .end local v3    # "ss":Landroid/text/style/SuggestionSpan;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2414
    .end local v1    # "currentImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "i":I
    :cond_2
    monitor-exit v0

    .line 2415
    return-void

    .line 2414
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 7
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 1728
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1729
    return-void

    .line 1731
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1732
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1733
    .local v1, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-eqz v1, :cond_3

    .line 1734
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 1735
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/4 v3, 0x0

    if-ne v2, v1, :cond_2

    .line 1736
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-eqz v2, :cond_1

    .line 1737
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    .line 1738
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v2, :cond_1

    .line 1739
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x3e8

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1743
    :cond_1
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1745
    :cond_2
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-ne v2, v1, :cond_3

    .line 1746
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1749
    .end local v1    # "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    :cond_3
    monitor-exit v0

    .line 1750
    return-void

    .line 1749
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportFullscreenMode(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fullscreen"    # Z

    .line 4678
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4679
    return-void

    .line 4681
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4682
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4683
    monitor-exit v0

    return-void

    .line 4685
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v1, :cond_2

    .line 4686
    iput-boolean p2, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    .line 4687
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbe5

    .line 4688
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4687
    invoke-virtual {v2, v3, p2, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 4690
    :cond_2
    monitor-exit v0

    .line 4691
    return-void

    .line 4690
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .locals 9
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2124
    iget-boolean v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    if-nez v0, :cond_0

    .line 2126
    invoke-virtual {p1}, Lcom/android/server/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 2127
    .local v0, "channels":[Landroid/view/InputChannel;
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2128
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x41a

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    aget-object v1, v0, v1

    new-instance v6, Lcom/android/server/InputMethodManagerService$MethodCallback;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-direct {v6, p0, v7, v8}, Lcom/android/server/InputMethodManagerService$MethodCallback;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2132
    .end local v0    # "channels":[Landroid/view/InputChannel;
    :cond_0
    return-void
.end method

.method resetCurrentMethodAndClient(I)V
    .locals 1
    .param p1, "unbindClientReason"    # I

    .line 2118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2119
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    .line 2120
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2121
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 8
    .param p1, "imiId"    # Ljava/lang/String;
    .param p2, "subtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .line 3250
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3251
    return-void

    .line 3255
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_1

    goto :goto_1

    .line 3256
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3257
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_2

    .line 3258
    monitor-exit v0

    return-void

    .line 3260
    :cond_2
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 3261
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-nez v1, :cond_3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 3264
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3268
    .local v2, "packageInfos":[Ljava/lang/String;
    nop

    .line 3267
    nop

    .line 3269
    if-eqz v2, :cond_5

    .line 3270
    :try_start_2
    array-length v3, v2

    .line 3271
    .local v3, "packageNum":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_5

    .line 3272
    aget-object v6, v2, v5

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3273
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    invoke-virtual {v6, v1, p2}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3274
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3276
    .local v6, "ident":J
    :try_start_3
    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3278
    :try_start_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3279
    nop

    .line 3280
    monitor-exit v0

    return-void

    .line 3278
    :catchall_0
    move-exception v4

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3271
    .end local v6    # "ident":J
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3284
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "packageInfos":[Ljava/lang/String;
    .end local v3    # "packageNum":I
    .end local v5    # "i":I
    :cond_5
    monitor-exit v0

    .line 3285
    return-void

    .line 3265
    .restart local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :catch_0
    move-exception v2

    .line 3266
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "InputMethodManagerService"

    const-string v4, "Failed to get package infos"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    monitor-exit v0

    return-void

    .line 3284
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 3255
    :cond_6
    :goto_1
    return-void
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 5
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 4341
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4342
    return v1

    .line 4344
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4345
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 4346
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 4347
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v3

    .line 4348
    .local v3, "subtypeId":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 4349
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 4350
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 4354
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v3    # "subtypeId":I
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 4353
    :cond_1
    monitor-exit v0

    return v1

    .line 4354
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .locals 3
    .param p1, "session"    # Lcom/android/server/InputMethodManagerService$SessionState;

    .line 3400
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eq v0, p1, :cond_1

    .line 3401
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_0

    .line 3404
    :try_start_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3406
    goto :goto_0

    .line 3405
    :catch_0
    move-exception v0

    .line 3408
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 3409
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_1

    .line 3412
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3414
    goto :goto_1

    .line 3413
    :catch_1
    move-exception v0

    .line 3417
    :cond_1
    :goto_1
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;Landroid/os/IBinder;II)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "startInputToken"    # Landroid/os/IBinder;
    .param p3, "vis"    # I
    .param p4, "backDisposition"    # I

    .line 2307
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2308
    return-void

    .line 2312
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2313
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mStartInputMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputMethodManagerService$StartInputInfo;

    .line 2314
    .local v1, "info":Lcom/android/server/InputMethodManagerService$StartInputInfo;
    iput p3, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    .line 2315
    iput p4, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    .line 2316
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2317
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2320
    const/4 v0, 0x0

    const/4 v2, 0x1

    packed-switch p4, :pswitch_data_0

    .line 2329
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    .line 2322
    :pswitch_0
    const/4 v3, 0x1

    .line 2323
    .local v3, "dismissImeOnBackKeyPressed":Z
    goto :goto_0

    .line 2325
    .end local v3    # "dismissImeOnBackKeyPressed":Z
    :pswitch_1
    const/4 v3, 0x0

    .line 2326
    .restart local v3    # "dismissImeOnBackKeyPressed":Z
    goto :goto_0

    .line 2329
    .end local v3    # "dismissImeOnBackKeyPressed":Z
    :cond_1
    move v3, v0

    .line 2332
    .restart local v3    # "dismissImeOnBackKeyPressed":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    and-int/lit8 v5, p3, 0x2

    if-eqz v5, :cond_2

    .line 2334
    move v0, v2

    goto :goto_1

    .line 2332
    :cond_2
    nop

    .line 2334
    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 2332
    :goto_2
    invoke-virtual {v4, p1, v0, v3, v2}, Lcom/android/server/wm/WindowManagerInternal;->updateInputMethodWindowStatus(Landroid/os/IBinder;ZZLandroid/os/IBinder;)V

    .line 2335
    return-void

    .line 2317
    .end local v1    # "info":Lcom/android/server/InputMethodManagerService$StartInputInfo;
    .end local v3    # "dismissImeOnBackKeyPressed":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;

    .line 3076
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3077
    return-void

    .line 3079
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3080
    return-void
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 3084
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3085
    return-void

    .line 3087
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3088
    if-eqz p3, :cond_1

    .line 3089
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    .line 3090
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 3091
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    .line 3090
    invoke-static {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    .line 3089
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    goto :goto_0

    .line 3095
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3093
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 3095
    :goto_0
    monitor-exit v0

    .line 3096
    return-void

    .line 3095
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 4070
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4071
    .local v0, "imm":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_5

    .line 4075
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 4076
    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v1

    .line 4078
    .local v1, "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 4079
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 4080
    .local v5, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4083
    return v2

    .line 4085
    .end local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_0
    goto :goto_0

    .line 4086
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    .line 4088
    return v3

    .line 4090
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4091
    .local v4, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5, v4, v1, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4094
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v3

    .line 4095
    .local v3, "selId":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v5

    if-nez v5, :cond_3

    .line 4096
    const-string v5, "InputMethodManagerService"

    const-string v6, "Can\'t find new IME, unsetting the current input method."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4097
    const-string v5, ""

    invoke-direct {p0, v5}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 4100
    :cond_3
    return v2

    .line 4104
    .end local v3    # "selId":Ljava/lang/String;
    :cond_4
    return v3

    .line 4072
    .end local v1    # "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtypeId"    # I

    .line 2532
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2533
    .local v0, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_7

    .line 2538
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2539
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 2540
    .local v1, "subtypeCount":I
    if-gtz v1, :cond_0

    .line 2541
    return-void

    .line 2543
    :cond_0
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 2545
    .local v2, "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-ltz p2, :cond_1

    if-ge p2, v1, :cond_1

    .line 2546
    invoke-virtual {v0, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 2546
    .local v3, "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    goto :goto_0

    .line 2550
    .end local v3    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 2552
    .restart local v3    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :goto_0
    if-eqz v3, :cond_4

    if-nez v2, :cond_2

    goto :goto_2

    .line 2557
    :cond_2
    if-eq v3, v2, :cond_3

    .line 2558
    const/4 v4, 0x1

    invoke-direct {p0, v0, p2, v4}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2559
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v4, :cond_3

    .line 2561
    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2562
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v4, v3}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2565
    goto :goto_1

    .line 2563
    :catch_0
    move-exception v4

    .line 2564
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "InputMethodManagerService"

    const-string v6, "Failed to call changeInputMethodSubtype"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    return-void

    .line 2553
    :cond_4
    :goto_2
    const-string v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal subtype state: old subtype = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", new subtype = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    return-void

    .line 2572
    .end local v1    # "subtypeCount":I
    .end local v2    # "oldSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "newSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2576
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v0, p2, v3}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2580
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2582
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2583
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2584
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2585
    const-string/jumbo v4, "input_method_id"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2586
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2588
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2590
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2591
    nop

    .line 2592
    return-void

    .line 2590
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2534
    .end local v1    # "ident":J
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 3205
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3206
    return v1

    .line 3208
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3209
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3210
    monitor-exit v0

    return v1

    .line 3212
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 3213
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3212
    const/4 v5, 0x1

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v2

    .line 3215
    .local v2, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v2, :cond_2

    .line 3216
    monitor-exit v0

    return v1

    .line 3218
    :cond_2
    monitor-exit v0

    return v5

    .line 3219
    .end local v2    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 9
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 2664
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2665
    return v2

    .line 2668
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 2669
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2670
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    goto :goto_0

    .line 2671
    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_2

    .line 2672
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2675
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_3

    .line 2676
    return v2

    .line 2681
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mLongshotBlockShowing:Z

    if-eqz v1, :cond_4

    .line 2682
    const-string v0, "InputMethodManagerService"

    const-string v1, "Longshot Blocking"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    return v2

    .line 2687
    :cond_4
    const/4 v1, 0x0

    .line 2688
    .local v1, "res":Z
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v3, :cond_6

    .line 2690
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x3fc

    .line 2691
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getImeShowFlags()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2690
    invoke-virtual {v3, v4, v5, v6, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2693
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 2694
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-nez v2, :cond_5

    .line 2695
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    const v4, 0x2c000001

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2697
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 2699
    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    .line 2700
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v3, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v7, 0xbb8

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-ltz v3, :cond_7

    .line 2706
    const/16 v3, 0x7d00

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 2707
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v4, v2

    .line 2706
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2708
    const-string v0, "InputMethodManagerService"

    const-string v2, "Force disconnect/connect to the IME in showCurrentInputLocked()"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2710
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v2, 0x40800005    # 4.0000024f

    invoke-direct {p0, v0, p0, v2}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2718
    :cond_7
    :goto_1
    return v1
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "inputMethodId"    # Ljava/lang/String;

    .line 3101
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3102
    return-void

    .line 3104
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3105
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3107
    monitor-exit v0

    .line 3108
    return-void

    .line 3107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .locals 4
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "auxiliarySubtypeMode"    # I

    .line 3048
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3049
    return-void

    .line 3051
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3052
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3053
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3054
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3053
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    monitor-exit v0

    return-void

    .line 3060
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3062
    monitor-exit v0

    .line 3063
    return-void

    .line 3062
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showMySoftInput(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 3383
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3384
    return-void

    .line 3386
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3387
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3388
    monitor-exit v0

    return-void

    .line 3390
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3392
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, p2, v3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3394
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3395
    nop

    .line 3396
    .end local v1    # "ident":J
    monitor-exit v0

    .line 3397
    return-void

    .line 3394
    .restart local v1    # "ident":J
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3396
    .end local v1    # "ident":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .locals 8
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2597
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2598
    return v1

    .line 2600
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2601
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2603
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2604
    :try_start_1
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    .line 2605
    invoke-interface {v5}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v5, v6, :cond_3

    .line 2610
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v5, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2611
    const-string v5, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring showSoftInput of uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2612
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2623
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2612
    return v1

    .line 2616
    :cond_2
    nop

    .line 2620
    :cond_3
    :try_start_4
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v1

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2623
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2620
    return v1

    .line 2614
    :catch_0
    move-exception v5

    .line 2615
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2623
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2615
    return v1

    .line 2621
    .end local v5    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2623
    :catchall_1
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    .locals 9

    .line 1963
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1964
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NO_IME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1967
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_1

    .line 1970
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    .line 1976
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 1977
    .local v0, "info":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_3

    .line 1981
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    .line 1983
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.view.InputMethod"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 1984
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1985
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.client_label"

    const v4, 0x10402b8

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1987
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.client_intent"

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1989
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v3, 0x40800005    # 4.0000024f

    invoke-direct {p0, v2, p0, v3}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodServiceLocked(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1990
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    .line 1991
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    .line 1992
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 1993
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 1996
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/16 v3, 0x7db

    invoke-interface {v1, v2, v3, v6}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1998
    goto :goto_0

    .line 1997
    :catch_0
    move-exception v1

    .line 1999
    :goto_0
    new-instance v1, Lcom/android/internal/view/InputBindResult;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v8, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v1

    .line 2004
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 2005
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure connecting to input method service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    sget-object v1, Lcom/android/internal/view/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 1978
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method startInputLocked(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .locals 8
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p4, "missingMethods"    # I
    .param p5, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p6, "controlFlags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .line 1844
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1845
    sget-object v0, Lcom/android/internal/view/InputBindResult;->NO_IME:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1849
    .local v0, "cs":Lcom/android/server/InputMethodManagerService$ClientState;
    if-eqz v0, :cond_3

    .line 1854
    if-nez p5, :cond_1

    .line 1855
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring startInput with null EditorInfo. uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    sget-object v1, Lcom/android/internal/view/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 1861
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1871
    sget-object v1, Lcom/android/internal/view/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/view/InputBindResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1874
    :cond_2
    goto :goto_0

    .line 1873
    :catch_0
    move-exception v1

    .line 1876
    :goto_0
    move-object v1, p0

    move-object v2, v0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v1

    return-object v1

    .line 1850
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1851
    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;II)Lcom/android/internal/view/InputBindResult;
    .locals 7
    .param p1, "startInputReason"    # I
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p3, "windowToken"    # Landroid/os/IBinder;
    .param p4, "controlFlags"    # I
    .param p5, "softInputMode"    # I
    .param p6, "windowFlags"    # I
    .param p7, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p8, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p9, "missingMethods"    # I
    .param p10, "unverifiedTargetSdkVersion"    # I

    .line 2808
    if-eqz p3, :cond_0

    .line 2809
    invoke-direct/range {p0 .. p10}, Lcom/android/server/InputMethodManagerService;->windowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .local v0, "result":Lcom/android/internal/view/InputBindResult;
    goto :goto_0

    .line 2813
    .end local v0    # "result":Lcom/android/internal/view/InputBindResult;
    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p8

    move/from16 v4, p9

    move-object v5, p7

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/InputMethodManagerService;->startInput(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .line 2816
    .restart local v0    # "result":Lcom/android/internal/view/InputBindResult;
    :goto_0
    if-nez v0, :cond_1

    .line 2818
    const-string v1, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputBindResult is @NonNull. startInputReason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2819
    invoke-static {p1}, Lcom/android/internal/view/InputMethodClient;->getStartInputReason(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " windowFlags=#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2820
    invoke-static {p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " editorInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2818
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    sget-object v1, Lcom/android/internal/view/InputBindResult;->NULL:Lcom/android/internal/view/InputBindResult;

    return-object v1

    .line 2824
    :cond_1
    move-object v3, p7

    return-object v0
.end method

.method startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;
    .locals 17
    .param p1, "cs"    # Lcom/android/server/InputMethodManagerService$ClientState;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "missingMethods"    # I
    .param p4, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p5, "controlFlags"    # I
    .param p6, "startInputReason"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 1887
    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1888
    sget-object v3, Lcom/android/internal/view/InputBindResult;->NO_IME:Lcom/android/internal/view/InputBindResult;

    return-object v3

    .line 1891
    :cond_0
    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v4, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    iget-object v5, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1893
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    sget-object v3, Lcom/android/internal/view/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/view/InputBindResult;

    return-object v3

    .line 1898
    :cond_1
    iget-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/4 v4, 0x1

    if-eq v3, v1, :cond_2

    .line 1900
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    .line 1903
    invoke-virtual {v0, v4}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 1908
    iget-boolean v3, v0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v3, :cond_2

    .line 1909
    iget-object v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v5, v0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v6, 0xbcc

    .line 1910
    iget-boolean v7, v0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    .line 1909
    invoke-virtual {v5, v6, v7, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1915
    :cond_2
    iget v3, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 1916
    iget v3, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    if-gtz v3, :cond_3

    iput v4, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 1917
    :cond_3
    iput-object v1, v0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1918
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    .line 1919
    move/from16 v5, p3

    iput v5, v0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    .line 1920
    iput-object v2, v0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1923
    iget-object v6, v0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    if-eqz v6, :cond_8

    iget-object v6, v0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1924
    iget-object v6, v1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    .line 1927
    move/from16 v6, p5

    and-int/lit16 v8, v6, 0x100

    if-eqz v8, :cond_4

    move v7, v4

    nop

    :cond_4
    move/from16 v8, p6

    invoke-virtual {v0, v8, v7}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v4

    return-object v4

    .line 1930
    :cond_5
    move/from16 v6, p5

    move/from16 v8, p6

    iget-boolean v9, v0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v9, :cond_9

    .line 1931
    iget-object v9, v0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v9, :cond_6

    .line 1934
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 1935
    new-instance v4, Lcom/android/internal/view/InputBindResult;

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v15, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v7, v0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v10, v4

    move/from16 v16, v7

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v4

    .line 1939
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-wide v11, v0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v13, 0xbb8

    add-long/2addr v11, v13

    cmp-long v9, v9, v11

    if-gez v9, :cond_7

    .line 1948
    new-instance v4, Lcom/android/internal/view/InputBindResult;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v15, v0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v7, v0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v10, v4

    move/from16 v16, v7

    invoke-direct/range {v10 .. v16}, Lcom/android/internal/view/InputBindResult;-><init>(ILcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v4

    .line 1953
    :cond_7
    const/16 v9, 0x7d00

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v11, v10, v7

    .line 1954
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-wide v13, v0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v4

    const/4 v4, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v4

    .line 1953
    invoke-static {v9, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 1959
    :cond_8
    move/from16 v6, p5

    move/from16 v8, p6

    :cond_9
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;

    move-result-object v4

    return-object v4
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyCurrentIme"    # Z

    .line 3184
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3185
    return v1

    .line 3187
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3188
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3189
    monitor-exit v0

    return v1

    .line 3191
    :cond_1
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 3192
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3191
    const/4 v5, 0x1

    invoke-virtual {v2, p2, v3, v4, v5}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object v2

    .line 3194
    .local v2, "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-nez v2, :cond_2

    .line 3195
    monitor-exit v0

    return v1

    .line 3197
    :cond_2
    iget-object v1, v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3199
    monitor-exit v0

    return v5

    .line 3200
    .end local v2    # "nextSubtype":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public switchToPreviousInputMethod(Landroid/os/IBinder;)Z
    .locals 16
    .param p1, "token"    # Landroid/os/IBinder;

    move-object/from16 v1, p0

    .line 3112
    invoke-direct/range {p0 .. p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3113
    return v2

    .line 3115
    :cond_0
    iget-object v3, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3116
    :try_start_0
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v0

    .line 3118
    .local v0, "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 3119
    iget-object v4, v1, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 3119
    .local v4, "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    goto :goto_0

    .line 3121
    .end local v4    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    const/4 v4, 0x0

    .line 3123
    .restart local v4    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    const/4 v5, 0x0

    .line 3124
    .local v5, "targetLastImiId":Ljava/lang/String;
    const/4 v6, -0x1

    .line 3125
    .local v6, "subtypeId":I
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 3126
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 3127
    .local v7, "imiIdIsSame":Z
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3128
    .local v8, "lastSubtypeHash":I
    iget-object v9, v1, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v9, :cond_2

    const/4 v9, -0x1

    goto :goto_1

    .line 3129
    :cond_2
    iget-object v9, v1, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v9

    .line 3132
    .local v9, "currentSubtypeHash":I
    :goto_1
    if-eqz v7, :cond_3

    if-eq v8, v9, :cond_4

    .line 3133
    :cond_3
    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object v5, v10

    .line 3134
    invoke-static {v4, v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v10

    move v6, v10

    .line 3138
    .end local v7    # "imiIdIsSame":Z
    .end local v8    # "lastSubtypeHash":I
    .end local v9    # "currentSubtypeHash":I
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    iget-object v7, v1, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3139
    invoke-static {v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 3143
    iget-object v7, v1, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v7

    .line 3144
    .local v7, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz v7, :cond_7

    .line 3145
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    .line 3146
    .local v9, "N":I
    iget-object v10, v1, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v10, :cond_5

    .line 3147
    iget-object v10, v1, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v10, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 3148
    :cond_5
    iget-object v10, v1, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    .line 3149
    .local v10, "locale":Ljava/lang/String;
    :goto_2
    move v11, v6

    move-object v6, v5

    move v5, v2

    .line 3149
    .local v5, "i":I
    .local v6, "targetLastImiId":Ljava/lang/String;
    .local v11, "subtypeId":I
    :goto_3
    if-ge v5, v9, :cond_8

    .line 3150
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodInfo;

    .line 3151
    .local v12, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v13

    if-lez v13, :cond_6

    invoke-static {v12}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3152
    iget-object v13, v1, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 3154
    invoke-static {v12}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v14

    const-string/jumbo v15, "keyboard"

    .line 3153
    invoke-static {v13, v14, v15, v10, v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v13

    .line 3156
    .local v13, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v13, :cond_6

    .line 3157
    invoke-virtual {v12}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    move-object v6, v14

    .line 3158
    nop

    .line 3159
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v14

    .line 3158
    invoke-static {v12, v14}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v14

    move v11, v14

    .line 3160
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 3161
    goto :goto_4

    .line 3149
    .end local v12    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v13    # "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 3169
    .end local v7    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v9    # "N":I
    .end local v10    # "locale":Ljava/lang/String;
    .end local v11    # "subtypeId":I
    .local v5, "targetLastImiId":Ljava/lang/String;
    .local v6, "subtypeId":I
    :cond_7
    move v11, v6

    move-object v6, v5

    .line 3169
    .end local v5    # "targetLastImiId":Ljava/lang/String;
    .local v6, "targetLastImiId":Ljava/lang/String;
    .restart local v11    # "subtypeId":I
    :cond_8
    :goto_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_9

    .line 3174
    move-object/from16 v5, p1

    :try_start_1
    invoke-direct {v1, v5, v6, v11}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 3175
    monitor-exit v3

    return v8

    .line 3177
    :cond_9
    move-object/from16 v5, p1

    monitor-exit v3

    return v2

    .line 3179
    .end local v0    # "lastIme":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "lastImi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "targetLastImiId":Ljava/lang/String;
    .end local v11    # "subtypeId":I
    :catchall_0
    move-exception v0

    move-object/from16 v5, p1

    :goto_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 8
    .param p1, "statusBar"    # Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1514
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1518
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v1, :cond_3

    .line 1519
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    .line 1520
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1521
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 1522
    .local v2, "currentUserId":I
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1523
    invoke-virtual {v4, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    .line 1522
    xor-int/2addr v4, v1

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1524
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/KeyguardManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1525
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1526
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1527
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1528
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1530
    :cond_0
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 1531
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    const v5, 0x11200f8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1533
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-eqz v3, :cond_1

    .line 1534
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    .line 1538
    :cond_1
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1539
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v3, v2}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1541
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1542
    .local v3, "broadcastFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1543
    const-string v5, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1544
    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1545
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1546
    const-string v5, "com.android.server.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1547
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;

    invoke-direct {v6, p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1549
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    .line 1550
    .local v5, "defaultImiId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v1

    .line 1551
    .local v6, "imeSelectedOnBoot":Z
    if-nez v6, :cond_2

    move v4, v1

    nop

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1552
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1553
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1554
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1555
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1556
    invoke-virtual {v7}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v7

    .line 1554
    invoke-static {v1, v4, v2, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1562
    goto :goto_0

    .line 1560
    :catch_0
    move-exception v1

    .line 1561
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    const-string v4, "InputMethodManagerService"

    const-string v7, "Unexpected exception"

    invoke-static {v4, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1564
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "currentUserId":I
    .end local v3    # "broadcastFilter":Landroid/content/IntentFilter;
    .end local v5    # "defaultImiId":Ljava/lang/String;
    .end local v6    # "imeSelectedOnBoot":Z
    :cond_3
    :goto_0
    monitor-exit v0

    .line 1565
    return-void

    .line 1564
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method unbindCurrentClientLocked(I)V
    .locals 6
    .param p1, "unbindClientReason"    # I

    .line 1763
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_1

    .line 1766
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1767
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    .line 1768
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x3e8

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1774
    :cond_0
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbcc

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {v2, v3, v1, v1, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1776
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0xbb8

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v5, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v2, v3, v4, p1, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1778
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iput-boolean v1, v0, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 1779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 1783
    :cond_1
    return-void
.end method

.method unbindCurrentMethodLocked(Z)V
    .locals 4
    .param p1, "savePosition"    # Z

    .line 2089
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2091
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 2094
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_1

    .line 2095
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2096
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    .line 2099
    :cond_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2102
    :try_start_0
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 2104
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->saveLastInputMethodWindowForTransition()V

    .line 2106
    :cond_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-interface {v0, v3, v1}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2108
    goto :goto_0

    .line 2107
    :catch_0
    move-exception v0

    .line 2109
    :goto_0
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2112
    :cond_3
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2113
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2114
    return-void
.end method

.method updateCurrentProfileIds()V
    .locals 3

    .line 1494
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1495
    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    .line 1494
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    .line 1496
    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .locals 0
    .param p1, "enabledMayChange"    # Z

    .line 2450
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 2451
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    .line 2452
    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .locals 12
    .param p1, "enabledMayChange"    # Z

    .line 2455
    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 2456
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 2457
    .local v1, "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2460
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 2462
    .local v3, "imm":Landroid/view/inputmethod/InputMethodInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x8000

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2464
    invoke-virtual {v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    .line 2462
    invoke-interface {v4, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 2465
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_0

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v5, v0, :cond_0

    .line 2471
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2473
    invoke-virtual {v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v10

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2474
    invoke-virtual {v5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v11

    .line 2471
    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2477
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_1

    .line 2476
    :catch_0
    move-exception v4

    .line 2457
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2484
    .end local v1    # "enabled":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v2    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 2486
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2487
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 2489
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2491
    :try_start_1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2495
    goto :goto_2

    .line 2492
    :catch_1
    move-exception v0

    .line 2493
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown input method from prefs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2494
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 2496
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_3

    .line 2499
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 2505
    :goto_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 2507
    return-void
.end method

.method public updateKeyboardFromSettingsLocked()V
    .locals 3

    .line 2510
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    .line 2511
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 2513
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2514
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    const v1, 0x1020286

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 2521
    .local v0, "hardKeySwitch":Landroid/widget/Switch;
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/InputMethodManagerService$4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/InputMethodManagerService$4;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/widget/Switch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2529
    .end local v0    # "hardKeySwitch":Landroid/widget/Switch;
    :cond_0
    return-void
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .line 2201
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2202
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2203
    monitor-exit v0

    return-void

    .line 2205
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2207
    .local v1, "ident":J
    const/4 v3, 0x0

    if-nez p3, :cond_1

    .line 2209
    :try_start_1
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v4, :cond_3

    .line 2210
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2232
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 2212
    :cond_1
    if-eqz p2, :cond_3

    .line 2214
    const/4 v4, 0x0

    move-object v5, v4

    .line 2217
    .local v5, "contentDescription":Ljava/lang/CharSequence;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2218
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 2220
    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    .line 2219
    invoke-interface {v7, p2, v3, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 2218
    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v3

    .line 2223
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 2221
    :catch_0
    move-exception v3

    .line 2224
    :goto_0
    :try_start_3
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v3, :cond_3

    .line 2225
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v10, 0x0

    .line 2226
    if-eqz v5, :cond_2

    .line 2227
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    .line 2225
    :cond_2
    move-object v11, v4

    move-object v8, p2

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2228
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v5    # "contentDescription":Ljava/lang/CharSequence;
    goto :goto_2

    .line 2232
    :goto_1
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_3
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2233
    nop

    .line 2234
    .end local v1    # "ident":J
    monitor-exit v0

    .line 2235
    return-void

    .line 2234
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
