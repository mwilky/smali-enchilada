.class public Lcom/android/server/OemSceneModeController;
.super Ljava/lang/Object;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;,
        Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;,
        Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;,
        Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;,
        Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DISABLE_GAME_MODE:Ljava/lang/String; = "com.oem.intent.action.DISABLE_GAME_MODE"

.field private static DBG:Z = false

.field private static final GAME_MODE_BATTERY_SAVER:Ljava/lang/String; = "game_mode_battery_saver"

.field private static final GAME_MODE_EVER_ENABLED_KEY:Ljava/lang/String; = "persist.sys.oem.gamemode_dirty"

.field private static final GAME_MODE_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "scene_modes_game"

.field private static final HAS_HW_KEYS:Z

.field public static final MODE_GAMEING_NO_DISTURB:I = 0x1

.field public static final MODE_READING:I = 0x0

.field private static final MSG_GAME_AUTO_CHANGED:I = 0x3

.field private static final MSG_GAME_BATTERY_SAVER_CHANGED:I = 0xb

.field private static final MSG_GAME_MANUAL_CHANGED:I = 0x2

.field private static final MSG_READ_AUTO_CHANGED:I = 0x1

.field private static final MSG_READ_MANUAL_CHANGED:I = 0x0

.field private static final MSG_START_MONITOR:I = 0x4

.field private static final MSG_START_MONITOR_PASSIVE:I = 0x7

.field private static final MSG_STOP_MONITOR_PASSIVE:I = 0x6

.field private static final NOTIFICATION_GAME_MODE_ENABLED:I = 0x15be

.field private static final NOTIFY_TAG:Ljava/lang/String; = "SceneModeController"

.field private static final PROP_GAME_MODE_SCALE_DEUBG_KEY:Ljava/lang/String; = "persist.sys.gamemodescale.debug"

.field public static final SWITCHER_PASSIVE:I = 0x1

.field public static final SWITCHER_PROACTIVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OemSceneModeController"

.field public static final TOAST_WINDOW_TIMEOUT:I = 0x7d0

.field private static final URI_GAME_AUTO:Landroid/net/Uri;

.field private static final URI_GAME_MANUAL:Landroid/net/Uri;

.field private static final URI_GAME_MODE_BATTERY_SAVER:Landroid/net/Uri;

.field private static final URI_READ_AUTO:Landroid/net/Uri;

.field private static final URI_READ_MANUAL:Landroid/net/Uri;

.field private static final VALUE_CLEAN:I = 0x1

.field private static final VALUE_CLEAN_EXEC:I = 0x2

.field private static final VALUE_CLOSE_POWERSAVE:Ljava/lang/String; = "0_0"

.field private static final VALUE_EXEC:I = 0x0

.field private static final VALUE_FORCE_OFF:Ljava/lang/String; = "force-off"

.field private static final VALUE_FORCE_ON:Ljava/lang/String; = "force-on"

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_OFF_INT:I = 0x0

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final VALUE_ON_INT:I = 0x1


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurProcessName:Ljava/lang/String;

.field private mFlinger:Landroid/os/IBinder;

.field private mGameModeAuto:Z

.field private mGameModeAutoObserver:Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

.field private mGameModeBatterySaverObserver:Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

.field private mGameModeManual:Z

.field private mGameModeManualObserver:Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

.field private mGameModeStatus:Z

.field private mGamingModeMsgView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsMonitoringPassiveProvider:Z

.field private mIsMonitoringProactiveProvider:Z

.field private mIsToastShowing:Z

.field mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

.field private mNeedExecPowerSavePolicy:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

.field private mOldPid:I

.field private mOldProcessName:Ljava/lang/String;

.field private mPowerSaveExecThread:Ljava/lang/Thread;

.field private mPowerSaverFeature:Z

.field private mReadModeAuto:Z

.field private mReadModeAutoObserver:Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

.field private mReadModeManual:Z

.field private mReadModeManualObserver:Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

.field private mReadModeStatus:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSaveParam:Ljava/lang/String;

.field private mShowingEnabledToast:Z

.field private mWManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    const-string v0, "1"

    const-string/jumbo v1, "qemu.hw.mainkeys"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OemSceneModeController;->HAS_HW_KEYS:Z

    const-string/jumbo v0, "reading_mode_status_manual"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_READ_MANUAL:Landroid/net/Uri;

    const-string/jumbo v0, "rading_mode_status_auto"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_READ_AUTO:Landroid/net/Uri;

    const-string v0, "game_mode_status_manual"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_GAME_MANUAL:Landroid/net/Uri;

    const-string v0, "game_mode_status_auto"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    const-string v0, "game_mode_battery_saver"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_GAME_MODE_BATTERY_SAVER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsToastShowing:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mShowingEnabledToast:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    const-string v4, "0_0"

    iput-object v4, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mGamingModeMsgView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mWManager:Landroid/view/WindowManager;

    new-instance v2, Lcom/android/server/OemSceneModeController$1;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneModeController$1;-><init>(Lcom/android/server/OemSceneModeController;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/OemSceneModeController$3;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneModeController$3;-><init>(Lcom/android/server/OemSceneModeController;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mAm:Landroid/app/ActivityManager;

    new-array v1, v1, [I

    const/16 v2, 0x43

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    new-instance v1, Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeManualObserver:Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

    new-instance v1, Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeAutoObserver:Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

    new-instance v1, Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeManualObserver:Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

    new-instance v1, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeAutoObserver:Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.oem.intent.action.DISABLE_GAME_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_READ_MANUAL:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mReadModeManualObserver:Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_READ_AUTO:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mReadModeAutoObserver:Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_GAME_MANUAL:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mGameModeManualObserver:Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mGameModeAutoObserver:Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeBatterySaverObserver:Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_GAME_MODE_BATTERY_SAVER:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mGameModeBatterySaverObserver:Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getSaveParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/android/server/OemSceneGameModePanel;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2, v3}, Lcom/android/server/OemSceneGameModePanel;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneModeController;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameBatterySaverChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->showStatusLog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/OemSceneModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/OemSceneModeController;->executePowerSavePolicy(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/OemSceneModeController;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->validateValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/OemSceneModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleReadManualChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleReadAutoChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameManualChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameAutoChanged()V

    return-void
.end method

.method private executePowerSavePolicy(Ljava/lang/String;Z)V
    .locals 11

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode PowerSavePolicy] executePowerSavePolicy optimize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_15

    if-eqz p1, :cond_13

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mAm:Landroid/app/ActivityManager;

    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->getFgApp(Landroid/app/ActivityManager;)I

    move-result v2

    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "OemSceneModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[gameMode PowerSavePolicy] executePowerSavePolicy, pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " |save_Param:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x1

    if-eq v2, v0, :cond_10

    const-string v0, ""

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_4

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    :cond_4
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "OemSceneModeController"

    const-string v3, "[gameMode PowerSavePolicy] executePowerSavePolicy, save_Param wrong format A"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/android/server/OemSceneModeController;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/server/OemSceneModeController;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_4

    :cond_7
    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v4, :cond_8

    const/16 v5, 0x64

    if-le v4, v5, :cond_9

    :cond_8
    const/16 v4, 0x64

    :cond_9
    if-eqz v3, :cond_b

    const/16 v5, 0x3c

    if-le v3, v5, :cond_a

    goto :goto_1

    :cond_a
    :goto_0
    move v9, v3

    goto :goto_2

    :cond_b
    :goto_1
    const/16 v3, 0x3c

    goto :goto_0

    :goto_2
    const/16 v3, 0x50

    if-ne v4, v3, :cond_c

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->isGameModeScaleDebug()Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v3, 0xf

    move v10, v3

    goto :goto_3

    :cond_c
    move v10, v4

    :goto_3
    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_d

    const-string v3, "OemSceneModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[gameMode PowerSavePolicy] executePowerSavePolicy, pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " |mCurProcessName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " |scale:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " |fps:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    move-object v3, p0

    move v5, v2

    move v7, v10

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/OemSceneModeController;->sendCmd(Landroid/os/IBinder;ILjava/lang/String;II)V

    iput v2, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    goto/16 :goto_7

    :cond_e
    :goto_4
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_f

    const-string v1, "OemSceneModeController"

    const-string v3, "[gameMode PowerSavePolicy] executePowerSavePolicy, save_Param wrong format B"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    :cond_10
    :goto_5
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "OemSceneModeController"

    const-string v1, "[gameMode PowerSavePolicy] executePowerSavePolicy, current pid process is not right"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_12

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    :cond_12
    return-void

    :cond_13
    :goto_6
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "OemSceneModeController"

    const-string v1, "[gameMode PowerSavePolicy] executePowerSavePolicy, save_Param is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void

    :cond_15
    iget v2, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    if-eq v2, v0, :cond_17

    const-string v2, ""

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-boolean v2, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v2, :cond_16

    const-string v2, "OemSceneModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[gameMode PowerSavePolicy] executePowerSavePolicy, mOldPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |mOldProcessName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " |scale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |fps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    iget v5, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    iget-object v6, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    const/16 v7, 0x64

    const/16 v8, 0x3c

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/OemSceneModeController;->sendCmd(Landroid/os/IBinder;ILjava/lang/String;II)V

    iput v0, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    :cond_17
    :goto_7
    return-void
.end method

.method private getFgApp(Landroid/app/ActivityManager;)I
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v5, :cond_0

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move-object v1, v4

    iget v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "OemSceneModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[gameMode PowerSavePolicy] executePowerSavePolicy, app.processName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " |pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private getGameModeAuto()Z
    .locals 4

    const-string v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status_auto"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status_auto"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private getGameModeButtonBlocked()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_lock_buttons"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameModeHeadUpBlocked()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_block_notification"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameModeManual()Z
    .locals 4

    const-string v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status_manual"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status_manual"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private getGameModeStatus()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getReadModeAuto()Z
    .locals 4

    const-string v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "rading_mode_status_auto"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "rading_mode_status_auto"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private getReadModeManual()Z
    .locals 4

    const-string v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status_manual"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status_manual"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private getReadModeStatus()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getSaveParam()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_battery_saver"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "0_0"

    :cond_1
    return-object v0
.end method

.method private handleGameAutoChanged()V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeAuto()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeManual()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeStatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->setGameModeAuto(Z)V

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    :goto_0
    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    if-eq v0, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    const-string v5, "GameMode"

    iget-boolean v6, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    const/4 v7, 0x2

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v3, v7

    :goto_2
    invoke-virtual {p0, v5, v3}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eq v2, v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    if-eqz v4, :cond_6

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->notifyGameModeToast(Z)V

    goto :goto_3

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "OemSceneModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[gameMode PowerSavePolicy] mOldPid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " |mOldProcessName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " |mNeedExecPowerSavePolicy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v3, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    const-string v3, ""

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    if-eqz v3, :cond_6

    :cond_5
    invoke-direct {p0, v7}, Lcom/android/server/OemSceneModeController;->handleGameModePowerSavePolicy(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method private handleGameBatterySaverChanged()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getSaveParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode PowerSavePolicy] handleGameBatterySaverChanged, mSaveParam:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "0_0"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->handleGameModePowerSavePolicy(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private handleGameManualChanged()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeAuto()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeManual()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeStatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->setGameModeManual(Z)V

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    const-string v3, "GameMode"

    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eq v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->notifyGameModeToast(Z)V

    :cond_1
    return-void
.end method

.method private handleGameModePowerSavePolicy(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode PowerSavePolicy] handleGameModePowerSavePolicy code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |mSaveParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/OemSceneModeController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/OemSceneModeController$2;-><init>(Lcom/android/server/OemSceneModeController;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaveExecThread:Ljava/lang/Thread;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const-string v0, "0_0"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaveExecThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method private handleReadAutoChanged()V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeAuto()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeManual()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeStatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->setReadModeAuto(Z)V

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    const-string v4, "ReadMode"

    iget-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {p0, v4, v3}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eq v2, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    :cond_2
    return-void
.end method

.method private handleReadManualChanged()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeAuto()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeManual()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeStatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->setReadModeManual(Z)V

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    const-string v3, "ReadMode"

    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eq v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    :cond_1
    return-void
.end method

.method private isGameModeEverEnabled()Z
    .locals 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.oem.gamemode_dirty"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isGameModeScaleDebug()Z
    .locals 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.gamemodescale.debug"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private notifyGameMode(Z)V
    .locals 8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/16 v1, 0x15be

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/NotificationChannel;

    const-string/jumbo v4, "scene_modes_game"

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const v6, 0x50c0049

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    invoke-direct {v3, v4, v5, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.oem.intent.action.DISABLE_GAME_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-static {v2, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "scene_modes_game"

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x506000a

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const v5, 0x50c0048

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    iget-object v5, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x1020426

    invoke-virtual {v5, v6, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v6, "SceneModeController"

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v1, v4, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "SceneModeController"

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_0
    return-void
.end method

.method private notifyGameModeToast(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->hide()V

    :goto_0
    return-void
.end method

.method private notifyReadMode(Z)V
    .locals 0

    return-void
.end method

.method private sendCmd(Landroid/os/IBinder;ILjava/lang/String;II)V
    .locals 4

    if-eqz p3, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode PowerSavePolicy] processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0xfa5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_1
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "OemSceneModeController"

    const-string v1, "[gameMode PowerSavePolicy] sendCmd, sf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    :cond_3
    :goto_3
    const-string v0, "OemSceneModeController"

    const-string v1, "[gameMode PowerSavePolicy] processName is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setGameModeAuto(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_status_auto"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private setGameModeEverEnabled()V
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] setGameModeEverEnabled was called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "persist.sys.oem.gamemode_dirty"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setGameModeManual(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_status_manual"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private setGameModeStatus(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_status"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode] setGameModeStatus, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->handleGameModePowerSavePolicy(I)V

    :cond_2
    return p1
.end method

.method private setReadModeAuto(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "rading_mode_status_auto"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private setReadModeManual(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "reading_mode_status_manual"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private setReadModeStatus(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "reading_mode_status"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    return p1
.end method

.method private showStatusLog()V
    .locals 4

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scene] Read Manual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\t Game Manual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[scene] Read Auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\t Game Auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[scene] Read Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\t Game Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[scene] Proactive monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\t Passive monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[scene] -----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] values: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private validateNetWorkACCValue(I)Z
    .locals 1

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

.method private validateValue(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "force-on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "force-off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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


# virtual methods
.method public handleStartMonitor()V
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] start monitoring, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_READ_MANUAL:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_READ_AUTO:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_GAME_MANUAL:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    return-void
.end method

.method public handleStartMonitorPassive()V
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] start monitoring passive switcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleStopMonitorPassive()V
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] stop monitoring passive switcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    const-string v0, "ReadMode"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    const-string v0, "GameMode"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    return-void
.end method

.method public isNumeric(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public preEvaluateModeStatus(II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeAuto()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "OemSceneModeController"

    const-string v2, "[scene] Not yet supported"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "OemSceneModeController"

    const-string v2, "[scene] Not yet supported"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->showStatusLog()V

    return v0
.end method

.method public startMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startMonitorPassive()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopMonitorPassive()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method updateOimcStatus(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    if-nez v0, :cond_0

    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/server/OIMCService$LocalService;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] Error while updating OIMC modes"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
