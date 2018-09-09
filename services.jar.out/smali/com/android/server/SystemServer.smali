.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

.field private static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x10303d4

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final IOT_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.things.services.IoTSystemService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SLICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.slice.SliceManagerService$Lifecycle"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSTEM_SERVER_TIMING_ASYNC_TAG:Ljava/lang/String; = "SystemServerTimingAsync"

.field private static final SYSTEM_SERVER_TIMING_TAG:Ljava/lang/String; = "SystemServerTiming"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONFIG_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.WearConfigManagerService"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_GLOBAL_ACTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.globalactions.GlobalActionsService"

.field private static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field private static final WEAR_SIDEKICK_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.sidekick.SidekickService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private final mRuntimeStartElapsedTime:J

.field private final mRuntimeStartUptime:J

.field private mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 172
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 329
    const-string v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 331
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 332
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 333
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .line 550
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 551
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 552
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x10303d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 554
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 555
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 556
    return-void
.end method

.method private isFirstBootOrUpgrade()Z
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

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

.method static synthetic lambda$startBootstrapServices$0()V
    .locals 4

    .line 718
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 720
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "StartSensorService"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 722
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 723
    return-void
.end method

.method static synthetic lambda$startOtherServices$1()V
    .locals 4

    .line 830
    :try_start_0
    const-string v0, "SystemServer"

    const-string v1, "SecondaryZygotePreload"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 833
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "SecondaryZygotePreload"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 834
    sget-object v1, Landroid/os/Process;->zygoteProcess:Landroid/os/ZygoteProcess;

    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 835
    const-string v1, "SystemServer"

    const-string v2, "Unable to preload default resources"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_0
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    .end local v0    # "traceLog":Landroid/util/TimingsTraceLog;
    goto :goto_0

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SystemServer"

    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .locals 4

    .line 964
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 966
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 967
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 968
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 969
    return-void
.end method

.method public static synthetic lambda$startOtherServices$3(Lcom/android/server/SystemServer;)V
    .locals 4

    .line 1985
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1986
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 1988
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "WebViewFactoryPreparation"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 1989
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1990
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1991
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 1992
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1993
    return-void
.end method

.method public static synthetic lambda$startOtherServices$4(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/OemExService;Lcom/android/server/OnePlusNfcService;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerF"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p4, "networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p5, "ipSecServiceF"    # Lcom/android/server/IpSecService;
    .param p6, "networkStatsF"    # Lcom/android/server/net/NetworkStatsService;
    .param p7, "connectivityF"    # Lcom/android/server/ConnectivityService;
    .param p8, "locationF"    # Lcom/android/server/LocationManagerService;
    .param p9, "countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p10, "networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p11, "commonTimeMgmtServiceF"    # Lcom/android/server/CommonTimeManagementService;
    .param p12, "inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p13, "telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p14, "mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p15, "mmsServiceF"    # Lcom/android/server/MmsServiceBroker;
    .param p16, "mOemExServiceF"    # Lcom/android/server/OemExService;
    .param p17, "mOnePlusNfcServiceF"    # Lcom/android/server/OnePlusNfcService;

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    .line 1966
    const-string v0, "SystemServer"

    const-string v3, "Making services ready"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1968
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x226

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1970
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1971
    const-string v0, "StartObservingNativeCrashes"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1973
    :try_start_0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1976
    goto :goto_0

    .line 1974
    :catch_0
    move-exception v0

    .line 1975
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "observing native crashes"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1977
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1981
    const-string v3, "WebViewFactoryPreparation"

    .line 1982
    .local v3, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1983
    .local v0, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-boolean v4, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v4, :cond_0

    .line 1984
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v4

    new-instance v5, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;

    invoke-direct {v5, v1}, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;-><init>(Lcom/android/server/SystemServer;)V

    const-string v6, "WebViewFactoryPreparation"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1996
    .end local v0    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v4, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    move-object v4, v0

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.type.automotive"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1997
    const-string v0, "StartCarServiceHelperService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1998
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1999
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2002
    :cond_1
    const-string v0, "StartSystemUI"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2004
    :try_start_1
    invoke-static/range {p1 .. p2}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2007
    goto :goto_1

    .line 2005
    :catch_1
    move-exception v0

    move-object v5, v0

    .line 2006
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting System UI"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2008
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2009
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2011
    if-eqz p3, :cond_2

    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 2012
    :catch_2
    move-exception v0

    move-object v6, v0

    .line 2013
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "making Network Managment Service ready"

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2013
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_3

    .line 2014
    :cond_2
    :goto_2
    nop

    .line 2015
    :goto_3
    const/4 v0, 0x0

    .line 2016
    .local v0, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_3

    .line 2017
    nop

    .line 2018
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2020
    .end local v0    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    .local v6, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :cond_3
    move-object v6, v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2021
    const-string v0, "MakeIpSecServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2023
    if-eqz p5, :cond_4

    :try_start_3
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/IpSecService;->systemReady()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 2024
    :catch_3
    move-exception v0

    move-object v7, v0

    .line 2025
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making IpSec Service ready"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2025
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_5

    .line 2026
    :cond_4
    :goto_4
    nop

    .line 2027
    :goto_5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2028
    const-string v0, "MakeNetworkStatsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2030
    if-eqz p6, :cond_5

    :try_start_4
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_6

    .line 2031
    :catch_4
    move-exception v0

    move-object v8, v0

    .line 2032
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making Network Stats Service ready"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2032
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_7

    .line 2033
    :cond_5
    :goto_6
    nop

    .line 2034
    :goto_7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2035
    const-string v0, "MakeConnectivityServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2037
    if-eqz p7, :cond_6

    :try_start_5
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    .line 2038
    :catch_5
    move-exception v0

    move-object v9, v0

    .line 2039
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Connectivity Service ready"

    invoke-direct {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2039
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_9

    .line 2040
    :cond_6
    :goto_8
    nop

    .line 2041
    :goto_9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2042
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2044
    if-eqz v2, :cond_7

    .line 2045
    :try_start_6
    invoke-virtual {v2, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_a

    .line 2047
    :catch_6
    move-exception v0

    move-object v9, v0

    .line 2048
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Network Policy Service ready"

    invoke-direct {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2048
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_b

    .line 2049
    :cond_7
    :goto_a
    nop

    .line 2050
    :goto_b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2052
    const-string v0, "StartWatchdog"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2053
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/Watchdog;->start()V

    .line 2054
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2057
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 2061
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2063
    if-eqz v4, :cond_8

    .line 2064
    const-string v0, "WebViewFactoryPreparation"

    invoke-static {v4, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 2066
    :cond_8
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0x258

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2068
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2070
    const-string v0, "MakeLocationServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2072
    if-eqz p8, :cond_9

    :try_start_7
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_c

    .line 2073
    :catch_7
    move-exception v0

    move-object v10, v0

    .line 2074
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying Location Service running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2074
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_d

    .line 2075
    :cond_9
    :goto_c
    nop

    .line 2076
    :goto_d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2077
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2079
    if-eqz p9, :cond_a

    :try_start_8
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_e

    .line 2080
    :catch_8
    move-exception v0

    move-object v11, v0

    .line 2081
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v11, "Notifying CountryDetectorService running"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2081
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_f

    .line 2082
    :cond_a
    :goto_e
    nop

    .line 2083
    :goto_f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2084
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2086
    if-eqz p10, :cond_b

    :try_start_9
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_10

    .line 2087
    :catch_9
    move-exception v0

    move-object v12, v0

    .line 2088
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v12, "Notifying NetworkTimeService running"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2088
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_11

    .line 2089
    :cond_b
    :goto_10
    nop

    .line 2090
    :goto_11
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2091
    const-string v0, "MakeCommonTimeManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2093
    if-eqz p11, :cond_c

    .line 2094
    :try_start_a
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_12

    .line 2096
    :catch_a
    move-exception v0

    move-object v13, v0

    .line 2097
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v13, "Notifying CommonTimeManagementService running"

    invoke-direct {v1, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2097
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_13

    .line 2098
    :cond_c
    :goto_12
    nop

    .line 2099
    :goto_13
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2100
    const-string v0, "MakeInputManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2103
    if-eqz p12, :cond_d

    :try_start_b
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_14

    .line 2104
    :catch_b
    move-exception v0

    move-object v14, v0

    .line 2105
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v14, "Notifying InputManagerService running"

    invoke-direct {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2105
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_15

    .line 2106
    :cond_d
    :goto_14
    nop

    .line 2107
    :goto_15
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2108
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2110
    if-eqz p13, :cond_e

    :try_start_c
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_16

    .line 2111
    :catch_c
    move-exception v0

    move-object v15, v0

    .line 2112
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying TelephonyRegistry running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2112
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_17

    .line 2113
    :cond_e
    :goto_16
    nop

    .line 2114
    :goto_17
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2115
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2117
    if-eqz p14, :cond_f

    :try_start_d
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_18

    .line 2118
    :catch_d
    move-exception v0

    move-object v15, v0

    .line 2119
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying MediaRouterService running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2119
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_19

    .line 2120
    :cond_f
    :goto_18
    nop

    .line 2121
    :goto_19
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2122
    const-string v0, "MakeMmsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2124
    if-eqz p15, :cond_10

    :try_start_e
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_1a

    .line 2125
    :catch_e
    move-exception v0

    move-object v15, v0

    .line 2126
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying MmsService running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2126
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1b

    .line 2127
    :cond_10
    :goto_1a
    nop

    .line 2128
    :goto_1b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2130
    const-string v0, "IncidentDaemonReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2134
    :try_start_f
    const-string/jumbo v0, "incident"

    .line 2135
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2134
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 2136
    .local v0, "incident":Landroid/os/IIncidentManager;
    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 2139
    .end local v0    # "incident":Landroid/os/IIncidentManager;
    :cond_11
    goto :goto_1c

    .line 2137
    :catch_f
    move-exception v0

    .line 2138
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "Notifying incident daemon running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2140
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2143
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getIndicate()V

    .line 2148
    const-string v0, "OemExServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2150
    if-eqz p16, :cond_12

    .line 2151
    :try_start_10
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/OemExService;->systemRunning()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_1d

    .line 2152
    :catch_10
    move-exception v0

    move-object v15, v0

    .line 2153
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying OemExService running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2153
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1e

    .line 2154
    :cond_12
    :goto_1d
    nop

    .line 2155
    :goto_1e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2158
    const-string v0, "OnePlusNfcServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2160
    if-eqz p17, :cond_13

    :try_start_11
    invoke-virtual/range {p17 .. p17}, Lcom/android/server/OnePlusNfcService;->systemRunning()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_1f

    .line 2161
    :catch_11
    move-exception v0

    move-object v15, v0

    .line 2162
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying OnePlusNfcService running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2162
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_20

    .line 2163
    :cond_13
    :goto_1f
    nop

    .line 2164
    :goto_20
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2166
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .line 322
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 323
    return-void
.end method

.method private performPendingShutdown()V
    .locals 9

    .line 496
    const-string/jumbo v0, "sys.shutdown.requested"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "shutdownAction":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 499
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v1

    .line 502
    .local v2, "reboot":Z
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-le v3, v4, :cond_1

    .line 503
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "reason":Ljava/lang/String;
    goto :goto_1

    .line 505
    .end local v3    # "reason":Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 513
    .restart local v3    # "reason":Ljava/lang/String;
    :goto_1
    if-eqz v3, :cond_2

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 514
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    .local v6, "packageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 516
    move-object v7, v5

    .line 518
    .local v7, "filename":Ljava/lang/String;
    :try_start_0
    invoke-static {v6, v1, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v1

    .line 521
    goto :goto_2

    .line 519
    :catch_0
    move-exception v1

    .line 520
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "SystemServer"

    const-string v8, "Error reading uncrypt package file"

    invoke-static {v5, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 523
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v7, :cond_2

    const-string v1, "/data"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 524
    new-instance v1, Ljava/io/File;

    const-string v5, "/cache/recovery/block.map"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 525
    const-string v1, "SystemServer"

    const-string v4, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return-void

    .line 532
    .end local v6    # "packageFile":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 542
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v5

    .line 543
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v5, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 544
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 547
    .end local v1    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "reboot":Z
    .end local v3    # "reason":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_3
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 491
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    return-void
.end method

.method private run()V
    .locals 11

    .line 337
    :try_start_0
    const-string v0, "InitBeforeStartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 343
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 350
    :cond_0
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "timezoneProperty":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 352
    :cond_1
    const-string v1, "SystemServer"

    const-string v2, "Timezone not set; setting to GMT."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string/jumbo v1, "persist.sys.timezone"

    const-string v2, "GMT"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_2
    const-string/jumbo v1, "persist.sys.language"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 365
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "languageTag":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.locale"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v2, "persist.sys.language"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v2, "persist.sys.country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v2, "persist.sys.localevar"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .end local v1    # "languageTag":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 376
    invoke-static {v1}, Landroid/content/pm/PackageItemInfo;->setForceSafeLabels(Z)V

    .line 378
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 381
    const-string v3, "SystemServer"

    const-string v4, "Entered the Android system server!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    long-to-int v3, v3

    .line 383
    .local v3, "uptimeMillis":I
    const/16 v4, 0xbc2

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 384
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v4, :cond_4

    .line 385
    const-string v4, "boot_system_server_init"

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 395
    :cond_4
    const-string/jumbo v4, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 402
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {v4, v5}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 406
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 410
    invoke-static {v1}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 414
    invoke-static {v1}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 417
    invoke-static {v1}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 420
    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 423
    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 426
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 428
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 429
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 430
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 434
    const-string v1, "android_servers"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 438
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 441
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 444
    new-instance v1, Lcom/android/server/SystemServiceManager;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 445
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 447
    const-class v1, Lcom/android/server/SystemServiceManager;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v1, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 449
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 451
    .end local v0    # "timezoneProperty":Ljava/lang/String;
    .end local v3    # "uptimeMillis":I
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 452
    nop

    .line 456
    :try_start_1
    const-string v0, "StartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 457
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 458
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 459
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 460
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 467
    nop

    .line 469
    invoke-static {v2}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 471
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_5

    .line 472
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    .line 473
    .local v0, "uptimeMillis":I
    const-string v1, "boot_system_server_ready"

    invoke-static {v2, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 474
    const v1, 0xea60

    .line 475
    .local v1, "MAX_UPTIME_MILLIS":I
    const v2, 0xea60

    if-le v0, v2, :cond_5

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemServerTiming"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .end local v0    # "uptimeMillis":I
    .end local v1    # "MAX_UPTIME_MILLIS":I
    :cond_5
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 483
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "System"

    const-string v2, "******************************************"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v1, "System"

    const-string v2, "************ Failure starting system services"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 466
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0

    .line 451
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0
.end method

.method private startBootstrapServices()V
    .locals 9

    .line 566
    const-string v0, "SystemServer"

    const-string v1, "Reading configuration..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v0, "ReadingSystemConfig"

    .line 568
    .local v0, "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    const-string v1, "ReadingSystemConfig"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v1

    sget-object v2, Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;->INSTANCE:Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;

    const-string v3, "ReadingSystemConfig"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 570
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 575
    const-string v1, "StartInstaller"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 576
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/Installer;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 577
    .local v1, "installer":Lcom/android/server/pm/Installer;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 581
    const-string v2, "DeviceIdentifiersPolicyService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 582
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 583
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 586
    const-string v2, "StartActivityManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 587
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 588
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 589
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 590
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 591
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 597
    const-string v2, "StartPowerManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 598
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 599
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 603
    const-string v2, "InitPowerManagement"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 604
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 605
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 608
    const-string v2, "StartRecoverySystemService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 610
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 615
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/RescueParty;->noteBoot(Landroid/content/Context;)V

    .line 618
    const-string v2, "StartLightsService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 619
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 620
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 622
    const-string v2, "StartSidekickService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 624
    const-string v2, "config.enable_sidekick_graphics"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 627
    :cond_0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 631
    const-string v2, "StartDisplayManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 632
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 633
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 636
    const-string v2, "WaitForDisplay"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 637
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 638
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 641
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, "cryptState":Ljava/lang/String;
    const-string/jumbo v4, "trigger_restart_min_framework"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 643
    const-string v4, "SystemServer"

    const-string v6, "Detected encryption in progress - only parsing core apps"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 645
    :cond_1
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 646
    const-string v4, "SystemServer"

    const-string v6, "Device encrypted - only parsing core apps"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 651
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 652
    const-string v4, "SystemServer"

    const-string v6, "Regionalization Service"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    new-instance v4, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v4}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 654
    .local v4, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string/jumbo v6, "regionalization"

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 658
    .end local v4    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/4 v6, 0x0

    if-nez v4, :cond_4

    .line 659
    const-string v4, "boot_package_manager_init_start"

    .line 660
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    long-to-int v7, v7

    .line 659
    invoke-static {v6, v4, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 662
    :cond_4
    const-string v4, "StartPackageManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 663
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v7, :cond_5

    goto :goto_1

    :cond_5
    move v5, v3

    :goto_1
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v4, v1, v5, v7}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 665
    iget-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 666
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 667
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 668
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v4

    if-nez v4, :cond_6

    .line 669
    const-string v4, "boot_package_manager_init_ready"

    .line 670
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    long-to-int v5, v7

    .line 669
    invoke-static {v6, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 675
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_7

    .line 676
    const-string v4, "config.disable_otadexopt"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 678
    .local v3, "disableOtaDexopt":Z
    if-nez v3, :cond_7

    .line 679
    const-string v4, "StartOtaDexOptService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 681
    :try_start_0
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, v5}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    :goto_2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 686
    goto :goto_4

    .line 685
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 682
    :catch_0
    move-exception v4

    .line 683
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v5, "starting OtaDexOptService"

    invoke-direct {p0, v5, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 683
    .end local v4    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 685
    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v4

    .line 690
    .end local v3    # "disableOtaDexopt":Z
    :cond_7
    :goto_4
    const-string v3, "StartUserManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 691
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 692
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 695
    const-string v3, "InitAttributerCache"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 696
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 697
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 700
    const-string v3, "SetSystemProcess"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 701
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 702
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 706
    iget-object v3, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 709
    const-string v3, "StartOverlayManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 710
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v4, Lcom/android/server/om/OverlayManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 711
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 717
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v3

    sget-object v4, Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;

    const-string v5, "StartSensorService"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 724
    return-void
.end method

.method private startCoreServices()V
    .locals 2

    .line 730
    const-string v0, "StartBatteryService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 733
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 736
    const-string v0, "StartUsageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 738
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 739
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 738
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 740
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 743
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    const-string v0, "StartWebViewUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 745
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 746
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 750
    :cond_0
    const-string v0, "StartBinderCallsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 751
    invoke-static {}, Lcom/android/server/BinderCallsStatsService;->start()V

    .line 752
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 753
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private startOtherServices()V
    .locals 72

    .line 760
    move-object/from16 v3, p0

    iget-object v2, v3, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 761
    .local v2, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 762
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    const/4 v10, 0x0

    .line 763
    .local v10, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v11, 0x0

    .line 764
    .local v11, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 765
    .local v12, "ipSecService":Lcom/android/server/IpSecService;
    const/4 v13, 0x0

    .line 766
    .local v13, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/4 v14, 0x0

    .line 767
    .local v14, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/4 v15, 0x0

    .line 768
    .local v15, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v16, 0x0

    .line 769
    .local v16, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v17, 0x0

    .line 770
    .local v17, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v18, 0x0

    .line 771
    .local v18, "serial":Lcom/android/server/SerialService;
    const/16 v19, 0x0

    .line 772
    .local v19, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v20, 0x0

    .line 773
    .local v20, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/4 v4, 0x0

    .line 774
    .local v4, "inputManager":Lcom/android/server/input/InputManagerService;
    const/4 v5, 0x0

    .line 775
    .local v5, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/4 v6, 0x0

    .line 776
    .local v6, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v21, 0x0

    .line 777
    .local v21, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v22, 0x0

    .line 780
    .local v22, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v23, 0x0

    .line 784
    .local v23, "mOemExService":Lcom/android/server/OemExService;
    const/16 v24, 0x0

    .line 789
    .local v24, "mSDService":Lcom/android/server/oneplus/display/SDService;
    const/16 v25, 0x0

    .line 793
    .local v25, "mOnePlusPowerController":Lcom/android/server/OnePlusPowerController;
    const/16 v26, 0x0

    .line 798
    .local v26, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    const/4 v7, 0x0

    .line 801
    .local v7, "mParamService":Lcom/android/server/ParamService;
    const/16 v27, 0x0

    .line 802
    .local v27, "wigigP2pService":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 804
    .local v28, "wigigService":Ljava/lang/Object;
    const-string v0, "config.disable_systemtextclassifier"

    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 806
    .local v29, "disableSystemTextClassifier":Z
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 808
    .local v30, "disableCameraService":Z
    const-string v0, "config.disable_slices"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 809
    .local v31, "disableSlices":Z
    const-string v0, "config.enable_lefty"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 811
    .local v32, "enableLeftyService":Z
    const-string/jumbo v0, "ro.kernel.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 812
    .local v33, "isEmulator":Z
    const-string/jumbo v0, "persist.vendor.wigig.enable"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .line 814
    .local v34, "enableWigig":Z
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v8, "android.hardware.type.watch"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v35

    .line 818
    .local v35, "isWatch":Z
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "debug.crash_system"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 819
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 823
    :cond_1
    :goto_0
    :try_start_0
    const-string v0, "SecondaryZygotePreload"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_a

    .line 828
    .local v0, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v9

    sget-object v8, Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;

    move-object/from16 v38, v0

    const-string v0, "SecondaryZygotePreload"

    .line 828
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .local v38, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    invoke-virtual {v9, v8, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v3, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 843
    const-string v0, "StartKeyAttestationApplicationIdProviderService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 844
    const-string/jumbo v0, "sec_key_att_app_id_provider"

    new-instance v8, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v8, v2}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 846
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 848
    const-string v0, "StartKeyChainSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 849
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 850
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 852
    const-string v0, "StartSchedulingPolicyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 853
    const-string/jumbo v0, "scheduling_policy"

    new-instance v8, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v8}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 854
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 856
    const-string v0, "StartTelecomLoaderService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 857
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 858
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 860
    const-string v0, "StartTelephonyRegistry"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 861
    new-instance v0, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_9

    move-object v9, v0

    .line 862
    .end local v5    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v9, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_2
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 863
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 865
    const-string v0, "StartEntropyMixer"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 866
    new-instance v0, Lcom/android/server/EntropyMixer;

    invoke-direct {v0, v2}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 867
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 869
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v3, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 872
    const-string v0, "StartAccountManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 873
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 874
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 876
    const-string v0, "StartContentService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 877
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 878
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 882
    const-string v0, "AddParamService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 883
    new-instance v0, Lcom/android/server/ParamService;

    invoke-direct {v0, v2}, Lcom/android/server/ParamService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_8

    move-object v8, v0

    .line 884
    .end local v7    # "mParamService":Lcom/android/server/ParamService;
    .local v8, "mParamService":Lcom/android/server/ParamService;
    :try_start_3
    const-string v0, "ParamService"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 885
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 888
    const-string v0, "InstallSystemProviders"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 889
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 891
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 892
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 897
    const-string v0, "StartDropBoxManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 898
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 899
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 901
    const-string v0, "StartVibratorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 902
    new-instance v0, Lcom/android/server/VibratorService;

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_7

    move-object v1, v0

    .line 903
    :try_start_4
    const-string/jumbo v0, "vibrator"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 904
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    .line 906
    if-nez v35, :cond_2

    .line 907
    :try_start_5
    const-string v0, "StartConsumerIrService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 908
    new-instance v0, Lcom/android/server/ConsumerIrService;

    invoke-direct {v0, v2}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v6, v0

    .line 909
    const-string v0, "consumer_ir"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 910
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 1034
    .end local v38    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v39, v6

    move-object/from16 v36, v9

    move-object/from16 v44, v15

    move-object/from16 v5, v24

    const/4 v15, 0x0

    goto/16 :goto_8

    .line 913
    .restart local v38    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v39, v6

    .line 913
    .end local v6    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v39, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_6
    const-string v0, "StartAlarmManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 914
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 915
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 917
    const-string v0, "InitWatchdog"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 918
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    .line 919
    .local v0, "watchdog":Lcom/android/server/Watchdog;
    iget-object v5, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2, v5}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 920
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 922
    const-string v5, "StartInputManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 923
    new-instance v5, Lcom/android/server/input/InputManagerService;

    invoke-direct {v5, v2}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    move-object v7, v5

    .line 924
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v7, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 926
    const-string v4, "StartWindowManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 928
    iget-object v4, v3, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v5, "StartSensorService"

    invoke-static {v4, v5}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 929
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 930
    iget v4, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    iget-boolean v4, v3, Lcom/android/server/SystemServer;->mFirstBoot:Z

    const/16 v37, 0x1

    xor-int/lit8 v40, v4, 0x1

    iget-boolean v5, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {v4}, Lcom/android/server/policy/OemPhoneWindowManager;-><init>()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4

    move-object/from16 v41, v4

    move-object v4, v2

    move/from16 v42, v5

    move-object v5, v7

    move-object/from16 v43, v1

    move-object v1, v7

    move/from16 v7, v40

    .end local v7    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v1, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v43, "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v44, v15

    move/from16 v15, v37

    move-object/from16 v37, v8

    move/from16 v8, v42

    .line 930
    .end local v8    # "mParamService":Lcom/android/server/ParamService;
    .end local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v37, "mParamService":Lcom/android/server/ParamService;
    .local v44, "connectivity":Lcom/android/server/ConnectivityService;
    move-object/from16 v36, v9

    const/4 v15, 0x0

    move-object/from16 v9, v41

    .line 930
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v36, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_8
    invoke-static/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    .line 940
    .end local v17    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v4, "wm":Lcom/android/server/wm/WindowManagerService;
    :try_start_9
    const-string/jumbo v5, "window"

    const/16 v6, 0x11

    invoke-static {v5, v4, v15, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 942
    const-string/jumbo v5, "input"

    const/4 v6, 0x1

    invoke-static {v5, v1, v15, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 944
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 946
    const-string v5, "SetWindowManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 947
    iget-object v5, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 948
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 950
    const-string v5, "WindowManagerServiceOnInitReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 951
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 952
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 956
    new-instance v5, Lcom/android/server/oneplus/display/SDService;

    invoke-direct {v5, v2}, Lcom/android/server/oneplus/display/SDService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2

    .line 957
    .end local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .local v5, "mSDService":Lcom/android/server/oneplus/display/SDService;
    :try_start_a
    const-string/jumbo v6, "smartdisplay"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 963
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    sget-object v7, Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;

    const-string v8, "StartHidlServices"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 971
    if-nez v35, :cond_4

    .line 972
    const-string v6, "StartVrManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 973
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 974
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 977
    :cond_4
    const-string v6, "StartInputManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 979
    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->start()V

    .line 980
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 983
    const-string v6, "DisplayManagerWindowManagerAndInputReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 984
    iget-object v6, v3, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 985
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 990
    if-eqz v33, :cond_5

    .line 991
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (emulator)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 992
    :cond_5
    iget v6, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 993
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (factory test)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 994
    :cond_6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth"

    .line 995
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 996
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 998
    :cond_7
    const-string v6, "StartBluetoothService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 999
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BluetoothService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1000
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1003
    :goto_3
    const-string v6, "IpConnectivityMetrics"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1004
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1005
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1007
    const-string v6, "NetworkWatchlistService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1008
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1009
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1011
    const-string v6, "PinnerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1012
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PinnerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1016
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.oneplus.server.OnePlusService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1019
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1023
    const-string v6, "SystemServer"

    const-string v7, "LongScreenShot Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const-string/jumbo v6, "longshot"

    .line 1025
    invoke-static {v2}, Lcom/oneplus/longshot/LongScreenshotManagerService;->getInstance(Landroid/content/Context;)Lcom/oneplus/longshot/LongScreenshotManagerService;

    move-result-object v7

    .line 1024
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1030
    const/4 v6, 0x1

    new-array v7, v6, [I

    const/16 v6, 0x4e

    aput v6, v7, v15

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1031
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.oneplus.server.OIMCService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    .line 1037
    .end local v0    # "watchdog":Lcom/android/server/Watchdog;
    .end local v38    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_8
    nop

    .line 1039
    move-object/from16 v24, v5

    move-object/from16 v7, v43

    move-object/from16 v71, v4

    move-object v4, v1

    move-object/from16 v1, v71

    goto/16 :goto_9

    .line 1034
    :catch_1
    move-exception v0

    move-object/from16 v17, v4

    goto :goto_4

    .line 1034
    .end local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    :catch_2
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v5, v24

    .line 1034
    .end local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .end local v37    # "mParamService":Lcom/android/server/ParamService;
    .end local v43    # "vibrator":Lcom/android/server/VibratorService;
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    .local v4, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v8    # "mParamService":Lcom/android/server/ParamService;
    .restart local v17    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_4
    move-object/from16 v8, v37

    move-object v4, v1

    goto :goto_5

    .line 1034
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .end local v8    # "mParamService":Lcom/android/server/ParamService;
    .local v1, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v37    # "mParamService":Lcom/android/server/ParamService;
    .restart local v43    # "vibrator":Lcom/android/server/VibratorService;
    :catch_3
    move-exception v0

    move-object v4, v1

    move-object/from16 v5, v24

    move-object/from16 v8, v37

    .line 1034
    .end local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .end local v37    # "mParamService":Lcom/android/server/ParamService;
    .end local v43    # "vibrator":Lcom/android/server/VibratorService;
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v8    # "mParamService":Lcom/android/server/ParamService;
    :goto_5
    move-object/from16 v1, v43

    goto/16 :goto_8

    .line 1034
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .end local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v7    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    :catch_4
    move-exception v0

    move-object/from16 v43, v1

    move-object v1, v7

    move-object/from16 v37, v8

    move-object/from16 v36, v9

    move-object/from16 v44, v15

    const/4 v15, 0x0

    move-object v4, v1

    move-object/from16 v5, v24

    move-object/from16 v1, v43

    .end local v7    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v8    # "mParamService":Lcom/android/server/ParamService;
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v1, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "mParamService":Lcom/android/server/ParamService;
    .restart local v43    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    goto :goto_8

    .line 1034
    .end local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v37    # "mParamService":Lcom/android/server/ParamService;
    .end local v43    # "vibrator":Lcom/android/server/VibratorService;
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v8    # "mParamService":Lcom/android/server/ParamService;
    .restart local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_5
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v37, v8

    move-object/from16 v36, v9

    move-object/from16 v44, v15

    const/4 v15, 0x0

    goto :goto_6

    .line 1034
    .end local v39    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v6    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :catch_6
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v37, v8

    move-object/from16 v36, v9

    move-object/from16 v44, v15

    const/4 v15, 0x0

    move-object/from16 v39, v6

    .line 1034
    .end local v6    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v39    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_6
    move-object/from16 v5, v24

    .line 1034
    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v8    # "mParamService":Lcom/android/server/ParamService;
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "mParamService":Lcom/android/server/ParamService;
    .restart local v43    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    goto :goto_8

    .line 1034
    .end local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .end local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v37    # "mParamService":Lcom/android/server/ParamService;
    .end local v39    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v43    # "vibrator":Lcom/android/server/VibratorService;
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v8    # "mParamService":Lcom/android/server/ParamService;
    .restart local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    :catch_7
    move-exception v0

    move-object/from16 v37, v8

    move-object/from16 v36, v9

    move-object/from16 v44, v15

    const/4 v15, 0x0

    move-object/from16 v39, v6

    move-object/from16 v5, v24

    .line 1034
    .end local v8    # "mParamService":Lcom/android/server/ParamService;
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "mParamService":Lcom/android/server/ParamService;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    goto :goto_8

    .line 1034
    .end local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v37    # "mParamService":Lcom/android/server/ParamService;
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v7, "mParamService":Lcom/android/server/ParamService;
    .restart local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_8
    move-exception v0

    move-object/from16 v36, v9

    move-object/from16 v44, v15

    const/4 v15, 0x0

    move-object/from16 v39, v6

    move-object v8, v7

    move-object/from16 v5, v24

    .line 1034
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    goto :goto_8

    .line 1034
    .end local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v5, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_9
    move-exception v0

    move-object/from16 v44, v15

    const/4 v15, 0x0

    goto :goto_7

    :catch_a
    move-exception v0

    move-object/from16 v44, v15

    move v15, v9

    .line 1034
    .end local v6    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v7    # "mParamService":Lcom/android/server/ParamService;
    .end local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .local v5, "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v8    # "mParamService":Lcom/android/server/ParamService;
    .restart local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v39    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_7
    move-object/from16 v36, v5

    move-object/from16 v39, v6

    move-object v8, v7

    move-object/from16 v5, v24

    .line 1035
    .end local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_8
    const-string v6, "System"

    const-string v7, "******************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const-string v6, "System"

    const-string v7, "************ Failure starting core service"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1039
    .end local v0    # "e":Ljava/lang/RuntimeException;
    move-object v7, v1

    move-object/from16 v24, v5

    move-object/from16 v37, v8

    move-object/from16 v1, v17

    .line 1039
    .end local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .end local v8    # "mParamService":Lcom/android/server/ParamService;
    .end local v17    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v1, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v7, "vibrator":Lcom/android/server/VibratorService;
    .restart local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v37    # "mParamService":Lcom/android/server/ParamService;
    :goto_9
    const/4 v5, 0x0

    .line 1040
    .local v5, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/4 v6, 0x0

    .line 1041
    .local v6, "notification":Landroid/app/INotificationManager;
    const/4 v8, 0x0

    .line 1042
    .local v8, "location":Lcom/android/server/LocationManagerService;
    const/4 v9, 0x0

    .line 1043
    .local v9, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v17, 0x0

    .line 1044
    .local v17, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v38, 0x0

    .line 1047
    .local v38, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v15, 0x1

    if-eq v0, v15, :cond_9

    .line 1048
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1049
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v15, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1050
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1052
    const-string v0, "StartAccessibilityManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1054
    :try_start_b
    const-string v0, "accessibility"

    new-instance v15, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v15, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 1058
    goto :goto_a

    .line 1056
    :catch_b
    move-exception v0

    .line 1057
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v15, "starting Accessibility Manager"

    invoke-direct {v3, v15, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1059
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1062
    :cond_9
    const-string v0, "MakeDisplayReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1064
    :try_start_c
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 1067
    goto :goto_b

    .line 1065
    :catch_c
    move-exception v0

    move-object v15, v0

    .line 1066
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v15, "making display ready"

    invoke-direct {v3, v15, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1068
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1072
    const-string/jumbo v0, "ro.build.version.ota"

    const-string v15, ""

    invoke-static {v0, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1073
    .local v15, "curVersion":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.version.ota"

    move-object/from16 v47, v5

    const-string v5, ""

    .line 1073
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v47, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1074
    .local v5, "lastVersion":Ljava/lang/String;
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_b

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const-string v0, ""

    .line 1075
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1076
    const-string/jumbo v0, "persist.sys.version.ota"

    invoke-static {v0, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string/jumbo v0, "persist.sys.version.lastota"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    :cond_b
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    move-object/from16 v48, v5

    const/4 v5, 0x1

    if-eq v0, v5, :cond_c

    .line 1082
    .end local v5    # "lastVersion":Ljava/lang/String;
    .local v48, "lastVersion":Ljava/lang/String;
    const-string v0, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1083
    const-string v0, "StartStorageManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1089
    :try_start_d
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1090
    const-string/jumbo v0, "mount"

    .line 1091
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1090
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 1094
    .end local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v0, "storageManager":Landroid/os/storage/IStorageManager;
    nop

    .line 1095
    move-object v10, v0

    goto :goto_c

    .line 1092
    .end local v0    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    :catch_d
    move-exception v0

    .line 1093
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting StorageManagerService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1095
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1097
    const-string v0, "StartStorageStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1099
    :try_start_e
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 1102
    goto :goto_d

    .line 1100
    :catch_e
    move-exception v0

    .line 1101
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting StorageStatsService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1103
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1109
    .end local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v40, "storageManager":Landroid/os/storage/IStorageManager;
    :cond_c
    move-object/from16 v40, v10

    const-string v0, "StartUiModeManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1110
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1111
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1113
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_d

    .line 1114
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1116
    :try_start_f
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 1119
    goto :goto_e

    .line 1117
    :catch_f
    move-exception v0

    .line 1118
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "update packages"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1120
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1123
    :cond_d
    const-string v0, "PerformFstrimIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1125
    :try_start_10
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    .line 1128
    goto :goto_f

    .line 1126
    :catch_10
    move-exception v0

    .line 1127
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "performing fstrim"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1129
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1131
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_34

    .line 1132
    const-string v0, "StartLockSettingsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1134
    :try_start_11
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1135
    const-string/jumbo v0, "lock_settings"

    .line 1136
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1135
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    .line 1139
    .end local v17    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v0, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    nop

    .line 1140
    move-object/from16 v17, v0

    goto :goto_10

    .line 1137
    .end local v0    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v17    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_11
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting LockSettingsService service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1140
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_10
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1142
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    move v5, v0

    .line 1143
    .local v5, "hasPdb":Z
    if-eqz v5, :cond_e

    .line 1144
    const-string v0, "StartPersistentDataBlock"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1145
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1146
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1149
    :cond_e
    if-nez v5, :cond_f

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1151
    :cond_f
    const-string v0, "StartOemLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1152
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1153
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1156
    :cond_10
    const-string v0, "StartDeviceIdleController"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1157
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1158
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1162
    const-string v0, "StartOnePlusPowerController"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1163
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1164
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1169
    const-string v0, "StartDevicePolicyManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1170
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1171
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1173
    if-nez v35, :cond_11

    .line 1174
    const-string v0, "StartStatusBarManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1176
    :try_start_12
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_13

    move-object v10, v0

    .line 1177
    .end local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v10, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_13
    const-string/jumbo v0, "statusbar"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_12

    .line 1180
    nop

    .line 1181
    move/from16 v49, v5

    goto :goto_12

    .line 1178
    :catch_12
    move-exception v0

    goto :goto_11

    .line 1178
    .end local v10    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_13
    move-exception v0

    move-object/from16 v10, v47

    .line 1179
    .end local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v10    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_11
    move/from16 v49, v5

    const-string/jumbo v5, "starting StatusBarManagerService"

    .line 1179
    .end local v5    # "hasPdb":Z
    .local v49, "hasPdb":Z
    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1181
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_12
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1184
    move-object v5, v10

    goto :goto_13

    .line 1184
    .end local v10    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v49    # "hasPdb":Z
    .restart local v5    # "hasPdb":Z
    .restart local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_11
    move/from16 v49, v5

    move-object/from16 v5, v47

    .line 1184
    .end local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v5, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v49    # "hasPdb":Z
    :goto_13
    const-string v0, "StartClipboardService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1185
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1186
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1188
    const-string v0, "StartNetworkManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1190
    :try_start_14
    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    move-object v11, v0

    .line 1191
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_14

    .line 1194
    goto :goto_14

    .line 1192
    :catch_14
    move-exception v0

    .line 1193
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting NetworkManagement Service"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1195
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_14
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1197
    const-string v0, "StartIpSecService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1199
    :try_start_15
    invoke-static {v2}, Lcom/android/server/IpSecService;->create(Landroid/content/Context;)Lcom/android/server/IpSecService;

    move-result-object v0

    move-object v12, v0

    .line 1200
    const-string/jumbo v0, "ipsec"

    invoke-static {v0, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15

    .line 1203
    goto :goto_15

    .line 1201
    :catch_15
    move-exception v0

    .line 1202
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting IpSec Service"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1204
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_15
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1206
    const-string v0, "StartTextServicesManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1207
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1208
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1210
    if-nez v29, :cond_12

    .line 1211
    const-string v0, "StartTextClassificationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1212
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1213
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1216
    :cond_12
    const-string v0, "StartNetworkScoreService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1217
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1218
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1220
    const-string v0, "StartNetworkStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1222
    :try_start_16
    invoke-static {v2, v11}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v0

    move-object v13, v0

    .line 1223
    const-string/jumbo v0, "netstats"

    invoke-static {v0, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_16

    .line 1226
    goto :goto_16

    .line 1224
    :catch_16
    move-exception v0

    .line 1225
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting NetworkStats Service"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1227
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_16
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1229
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1231
    :try_start_17
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v10, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v2, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V

    move-object v14, v0

    .line 1233
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_17

    .line 1236
    goto :goto_17

    .line 1234
    :catch_17
    move-exception v0

    .line 1235
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting NetworkPolicy Service"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1237
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_17
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1239
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_17

    .line 1240
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.wifi"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1243
    const-string v0, "StartWifi"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1244
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wifi.WifiService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1245
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1246
    const-string v0, "StartWifiScanning"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1247
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wifi.scanner.WifiScanningService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1249
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1252
    :cond_13
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1254
    const-string v0, "StartRttService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1255
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wifi.rtt.RttService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1257
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1260
    :cond_14
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.wifi.aware"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1262
    const-string v0, "StartWifiAware"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1263
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1264
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1267
    :cond_15
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.wifi.direct"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1269
    const-string v0, "StartWifiP2P"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1270
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1271
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1274
    :cond_16
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.lowpan"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1276
    const-string v0, "StartLowpan"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1277
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1278
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1282
    :cond_17
    if-eqz v34, :cond_18

    .line 1284
    :try_start_18
    const-string v0, "SystemServer"

    const-string v10, "Wigig Service"

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const-string v0, "/system/framework/wigig-service.jar:/system/framework/vendor.qti.hardware.wigig.supptunnel-V1.0-java.jar:/system/framework/vendor.qti.hardware.wigig.netperftuner-V1.0-java.jar"

    .line 1289
    .local v0, "wigigClassPath":Ljava/lang/String;
    new-instance v10, Ldalvik/system/PathClassLoader;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_1b

    .line 1290
    move-object/from16 v50, v5

    :try_start_19
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1290
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v50, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v10, v0, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    move-object v5, v10

    .line 1291
    .local v5, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string v10, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    invoke-virtual {v5, v10}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1a

    .line 1293
    .local v10, "wigigP2pClass":Ljava/lang/Class;
    move-object/from16 v52, v0

    move-object/from16 v51, v6

    const/4 v6, 0x1

    :try_start_1a
    new-array v0, v6, [Ljava/lang/Class;

    .line 1293
    .end local v0    # "wigigClassPath":Ljava/lang/String;
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .local v51, "notification":Landroid/app/INotificationManager;
    .local v52, "wigigClassPath":Ljava/lang/String;
    const-class v6, Landroid/content/Context;

    const/16 v41, 0x0

    aput-object v6, v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_19

    .line 1294
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v53, v8

    const/4 v6, 0x1

    :try_start_1b
    new-array v8, v6, [Ljava/lang/Object;

    .line 1294
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .local v53, "location":Lcom/android/server/LocationManagerService;
    aput-object v2, v8, v41

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v27, v6

    .line 1295
    const-string v6, "SystemServer"

    const-string v8, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    const-string/jumbo v6, "wigigp2p"

    move-object/from16 v8, v27

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1298
    const-string v6, "com.qualcomm.qti.server.wigig.WigigService"

    invoke-virtual {v5, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 1300
    .local v6, "wigigClass":Ljava/lang/Class;
    move-object/from16 v54, v0

    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/Class;

    .line 1300
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .local v54, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const-class v8, Landroid/content/Context;

    const/16 v41, 0x0

    aput-object v8, v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1301
    .end local v54    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .restart local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v55, v5

    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Object;

    .line 1301
    .end local v5    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .local v55, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    aput-object v2, v5, v41

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v28, v5

    .line 1302
    const-string v5, "SystemServer"

    const-string v8, "Successfully loaded WigigService class"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const-string/jumbo v5, "wigig"

    move-object/from16 v8, v28

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_18

    .line 1306
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v6    # "wigigClass":Ljava/lang/Class;
    .end local v10    # "wigigP2pClass":Ljava/lang/Class;
    .end local v52    # "wigigClassPath":Ljava/lang/String;
    .end local v55    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    goto :goto_19

    .line 1304
    :catch_18
    move-exception v0

    goto :goto_18

    .line 1304
    .end local v53    # "location":Lcom/android/server/LocationManagerService;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :catch_19
    move-exception v0

    move-object/from16 v53, v8

    .line 1304
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .restart local v53    # "location":Lcom/android/server/LocationManagerService;
    goto :goto_18

    .line 1304
    .end local v51    # "notification":Landroid/app/INotificationManager;
    .end local v53    # "location":Lcom/android/server/LocationManagerService;
    .local v6, "notification":Landroid/app/INotificationManager;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :catch_1a
    move-exception v0

    move-object/from16 v51, v6

    move-object/from16 v53, v8

    .line 1304
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .restart local v51    # "notification":Landroid/app/INotificationManager;
    .restart local v53    # "location":Lcom/android/server/LocationManagerService;
    goto :goto_18

    .line 1304
    .end local v50    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v51    # "notification":Landroid/app/INotificationManager;
    .end local v53    # "location":Lcom/android/server/LocationManagerService;
    .local v5, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v6    # "notification":Landroid/app/INotificationManager;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :catch_1b
    move-exception v0

    move-object/from16 v50, v5

    move-object/from16 v51, v6

    move-object/from16 v53, v8

    .line 1305
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v50    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v51    # "notification":Landroid/app/INotificationManager;
    .restart local v53    # "location":Lcom/android/server/LocationManagerService;
    :goto_18
    const-string/jumbo v5, "starting WigigService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1305
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_19

    .line 1309
    .end local v50    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v51    # "notification":Landroid/app/INotificationManager;
    .end local v53    # "location":Lcom/android/server/LocationManagerService;
    .restart local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v6    # "notification":Landroid/app/INotificationManager;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :cond_18
    move-object/from16 v50, v5

    move-object/from16 v51, v6

    move-object/from16 v53, v8

    .line 1309
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .restart local v50    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v51    # "notification":Landroid/app/INotificationManager;
    .restart local v53    # "location":Lcom/android/server/LocationManagerService;
    :goto_19
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    .line 1310
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1311
    :cond_19
    const-string v0, "StartEthernet"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1312
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1313
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1316
    :cond_1a
    const-string v0, "StartConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1318
    :try_start_1c
    new-instance v0, Lcom/android/server/ConnectivityService;

    invoke-direct {v0, v2, v11, v13, v14}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1d

    move-object v5, v0

    .line 1320
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v5, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_1d
    const-string v0, "connectivity"

    const/4 v6, 0x6

    const/4 v8, 0x0

    invoke-static {v0, v5, v8, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1323
    invoke-virtual {v13, v5}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1324
    invoke-virtual {v14, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1c

    .line 1327
    goto :goto_1b

    .line 1325
    :catch_1c
    move-exception v0

    goto :goto_1a

    .line 1325
    .end local v5    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_1d
    move-exception v0

    move-object/from16 v5, v44

    .line 1326
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_1a
    const-string/jumbo v6, "starting Connectivity Service"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1328
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1330
    const-string v0, "StartNsdService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1332
    :try_start_1e
    invoke-static {v2}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1f

    move-object v6, v0

    .line 1333
    .end local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    .local v6, "serviceDiscovery":Lcom/android/server/NsdService;
    :try_start_1f
    const-string/jumbo v0, "servicediscovery"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_1e

    .line 1337
    goto :goto_1d

    .line 1335
    :catch_1e
    move-exception v0

    goto :goto_1c

    .line 1335
    .end local v6    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_1f
    move-exception v0

    move-object/from16 v6, v16

    .line 1336
    .end local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_1c
    const-string/jumbo v8, "starting Service Discovery Service"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1338
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v6    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_1d
    move-object/from16 v16, v6

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1340
    const-string v0, "StartSystemUpdateManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1342
    :try_start_20
    const-string/jumbo v0, "system_update"

    new-instance v6, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v6, v2}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_20

    .line 1346
    goto :goto_1e

    .line 1344
    :catch_20
    move-exception v0

    .line 1345
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SystemUpdateManagerService"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1347
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1349
    const-string v0, "StartUpdateLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1351
    :try_start_21
    const-string/jumbo v0, "updatelock"

    new-instance v6, Lcom/android/server/UpdateLockService;

    invoke-direct {v6, v2}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_21

    .line 1355
    goto :goto_1f

    .line 1353
    :catch_21
    move-exception v0

    .line 1354
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting UpdateLockService"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1356
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1358
    const-string v0, "StartNotificationManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1359
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1360
    invoke-static {v2}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 1361
    const-string/jumbo v0, "notification"

    .line 1362
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1361
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v6

    .line 1363
    .end local v51    # "notification":Landroid/app/INotificationManager;
    .local v6, "notification":Landroid/app/INotificationManager;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1365
    const-string v0, "StartDeviceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1366
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1367
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1369
    const-string v0, "StartLocationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1371
    :try_start_22
    new-instance v0, Lcom/android/server/LocationManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_23

    move-object v8, v0

    .line 1372
    .end local v53    # "location":Lcom/android/server/LocationManagerService;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :try_start_23
    const-string/jumbo v0, "location"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_22

    .line 1375
    goto :goto_21

    .line 1373
    :catch_22
    move-exception v0

    goto :goto_20

    .line 1373
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .restart local v53    # "location":Lcom/android/server/LocationManagerService;
    :catch_23
    move-exception v0

    move-object/from16 v8, v53

    .line 1374
    .end local v53    # "location":Lcom/android/server/LocationManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :goto_20
    const-string/jumbo v10, "starting Location Manager"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1376
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_21
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1378
    const-string v0, "StartCountryDetectorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1380
    :try_start_24
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v2}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    .line 1381
    const-string v0, "country_detector"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_24

    .line 1384
    goto :goto_22

    .line 1382
    :catch_24
    move-exception v0

    .line 1383
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Country Detector"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1385
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_22
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1387
    if-nez v35, :cond_1b

    .line 1388
    const-string v0, "StartSearchManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1390
    :try_start_25
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_25

    .line 1393
    goto :goto_23

    .line 1391
    :catch_25
    move-exception v0

    .line 1392
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Search Service"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1394
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_23
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1397
    :cond_1b
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x112006c

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1398
    const-string v0, "StartWallpaperManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1399
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1400
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1403
    :cond_1c
    const-string v0, "StartAudioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1404
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1405
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1407
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.broadcastradio"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1408
    const-string v0, "StartBroadcastRadioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1409
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1410
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1413
    :cond_1d
    const-string v0, "StartDockObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1414
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1415
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1417
    if-eqz v35, :cond_1e

    .line 1418
    const-string v0, "StartThermalObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1419
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1420
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1423
    :cond_1e
    const-string v0, "StartWiredAccessoryManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1426
    :try_start_26
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v2, v4}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v4, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_26

    .line 1430
    goto :goto_24

    .line 1428
    :catch_26
    move-exception v0

    .line 1429
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting WiredAccessoryManager"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1431
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_24
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1433
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.software.midi"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1435
    const-string v0, "StartMidiManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1436
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1437
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1440
    :cond_1f
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.usb.host"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.usb.accessory"

    .line 1441
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    if-eqz v33, :cond_21

    .line 1445
    :cond_20
    const-string v0, "StartUsbService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1446
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1447
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1450
    :cond_21
    if-nez v35, :cond_22

    .line 1451
    const-string v0, "StartSerialService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1454
    :try_start_27
    new-instance v0, Lcom/android/server/SerialService;

    invoke-direct {v0, v2}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_28

    move-object v10, v0

    .line 1455
    .end local v18    # "serial":Lcom/android/server/SerialService;
    .local v10, "serial":Lcom/android/server/SerialService;
    :try_start_28
    const-string/jumbo v0, "serial"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_27

    .line 1458
    nop

    .line 1459
    move-object/from16 v56, v5

    move-object/from16 v57, v6

    goto :goto_26

    .line 1456
    :catch_27
    move-exception v0

    goto :goto_25

    .line 1456
    .end local v10    # "serial":Lcom/android/server/SerialService;
    .restart local v18    # "serial":Lcom/android/server/SerialService;
    :catch_28
    move-exception v0

    move-object/from16 v10, v18

    .line 1457
    .end local v18    # "serial":Lcom/android/server/SerialService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v10    # "serial":Lcom/android/server/SerialService;
    :goto_25
    move-object/from16 v56, v5

    const-string v5, "SystemServer"

    .line 1457
    .end local v5    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v56, "connectivity":Lcom/android/server/ConnectivityService;
    move-object/from16 v57, v6

    const-string v6, "Failure starting SerialService"

    .line 1457
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .local v57, "notification":Landroid/app/INotificationManager;
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1459
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_26
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1462
    move-object/from16 v18, v10

    goto :goto_27

    .line 1462
    .end local v10    # "serial":Lcom/android/server/SerialService;
    .end local v56    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v57    # "notification":Landroid/app/INotificationManager;
    .restart local v5    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v6    # "notification":Landroid/app/INotificationManager;
    .restart local v18    # "serial":Lcom/android/server/SerialService;
    :cond_22
    move-object/from16 v56, v5

    move-object/from16 v57, v6

    .line 1462
    .end local v5    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .restart local v56    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v57    # "notification":Landroid/app/INotificationManager;
    :goto_27
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1464
    :try_start_29
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_2a

    move-object v5, v0

    .line 1465
    .end local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v5, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_2a
    const-string v0, "hardware_properties"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_29

    .line 1469
    goto :goto_29

    .line 1467
    :catch_29
    move-exception v0

    goto :goto_28

    .line 1467
    .end local v5    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :catch_2a
    move-exception v0

    move-object/from16 v5, v22

    .line 1468
    .end local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_28
    const-string v6, "SystemServer"

    const-string v10, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v6, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1470
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v5    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_29
    move-object/from16 v22, v5

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1472
    const-string v0, "StartTwilightService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1473
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1474
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1476
    invoke-static {v2}, Lcom/android/internal/app/ColorDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1477
    const-string v0, "StartNightDisplay"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1480
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1485
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1488
    :cond_23
    const-string v0, "StartJobScheduler"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1489
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1490
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1492
    const-string v0, "StartSoundTrigger"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1493
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1494
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1496
    const-string v0, "StartTrustManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1497
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1498
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1500
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1501
    const-string v0, "StartBackupManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1502
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1503
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1506
    :cond_24
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1507
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1120058

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1508
    :cond_25
    const-string v0, "StartAppWidgerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1509
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1510
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1517
    :cond_26
    const-string v0, "StartVoiceRecognitionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1518
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1519
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1521
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1522
    const-string v0, "StartGestureLauncher"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1523
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1524
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1526
    :cond_27
    const-string v0, "StartSensorNotification"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1527
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1528
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1530
    const-string v0, "StartContextHubSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1531
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1532
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1534
    const-string v0, "StartDiskStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1536
    :try_start_2b
    const-string v0, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v2}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_2b

    .line 1539
    goto :goto_2a

    .line 1537
    :catch_2b
    move-exception v0

    .line 1538
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting DiskStats Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1540
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1546
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_28

    .line 1547
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x112006b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_2b

    :cond_28
    const/4 v0, 0x0

    :goto_2b
    move v5, v0

    .line 1549
    .local v5, "startRulesManagerService":Z
    if-eqz v5, :cond_29

    .line 1550
    const-string v0, "StartTimeZoneRulesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1551
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1552
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1555
    :cond_29
    if-nez v35, :cond_2a

    .line 1556
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1558
    :try_start_2c
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {v0, v2}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_2d

    move-object v6, v0

    .line 1559
    .end local v19    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v6, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_2d
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_2c

    .line 1562
    nop

    .line 1563
    move-object/from16 v19, v6

    goto :goto_2d

    .line 1560
    :catch_2c
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_2c

    .line 1560
    .end local v6    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v19    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_2d
    move-exception v0

    .line 1561
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_2c
    const-string/jumbo v6, "starting NetworkTimeUpdate service"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1563
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1566
    :cond_2a
    const-string v0, "StartCommonTimeManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1568
    :try_start_2e
    new-instance v0, Lcom/android/server/CommonTimeManagementService;

    invoke-direct {v0, v2}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_2f

    move-object v6, v0

    .line 1569
    .end local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v6, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_2f
    const-string v0, "commontime_management"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_2e

    .line 1572
    goto :goto_2f

    .line 1570
    :catch_2e
    move-exception v0

    goto :goto_2e

    .line 1570
    .end local v6    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_2f
    move-exception v0

    move-object/from16 v6, v20

    .line 1571
    .end local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_2e
    const-string/jumbo v10, "starting CommonTimeManagementService service"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1573
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1575
    const-string v0, "CertBlacklister"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1577
    :try_start_30
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v2}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_30

    .line 1580
    goto :goto_30

    .line 1578
    :catch_30
    move-exception v0

    .line 1579
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting CertBlacklister"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1581
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_30
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1585
    const-string v0, "StartEmergencyAffordanceService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1586
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1587
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1591
    const-string v0, "StartDreamManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1592
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1593
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1595
    const-string v0, "AddGraphicsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1596
    const-string v0, "graphicsstats"

    new-instance v10, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v10, v2}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1598
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1600
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_2b

    .line 1601
    const-string v0, "AddCoverageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1602
    const-string v0, "coverage"

    new-instance v10, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v10}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1603
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1608
    :cond_2b
    const-string v0, "AddOemExService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1609
    new-instance v0, Lcom/android/server/OemExService;

    invoke-direct {v0, v2}, Lcom/android/server/OemExService;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 1610
    .end local v23    # "mOemExService":Lcom/android/server/OemExService;
    .local v10, "mOemExService":Lcom/android/server/OemExService;
    const-string v0, "OEMExService"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1611
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1616
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10, v0}, Lcom/android/server/OemExService;->setActivityManager(Lcom/android/server/am/ActivityManagerService;)V

    .line 1620
    const-string v0, "AddOnePlusNfcService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1621
    new-instance v0, Lcom/android/server/OnePlusNfcService;

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusNfcService;-><init>(Landroid/content/Context;)V

    move-object/from16 v58, v0

    .line 1622
    .end local v26    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .local v58, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    const-string v0, "OnePlusNfcService"

    move/from16 v59, v5

    move-object/from16 v5, v58

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1623
    .end local v58    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .local v5, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .local v59, "startRulesManagerService":Z
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1626
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v60, v5

    const-string v5, "android.software.print"

    .line 1626
    .end local v5    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .local v60, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1627
    const-string v0, "StartPrintManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1628
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1629
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1632
    :cond_2c
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.companion_device_setup"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1633
    const-string v0, "StartCompanionDeviceManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1634
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1635
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1638
    :cond_2d
    const-string v0, "StartRestrictionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1639
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1640
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1642
    const-string v0, "StartMediaSessionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1643
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1644
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1646
    const-string v0, "StartMediaUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1647
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaUpdateService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1648
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1650
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1651
    const-string v0, "StartHdmiControlService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1652
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1653
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1656
    :cond_2e
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.leanback"

    .line 1657
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1658
    :cond_2f
    const-string v0, "StartTvInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1659
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1660
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1663
    :cond_30
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.picture_in_picture"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1664
    const-string v0, "StartMediaResourceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1665
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1666
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1669
    :cond_31
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.leanback"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1670
    const-string v0, "StartTvRemoteService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1671
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1672
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1675
    :cond_32
    const-string v0, "StartMediaRouterService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1677
    :try_start_31
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v2}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_32

    move-object v5, v0

    .line 1678
    .end local v38    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v5, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_32
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_31

    .line 1681
    nop

    .line 1682
    move-object/from16 v61, v5

    goto :goto_32

    .line 1679
    :catch_31
    move-exception v0

    goto :goto_31

    .line 1679
    .end local v5    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v38    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_32
    move-exception v0

    move-object/from16 v5, v38

    .line 1680
    .end local v38    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_31
    move-object/from16 v61, v5

    const-string/jumbo v5, "starting MediaRouterService"

    .line 1680
    .end local v5    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v61, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1682
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_32
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1684
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.fingerprint"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1685
    const-string v0, "StartFingerprintSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1686
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1687
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1690
    :cond_33
    const-string v0, "StartBackgroundDexOptService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1692
    :try_start_33
    invoke-static {v2}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_33

    .line 1695
    goto :goto_33

    .line 1693
    :catch_33
    move-exception v0

    move-object v5, v0

    .line 1694
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting StartBackgroundDexOptService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1696
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_33
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1698
    const-string v0, "StartPruneInstantAppsJobService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1700
    :try_start_34
    invoke-static {v2}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_34

    .line 1703
    goto :goto_34

    .line 1701
    :catch_34
    move-exception v0

    move-object v5, v0

    .line 1702
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v5, "StartPruneInstantAppsJobService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1704
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_34
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1707
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1708
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1709
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1711
    const-string v0, "StartLauncherAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1712
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1713
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1715
    const-string v0, "StartCrossProfileAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1716
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1717
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1720
    const-string v0, "SystemServer"

    const-string v5, "Secrecy Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/secrecy/SecrecyService;

    iput-object v0, v3, Lcom/android/server/SystemServer;->mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

    .line 1725
    .end local v49    # "hasPdb":Z
    .end local v59    # "startRulesManagerService":Z
    move-object/from16 v41, v6

    move-object/from16 v53, v8

    move-object/from16 v44, v9

    move-object/from16 v43, v10

    move-object/from16 v20, v11

    move-object/from16 v23, v13

    move-object/from16 v26, v14

    move-object/from16 v14, v17

    move-object/from16 v38, v19

    move-object/from16 v42, v22

    move-object/from16 v13, v27

    move-object/from16 v47, v50

    move-object/from16 v51, v57

    move-object/from16 v22, v12

    move-object/from16 v27, v16

    move-object/from16 v12, v28

    move-object/from16 v28, v18

    goto :goto_35

    .end local v10    # "mOemExService":Lcom/android/server/OemExService;
    .end local v50    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v56    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v57    # "notification":Landroid/app/INotificationManager;
    .end local v60    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .end local v61    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v6, "notification":Landroid/app/INotificationManager;
    .restart local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v23    # "mOemExService":Lcom/android/server/OemExService;
    .restart local v26    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .restart local v38    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_34
    move-object/from16 v51, v6

    move-object/from16 v53, v8

    move-object/from16 v41, v20

    move-object/from16 v42, v22

    move-object/from16 v43, v23

    move-object/from16 v60, v26

    move-object/from16 v61, v38

    move-object/from16 v56, v44

    move-object/from16 v44, v9

    move-object/from16 v20, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v26, v14

    move-object/from16 v14, v17

    move-object/from16 v38, v19

    move-object/from16 v13, v27

    move-object/from16 v12, v28

    move-object/from16 v27, v16

    move-object/from16 v28, v18

    .end local v6    # "notification":Landroid/app/INotificationManager;
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .end local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v11    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v17    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v18    # "serial":Lcom/android/server/SerialService;
    .end local v19    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v12, "wigigService":Ljava/lang/Object;
    .local v13, "wigigP2pService":Ljava/lang/Object;
    .local v14, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v20, "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v22, "ipSecService":Lcom/android/server/IpSecService;
    .local v23, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v26, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v27, "serviceDiscovery":Lcom/android/server/NsdService;
    .local v28, "serial":Lcom/android/server/SerialService;
    .local v38, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v41, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v42, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v43, "mOemExService":Lcom/android/server/OemExService;
    .local v44, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v51    # "notification":Landroid/app/INotificationManager;
    .restart local v53    # "location":Lcom/android/server/LocationManagerService;
    .restart local v56    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v60    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .restart local v61    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_35
    if-nez v35, :cond_35

    .line 1726
    const-string v0, "StartMediaProjectionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1727
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1728
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1731
    :cond_35
    if-eqz v35, :cond_37

    .line 1732
    const-string v0, "StartWearConfigService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1733
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.WearConfigManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1734
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1736
    const-string v0, "StartWearConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1737
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1738
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1740
    const-string v0, "StartWearTimeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1741
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1742
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1743
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1745
    if-eqz v32, :cond_36

    .line 1746
    const-string v0, "StartWearLeftyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1747
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1748
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1751
    :cond_36
    const-string v0, "StartWearGlobalActionsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1752
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1753
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1756
    :cond_37
    if-nez v31, :cond_38

    .line 1757
    const-string v0, "StartSliceManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1758
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1759
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1762
    :cond_38
    if-nez v30, :cond_39

    .line 1763
    const-string v0, "StartCameraServiceProxy"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1764
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1765
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1768
    :cond_39
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.type.embedded"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1769
    const-string v0, "StartIoTSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1770
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.things.services.IoTSystemService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1771
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1775
    :cond_3a
    const-string v0, "StartStatsCompanionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1776
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/stats/StatsCompanionService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1777
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1781
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v11

    .line 1782
    .local v11, "safeMode":Z
    if-eqz v11, :cond_3b

    .line 1783
    const-string v0, "EnterSafeModeAndDisableJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1784
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1786
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1787
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_36

    .line 1790
    :cond_3b
    const-string v0, "StartJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1791
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 1792
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1796
    :goto_36
    const-string v0, "StartMmsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1797
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/MmsServiceBroker;

    .line 1798
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1800
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.autofill"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1801
    const-string v0, "StartAutoFillService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1802
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1803
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1808
    :cond_3c
    const-string v0, "MakeVibratorServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1810
    :try_start_35
    invoke-virtual {v7}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_35

    .line 1813
    goto :goto_37

    .line 1811
    :catch_35
    move-exception v0

    move-object v5, v0

    .line 1812
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Vibrator Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1814
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_37
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1816
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1817
    if-eqz v14, :cond_3d

    .line 1819
    :try_start_36
    invoke-interface {v14}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_36

    .line 1822
    goto :goto_38

    .line 1820
    :catch_36
    move-exception v0

    move-object v5, v0

    .line 1821
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Lock Settings Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1824
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3d
    :goto_38
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1827
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1828
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1829
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1831
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1832
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1833
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1837
    if-eqz v34, :cond_3e

    .line 1839
    :try_start_37
    const-string v0, "SystemServer"

    const-string v6, "calling onBootPhase for Wigig Services"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1841
    .local v0, "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v6, "onBootPhase"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v0, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1842
    .local v6, "m":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v6, v13, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 1846
    .local v8, "wigigClass":Ljava/lang/Class;
    const-string/jumbo v9, "onBootPhase"

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v10, v5, v16

    invoke-virtual {v8, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1847
    .end local v6    # "m":Ljava/lang/reflect/Method;
    .local v5, "m":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    const/16 v10, 0x1f4

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v9, v6, v10

    invoke-virtual {v5, v12, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_37

    .line 1851
    .end local v0    # "wigigP2pClass":Ljava/lang/Class;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local v8    # "wigigClass":Ljava/lang/Class;
    goto :goto_39

    .line 1849
    :catch_37
    move-exception v0

    .line 1850
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "Wigig services ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1854
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3e
    :goto_39
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1857
    :try_start_38
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_38

    .line 1860
    goto :goto_3a

    .line 1858
    :catch_38
    move-exception v0

    move-object v5, v0

    .line 1859
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Window Manager Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1861
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1863
    if-eqz v11, :cond_3f

    .line 1864
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1870
    :cond_3f
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v9

    .line 1871
    .local v9, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v6, v0

    .line 1872
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v0, "window"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 1873
    .local v8, "w":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1874
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1877
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1878
    .local v5, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_40

    .line 1879
    invoke-virtual {v5}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1882
    :cond_40
    const-string v0, "MakePowerManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1885
    :try_start_39
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget-object v10, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_39

    .line 1888
    goto :goto_3b

    .line 1886
    :catch_39
    move-exception v0

    .line 1887
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "making Power Manager Service ready"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1889
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1894
    :try_start_3a
    const-string v0, "SystemServer"

    const-string v10, "Secrecy systemReady"

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v0}, Lcom/android/server/secrecy/SecrecyService;->systemReady()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_3a

    .line 1898
    goto :goto_3c

    .line 1896
    :catch_3a
    move-exception v0

    .line 1897
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "making secrecy Service ready"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1901
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string v0, "MakePackageManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1902
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 1903
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1905
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1908
    :try_start_3b
    iget-object v0, v3, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v10, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v11, v10}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_3b

    .line 1911
    goto :goto_3d

    .line 1909
    :catch_3b
    move-exception v0

    .line 1910
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "making Display Manager Service ready"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1912
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1914
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 1917
    const-string v0, "StartDeviceSpecificServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1918
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x1070022

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 1920
    .local v10, "classes":[Ljava/lang/String;
    move-object/from16 v65, v2

    array-length v2, v10

    .line 1920
    .end local v2    # "context":Landroid/content/Context;
    .local v65, "context":Landroid/content/Context;
    move-object/from16 v66, v5

    const/4 v5, 0x0

    .line 1920
    .end local v5    # "systemTheme":Landroid/content/res/Resources$Theme;
    .local v66, "systemTheme":Landroid/content/res/Resources$Theme;
    :goto_3e
    if-ge v5, v2, :cond_41

    move/from16 v67, v2

    aget-object v2, v10, v5

    .line 1921
    .local v2, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v68, v6

    const-string v6, "StartDeviceSpecificServices "

    .line 1921
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .local v68, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1923
    :try_start_3c
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_3c

    .line 1926
    nop

    .line 1927
    move-object/from16 v69, v7

    goto :goto_3f

    .line 1924
    :catch_3c
    move-exception v0

    .line 1925
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v69, v7

    const-string/jumbo v7, "starting "

    .line 1925
    .end local v7    # "vibrator":Lcom/android/server/VibratorService;
    .local v69, "vibrator":Lcom/android/server/VibratorService;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1927
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1920
    .end local v2    # "className":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v67

    move-object/from16 v6, v68

    move-object/from16 v7, v69

    goto :goto_3e

    .line 1929
    .end local v68    # "metrics":Landroid/util/DisplayMetrics;
    .end local v69    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "vibrator":Lcom/android/server/VibratorService;
    :cond_41
    move-object/from16 v68, v6

    move-object/from16 v69, v7

    .line 1929
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v68    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v69    # "vibrator":Lcom/android/server/VibratorService;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1931
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1932
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v2, 0x208

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1933
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1936
    move-object/from16 v45, v48

    move-object/from16 v46, v66

    move-object/from16 v5, v20

    .line 1937
    .end local v48    # "lastVersion":Ljava/lang/String;
    .end local v66    # "systemTheme":Landroid/content/res/Resources$Theme;
    .local v5, "networkManagementF":Lcom/android/server/NetworkManagementService;
    .local v45, "lastVersion":Ljava/lang/String;
    .local v46, "systemTheme":Landroid/content/res/Resources$Theme;
    move-object/from16 v48, v8

    move-object/from16 v8, v23

    .line 1938
    .local v8, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .local v48, "w":Landroid/view/WindowManager;
    move-object/from16 v49, v68

    move-object/from16 v6, v26

    .line 1939
    .end local v68    # "metrics":Landroid/util/DisplayMetrics;
    .local v6, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v49, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v50, v9

    move-object/from16 v9, v56

    .line 1940
    .local v9, "connectivityF":Lcom/android/server/ConnectivityService;
    .local v50, "config":Landroid/content/res/Configuration;
    move-object/from16 v52, v10

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object/from16 v10, v53

    .line 1941
    .local v10, "locationF":Lcom/android/server/LocationManagerService;
    .local v52, "classes":[Ljava/lang/String;
    move/from16 v54, v11

    move-object/from16 v11, v44

    .line 1942
    .local v11, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .local v54, "safeMode":Z
    move-object/from16 v55, v12

    move-object/from16 v12, v38

    .line 1943
    .local v12, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .local v55, "wigigService":Ljava/lang/Object;
    move-object/from16 v57, v13

    move-object/from16 v13, v41

    .line 1944
    .local v13, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .local v57, "wigigP2pService":Ljava/lang/Object;
    move-object/from16 v58, v14

    move-object v14, v4

    .line 1945
    .local v14, "inputManagerF":Lcom/android/server/input/InputManagerService;
    .local v58, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    move/from16 v62, v2

    move v2, v7

    move-object/from16 v59, v15

    move-object/from16 v15, v36

    .line 1946
    .local v15, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .local v59, "curVersion":Ljava/lang/String;
    move-object/from16 v16, v61

    .line 1947
    .local v16, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v17, v21

    .line 1948
    .local v17, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v63, v69

    move-object/from16 v7, v22

    .line 1949
    .end local v69    # "vibrator":Lcom/android/server/VibratorService;
    .local v7, "ipSecServiceF":Lcom/android/server/IpSecService;
    .local v63, "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v64, v4

    move-object v4, v1

    .line 1953
    .local v4, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .local v64, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v18, v43

    .line 1957
    .local v18, "mOemExServiceF":Lcom/android/server/OemExService;
    move-object/from16 v19, v60

    .line 1965
    .local v19, "mOnePlusNfcServiceF":Lcom/android/server/OnePlusNfcService;
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v70, v0

    new-instance v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;

    move-object/from16 v66, v1

    move-object v1, v0

    .line 1965
    .end local v1    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v66, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object v2, v3

    move-object/from16 v3, v65

    invoke-direct/range {v1 .. v19}, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/OemExService;Lcom/android/server/OnePlusNfcService;)V

    sget-object v1, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    move-object/from16 v2, v70

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V

    .line 2170
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/16 v1, 0x2c

    aput v1, v0, v62

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2171
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPCBNumber()V

    goto :goto_40

    .line 2173
    :cond_42
    move-object/from16 v1, p0

    :goto_40
    return-void
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 2176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2177
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2179
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2181
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2182
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 2183
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2186
    const-string v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2188
    return-void
.end method

.method private static traceEnd()V
    .locals 1

    .line 2191
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2192
    return-void
.end method
