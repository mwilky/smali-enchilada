.class public Lcom/android/server/am/OemSceneWiFiBoostController;
.super Ljava/lang/Object;
.source "OemSceneWiFiBoostController.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;,
        Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;,
        Lcom/android/server/am/OemSceneWiFiBoostController$WlanReceiver;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final GAME_MODE_NETWORK_ACC:Ljava/lang/String; = "game_mode_network_acceleration"

.field private static final GAME_NETWORK_BOOST_KEY:Ljava/lang/String; = "persist.sys.gamemode.wifiboost"

.field private static final HANDLE_DELAY_TIME:I = 0x1388

.field private static final MSG_GAME_NETWORK_ACC_CHANGED:I = 0x3

.field private static final MSG_USER_SWITCHED:I = 0x4

.field private static final MSG_WIFI_STATE_DISABLED:I = 0x1

.field private static final MSG_WIFI_STATE_ENABLED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OemSceneWiFiBoostController"

.field private static final URI_GAME_NETWORK_ACC:Landroid/net/Uri;

.field private static final VALUE_NETWORK_BOOST_DEFAULT:Ljava/lang/String; = "-1"

.field private static final VALUE_NETWORK_BOOST_INIT:Ljava/lang/String; = "1"

.field private static final VALUE_NETWORK_BOOST_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_NETWORK_BOOST_ON:Ljava/lang/String; = "2"

.field private static final VALUE_OFF_INT:I = 0x0

.field private static final VALUE_ON_INT:I = 0x1

.field private static mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

.field private static mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurPropt:Ljava/lang/String;

.field private mGameModeNetWorkAccObserver:Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;

.field private mModeStatus:Z

.field private mModeStatusLock:Ljava/lang/Object;

.field public mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

.field private mOneTime:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mWiFiBoostHandler:Landroid/os/Handler;

.field private mWifiBoost:I

.field private mWifiBoost_new:I

.field private mWlanReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 52
    sput-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    .line 55
    const-string v0, "game_mode_network_acceleration"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->URI_GAME_NETWORK_ACC:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 6
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    .line 72
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    .line 73
    iput v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost_new:I

    .line 74
    iput-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWlanReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    const-string v0, "-1"

    iput-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCurPropt:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    .line 78
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatusLock:Ljava/lang/Object;

    .line 204
    new-instance v2, Lcom/android/server/am/OemSceneWiFiBoostController$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OemSceneWiFiBoostController$1;-><init>(Lcom/android/server/am/OemSceneWiFiBoostController;)V

    iput-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCallback:Ljava/lang/Runnable;

    .line 95
    const-string v2, "OemSceneWiFiBoostController"

    const-string v3, "OemSceneBatterySaverController init"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    .line 97
    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mResolver:Landroid/content/ContentResolver;

    .line 99
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "WiFiBoostThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, "mWiFiBoostThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v3, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;-><init>(Lcom/android/server/am/OemSceneWiFiBoostController;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    .line 103
    new-instance v3, Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;

    iget-object v4, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;-><init>(Lcom/android/server/am/OemSceneWiFiBoostController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mGameModeNetWorkAccObserver:Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;

    .line 104
    iget-object v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/am/OemSceneWiFiBoostController;->URI_GAME_NETWORK_ACC:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mGameModeNetWorkAccObserver:Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 106
    invoke-static {p1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusNetCgroupSetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 108
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->registerWlanReceiver()V

    .line 109
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->getOIMCService()Lcom/oneplus/server/OIMCService$LocalService;

    .line 110
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OemSceneWiFiBoostController;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Boolean;

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OemSceneWiFiBoostController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OemSceneWiFiBoostController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 46
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/OemSceneWiFiBoostController;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 46
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/OemSceneWiFiBoostController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/am/OemSceneWiFiBoostController;->validateNetWorkACCValue(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OemSceneWiFiBoostController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 46
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OemSceneWiFiBoostController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 46
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleWifiStateDisable()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/OemSceneWiFiBoostController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 46
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleWifiStateEnable()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/OemSceneWiFiBoostController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 46
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleGameNetWorkAccChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/OemSceneWiFiBoostController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;
    .param p1, "x1"    # I

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleUserSwitched(I)V

    return-void
.end method

.method private clearHandler()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    :cond_0
    return-void
.end method

.method private getCurrentUserId()I
    .locals 1

    .line 307
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method private getGameModeNetWorkAcc()I
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_network_acceleration"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final getInstance()Lcom/android/server/am/OemSceneWiFiBoostController;
    .locals 3

    .line 90
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance() OemSceneWiFiBoostController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/OemSceneWiFiBoostController;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    sget-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    return-object v0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OemSceneWiFiBoostController;
    .locals 3
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 82
    sget-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-direct {v0, p0}, Lcom/android/server/am/OemSceneWiFiBoostController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 85
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance(ActivityManagerService ams) OemSceneWiFiBoostController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/OemSceneWiFiBoostController;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    sget-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    return-object v0
.end method

.method private getOIMCService()Lcom/oneplus/server/OIMCService$LocalService;
    .locals 3

    .line 311
    sget-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    if-nez v0, :cond_0

    .line 312
    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    sput-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    .line 314
    :cond_0
    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OemSceneBatterySaverController mMyLocalOIMCService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/OemSceneWiFiBoostController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    sget-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    return-object v0
.end method

.method private handleGameNetWorkAccChanged()V
    .locals 4

    .line 259
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->getGameModeNetWorkAcc()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    .line 260
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->getCurrentUserId()I

    move-result v0

    .line 261
    .local v0, "mCurrentUserId":I
    sget-boolean v1, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OemSceneWiFiBoostController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGameNetWorkAccChanged, isWifi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/am/OemSceneWiFiBoostController;->isWifi(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mOneTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mCurrentUserId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |mWifiBoost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->getOIMCService()Lcom/oneplus/server/OIMCService$LocalService;

    .line 267
    iget v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 268
    sget-object v1, Lcom/android/server/am/OemSceneWiFiBoostController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/OemSceneWiFiBoostController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v2, Lcom/oneplus/oimc/OIMCRule;->Rule_WiFiBackgroudNetLimit:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v1, v2}, Lcom/oneplus/server/OIMCService$LocalService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    goto :goto_0

    .line 269
    :cond_1
    iget v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    if-nez v1, :cond_2

    .line 270
    sget-object v1, Lcom/android/server/am/OemSceneWiFiBoostController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/OemSceneWiFiBoostController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v2, Lcom/oneplus/oimc/OIMCRule;->Rule_WiFiBackgroudNetLimit:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v1, v2}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 272
    :cond_2
    :goto_0
    return-void
.end method

.method private handleUserSwitched(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 249
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->getGameModeNetWorkAcc()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost_new:I

    .line 250
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUserSwitched, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |mWifiBoost_new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost_new:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |mWifiBoost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleGameNetWorkAccChanged()V

    .line 256
    return-void
.end method

.method private handleWifiStateDisable()V
    .locals 3

    .line 212
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWifiStateDisable, mWifiBoost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |mOneTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCurPropt:Ljava/lang/String;

    const-string v1, "0"

    if-eq v0, v1, :cond_1

    .line 214
    const-string v0, "0"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->clearHandler()V

    .line 218
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    .line 219
    return-void
.end method

.method private handleWifiStateEnable()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    sget-boolean v1, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OemSceneWiFiBoostController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWifiStateEnable, mWifiBoost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |mOneTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mModeStatusLock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatusLock:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    if-eqz v1, :cond_3

    .line 231
    iget-boolean v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    if-eqz v1, :cond_1

    .line 232
    const-string v1, "1"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/OemSceneWiFiBoostController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 233
    iput-boolean v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    .line 236
    :cond_1
    sget-boolean v1, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "OemSceneWiFiBoostController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleWifiStateEnable mModeStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_2
    const-string v1, "2"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/OemSceneWiFiBoostController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 239
    :cond_3
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isWifi(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .line 296
    const-string v0, "connectivity"

    .line 297
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 298
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 299
    .local v1, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 301
    return v3

    .line 303
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private registerWlanReceiver()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWlanReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 124
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneWiFiBoostController"

    const-string/jumbo v1, "registerWlanReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    new-instance v1, Lcom/android/server/am/OemSceneWiFiBoostController$WlanReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OemSceneWiFiBoostController$WlanReceiver;-><init>(Lcom/android/server/am/OemSceneWiFiBoostController;Lcom/android/server/am/OemSceneWiFiBoostController$1;)V

    iput-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWlanReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWlanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method private setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isDelay"    # Ljava/lang/Boolean;

    .line 275
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persist.sys.gamemode.wifiboost value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |isDelay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mCurPropt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCurPropt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCurPropt:Ljava/lang/String;

    if-ne v0, p1, :cond_1

    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 286
    :cond_3
    :try_start_0
    const-string/jumbo v0, "persist.sys.gamemode.wifiboost"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iput-object p1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCurPropt:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "OemSceneWiFiBoostController"

    const-string v2, "failed to set system property"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private validateNetWorkACCValue(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 319
    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public addOrRemoveRule(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 243
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOrRemoveRule, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 246
    return-void
.end method

.method public config(Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 375
    const-string v0, "OemSceneWiFiBoostController"

    const-string v1, "WiFiBoost config"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public handleGameModeNetBoost(Z)V
    .locals 3
    .param p1, "action"    # Z

    .line 327
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGameModeNetBoost, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mModeStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mWifiBoost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |isWifi(mContext):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    .line 330
    invoke-direct {p0, v2}, Lcom/android/server/am/OemSceneWiFiBoostController;->isWifi(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/OemSceneWiFiBoostController;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 334
    iget-boolean v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    if-eqz v0, :cond_1

    .line 335
    const-string v0, "1"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/OemSceneWiFiBoostController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 336
    iput-boolean v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    .line 338
    :cond_1
    const-string v0, "2"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCurPropt:Ljava/lang/String;

    const-string v2, "0"

    if-eq v0, v2, :cond_3

    .line 342
    const-string v0, "0"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 344
    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->clearHandler()V

    .line 347
    :cond_4
    :goto_0
    return-void
.end method

.method public isInitFunc()Z
    .locals 3

    .line 113
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->getGameModeNetWorkAcc()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    .line 114
    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isInitFunc mWifiBoost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 116
    return v1

    .line 118
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    const-string v1, "OemSceneWiFiBoostController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiFiBoost start isWifi(mContext):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/am/OemSceneWiFiBoostController;->isWifi(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mOneTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |oldModeStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    .line 355
    invoke-virtual {p0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleGameModeNetBoost(Z)V

    .line 356
    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->opStatusChanged(Z)V

    .line 357
    monitor-exit v0

    .line 358
    const/4 v0, 0x0

    return v0

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_0
    const-string v1, "OemSceneWiFiBoostController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiFiBoost stop oldModeStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    .line 367
    invoke-virtual {p0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleGameModeNetBoost(Z)V

    .line 368
    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->opStatusChanged(Z)V

    .line 369
    monitor-exit v0

    .line 370
    return v1

    .line 369
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
