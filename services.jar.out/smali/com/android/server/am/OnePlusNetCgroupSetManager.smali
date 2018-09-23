.class public Lcom/android/server/am/OnePlusNetCgroupSetManager;
.super Ljava/lang/Object;
.source "OnePlusNetCgroupSetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;,
        Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;,
        Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static DEBUG_OEMLOG:Z = false

.field private static final GAME_MODE_NETWORK_ACC:Ljava/lang/String; = "game_mode_network_acceleration"

.field private static final MSG_GET_LAUNCHERS:I = 0x6

.field private static final MSG_SET_NETCGROUP_BG:I = 0x0

.field private static final MSG_SET_NETCGROUP_BG_UIDS:I = 0x3

.field private static final MSG_SET_NETCGROUP_CLEAR:I = 0x2

.field private static final MSG_SET_NETCGROUP_FG:I = 0x1

.field private static final MSG_SET_NETCGROUP_TOUCH_WIN:I = 0x4

.field private static final MSG_SET_NETCGROUP_WITHOUT_CODE:I = 0x5

.field public static final TAG:Ljava/lang/String; = "OnePlusNetCgroupSetManager"

.field private static final URI_GAME_NETWORK_ACC:Landroid/net/Uri;

.field private static final URI_GAME_STATUS:Landroid/net/Uri;

.field private static final VALUE_BG_FLAG:I = 0x1

.field private static final VALUE_DF_FLAG:I = 0x0

.field private static final VALUE_FG_FLAG:I = 0x2

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final VALUE_TOUCH_WIN_CHANGE_FLAG:I = 0x3

.field private static final VALUE_TOUCH_WIN_SWITCHOFF_FLAG:I = 0x1

.field private static final VALUE_TOUCH_WIN_SWITCHON_FLAG:I = 0x2

.field public static final VERSION:I = 0x7848b7f1

.field public static mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private static mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

.field public static pm:Landroid/content/pm/PackageManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentFrontUid:I

.field mFrontActivityUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mFrontWindowTouchUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGameModeNetWorkAccObserver:Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;

.field private mGameModeStatus:Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;

.field private mGameStatus:Z

.field mLastFgUid:I

.field mLastFrontWindowTouchUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLastSetFrontUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLaunchers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mModeStatus:Z

.field private mNetCgroupSetHandler:Landroid/os/Handler;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field final mRulesLock:Ljava/lang/Object;

.field final mTouchWinLock:Ljava/lang/Object;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiBoost:I

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    const-string v0, "game_mode_network_acceleration"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->URI_GAME_NETWORK_ACC:Landroid/net/Uri;

    const-string v0, "game_mode_status"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->URI_GAME_STATUS:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->pm:Landroid/content/pm/PackageManager;

    sput-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mWifiBoost:I

    iput v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameStatus:Z

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mModeStatus:Z

    iput v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mRulesLock:Ljava/lang/Object;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mTouchWinLock:Ljava/lang/Object;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->resolver:Landroid/content/ContentResolver;

    new-instance v3, Lcom/android/server/am/OnePlusNetCgroupSetManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager$1;-><init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;-><init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v3, Lcom/android/server/am/OnePlusNetCgroupSetManager$3;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager$3;-><init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidObserver:Landroid/app/IUidObserver;

    const-string v3, "OnePlusNetCgroupSetManager"

    const-string v4, "OnePlusNetCgroupSetManager VERSION = v2018031601"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "persist.sys.netgroupset.debug"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    const-string/jumbo v2, "persist.sys.assert.panic"

    sget-boolean v3, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    sput-object p1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->resolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->pm:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "NetCgroupSetThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;-><init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    sget-object v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    sget-object v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6, v1, v0}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getLaunchers()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameStatus:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/am/OnePlusNetCgroupSetManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameStatus:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getGameModeStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Lcom/android/server/am/ActivityRecord;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getCurrentFrontUid()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusNetCgroupSetManager;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->toSetNetCgroup(ZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusNetCgroupSetManager;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusNetCgroupSetManager;Ljava/util/HashSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUidsTouchWin(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusNetCgroupSetManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getGameModeNetWorkAcc()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mWifiBoost:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mWifiBoost:I

    return p1
.end method

.method private add3rdAppProcessState(II)V
    .locals 8

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] add3rdAppProcessState uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->isSetNetCgroup()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v5, v4, v6}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_4

    const/4 v6, 0x5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    goto :goto_1

    :cond_5
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_6
    :goto_2
    return-void
.end method

.method static final addPidToCgroupTasksWithJudge(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->add3rdAppProcessState(II)V

    :cond_0
    return-void
.end method

.method private checkToSetCgroup(II)Z
    .locals 4

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] checkToSetCgroup uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontActivityUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontWindowTouchUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method private getCurrentFrontUid()Lcom/android/server/am/ActivityRecord;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "OnePlusNetCgroupSetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[netCgroupSet] pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |processName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :cond_1
    nop

    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "OnePlusNetCgroupSetManager"

    const-string v3, "[netCgroupSet] getCurrentFrontUid error, return -1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method private getGameModeNetWorkAcc()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->resolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_network_acceleration"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getGameModeStatus()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->resolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    return-object v0
.end method

.method private getLaunchers()V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    sget-boolean v3, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "OnePlusNetCgroupSetManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[netCgroupSet] mLaunchers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleSetNetCgroup(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    return-void
.end method

.method private handleSetNetCgroup(III)V
    .locals 9

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] handleSetNetCgroup UserHandle.isApp(uid):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-ne p2, v1, :cond_3

    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] handleSetNetCgroup uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is showing touchwindow, dont set VALUE_BG_FLAG, return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v0, -0x1

    if-ne p2, v1, :cond_5

    const/4 v2, 0x4

    if-ne p3, v2, :cond_5

    iget v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    if-eq v2, v0, :cond_5

    iget v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    if-ne p1, v2, :cond_5

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] handleSetNetCgroup uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is front activity, dont set VALUE_BG_FLAG, return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mTouchWinLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->checkToSetCgroup(II)Z

    move-result v3

    if-nez v3, :cond_6

    monitor-exit v2

    return-void

    :cond_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v2, v4

    const/4 v4, 0x2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ltz v5, :cond_b

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    sget-boolean v6, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v6, :cond_7

    sget-boolean v6, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v6, :cond_8

    :cond_7
    const-string v6, "OnePlusNetCgroupSetManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[netCgroupSet] handleSetNetCgroup uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " |pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " |flag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, p2}, Landroid/os/Process;->setProcessNetGroup(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_9
    if-ne p2, v4, :cond_a

    if-ne p3, v1, :cond_a

    iput p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    goto :goto_1

    :cond_a
    if-ne p2, v1, :cond_b

    if-ne p3, v4, :cond_b

    iput v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    :cond_b
    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mTouchWinLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-ne p2, v4, :cond_c

    :try_start_5
    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_c
    if-ne p2, v1, :cond_d

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_d
    :goto_2
    const/4 v1, 0x5

    if-eq p3, v1, :cond_e

    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->toSetFrontUids()V

    :cond_e
    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->isFrontActivityUidsEmpty()V

    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_f
    :goto_4
    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "OnePlusNetCgroupSetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[netCgroupSet] handleSetNetCgroup fail e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method private handleSetNetCgroupUids(Ljava/util/HashSet;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "OnePlusNetCgroupSetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[netCgroupSet] handleSetNetCgroupUids uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " |flag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleSetNetCgroupUidsTouchWin(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mTouchWinLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OnePlusNetCgroupSetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[netCgroupSet] handleSetNetCgroupUidsTouchWin mLastFrontWindowTouchUids:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " |mFrontWindowTouchUids:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " |flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    const/4 v5, 0x4

    invoke-direct {p0, v4, v2, v5}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isFrontActivityUidsEmpty()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] FrontActivityUids is Empty, mCurrentFrontUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    iget v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    :cond_1
    return-void
.end method

.method private sendMessageSetNetCgroup(III)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, p1, p3, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private toSetFrontUids()V
    .locals 8

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] toSetFrontUids mLastSetFrontUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontActivityUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontWindowTouchUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private toSetNetCgroup(ZI)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] toSetNetCgroup uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |foregroundActivities:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontActivityUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->isSetNetCgroup()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    if-eq v2, p2, :cond_2

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v1, v0, v4}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static updateTouchWindowUidChange(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] updateTouchWindowUidChange change ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontWindowTouchUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mTouchWinLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    sget-object v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    iput-object v2, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    sget-object v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    sget-object v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->isSetNetCgroup()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method isSetNetCgroup()Z
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] isSetNetCgroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mModeStatus:Z

    return v0
.end method

.method public opStatusChanged(Z)V
    .locals 11

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] opStatusChanged mFrontActivityUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mLastFgUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |OldmModeStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mModeStatus:Z

    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v3, v1, v7}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move v8, v2

    :goto_1
    iget-object v9, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    iget-object v9, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v9, :cond_1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v8, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-static {v8, v9, v2, v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7

    iget v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    :cond_7
    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    :goto_2
    return-void
.end method
