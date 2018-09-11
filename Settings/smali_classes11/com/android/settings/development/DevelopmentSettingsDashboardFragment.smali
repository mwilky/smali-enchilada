.class public Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "DevelopmentSettingsDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/development/OemUnlockDialogHost;
.implements Lcom/android/settings/development/AdbDialogHost;
.implements Lcom/android/settings/development/AdbClearKeysDialogHost;
.implements Lcom/android/settings/development/LogPersistDialogHost;
.implements Lcom/android/settings/development/BluetoothA2dpHwOffloadRebootDialog$OnA2dpHwDialogConfirmedListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "DevSettingsDashboard"

.field private static mOemController:Lcom/android/settings/development/OemUnlockPreferenceController;


# instance fields
.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

.field private final mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private final mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAvailable:Z

.field private mLastConnectedBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mPreferenceControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchBarController:Lcom/android/settings/development/DevelopmentSwitchBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 518
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4;

    invoke-direct {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$4;-><init>()V

    sput-object v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 146
    const-string v0, "no_debugging_features"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-direct {v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mIsAvailable:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    .line 80
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$1;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$2;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 57
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Lcom/android/settings/development/BluetoothA2dpConfigStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 57
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 57
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .line 57
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .line 57
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mLastConnectedBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$400(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "x3"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
    .param p4, "x4"    # Lcom/android/settings/development/BluetoothA2dpConfigStore;

    .line 57
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "fragment"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
    .param p4, "bluetoothA2dpConfigStore"    # Lcom/android/settings/development/BluetoothA2dpConfigStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;",
            "Lcom/android/settings/development/BluetoothA2dpConfigStore;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v0, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v1, Lcom/android/settings/development/MemoryUsagePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/MemoryUsagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v1, Lcom/android/settings/development/BugReportPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BugReportPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v1, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v1, Lcom/android/settings/development/OPGetLogsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/OPGetLogsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v1, Lcom/android/settings/development/OPAdvancedRebootPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/OPAdvancedRebootPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v1, Lcom/android/settings/development/OPWifiVerboseMultiBroadcastPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/OPWifiVerboseMultiBroadcastPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v1, Lcom/android/settings/development/StayAwakePreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/StayAwakePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v1, Lcom/android/settings/development/HdcpCheckingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HdcpCheckingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v1, Lcom/android/settings/development/DarkUIPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DarkUIPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v1, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothSnoopLogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v1, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/settings/development/OemUnlockPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    sput-object v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mOemController:Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 426
    sget-object v1, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mOemController:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v1, Lcom/android/settings/development/FileEncryptionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/FileEncryptionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v1, Lcom/android/settings/development/PictureColorModePreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/development/PictureColorModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v1, Lcom/android/settings/development/WebViewAppPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WebViewAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v1, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/CoolColorTemperaturePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v1, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DisableAutomaticUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v1, Lcom/android/settings/development/AdbPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/AdbPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance v1, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/ClearAdbKeysPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v1, Lcom/android/settings/development/LocalTerminalPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v1, Lcom/android/settings/development/BugReportInPowerPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BugReportInPowerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    new-instance v1, Lcom/android/settings/development/MockLocationAppPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/MockLocationAppPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v1, Lcom/android/settings/development/DebugViewAttributesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DebugViewAttributesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v1, Lcom/android/settings/development/SelectDebugAppPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/SelectDebugAppPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v1, Lcom/android/settings/development/WaitForDebuggerPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v1, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EnableGpuDebugLayersPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v1, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/VerifyAppsOverUsbPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v1, Lcom/android/settings/development/LogdSizePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/LogdSizePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v1, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-direct {v1, p0, p3, p2}, Lcom/android/settings/development/LogPersistPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v1, Lcom/android/settings/development/CameraLaserSensorPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/CameraLaserSensorPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    new-instance v1, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiDisplayCertificationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    new-instance v1, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiCoverageExtendPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v1, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiVerboseLoggingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    new-instance v1, Lcom/android/settings/development/WifiConnectedMacRandomizationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WifiConnectedMacRandomizationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    new-instance v1, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/MobileDataAlwaysOnPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    new-instance v1, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/TetheringHardwareAccelPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    new-instance v1, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothDeviceNoNamePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    new-instance v1, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothAbsoluteVolumePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v1, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothAvrcpVersionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    new-instance v1, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v1, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    new-instance v1, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v1, Lcom/android/settings/development/BluetoothAudioBitsPerSamplePreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioBitsPerSamplePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v1, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioChannelModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v1, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;

    invoke-direct {v1, p0, p2, p4}, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v1, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v1, Lcom/android/settings/development/ShowTapsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowTapsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v1, Lcom/android/settings/development/PointerLocationPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/PointerLocationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v1, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v1, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v1, Lcom/android/settings/development/RtlLayoutPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/RtlLayoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v1, Lcom/android/settings/development/WindowAnimationScalePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/WindowAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v1, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v1, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/TransitionAnimationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v1, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AnimatorDurationScalePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v1, Lcom/android/settings/development/SecondaryDisplayPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/SecondaryDisplayPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v1, Lcom/android/settings/development/ForceGpuRenderingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ForceGpuRenderingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v1, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/GpuViewUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v1, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HardwareLayersUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v1, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DebugGpuOverdrawPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v1, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/DebugNonRectClipOperationsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v1, Lcom/android/settings/development/ForceMSAAPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ForceMSAAPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v1, Lcom/android/settings/development/HardwareOverlaysPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/HardwareOverlaysPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v1, Lcom/android/settings/development/SimulateColorSpacePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v1, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/UsbAudioRoutingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v1, Lcom/android/settings/development/StrictModePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/StrictModePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v1, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ProfileGpuRenderingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v1, Lcom/android/settings/development/KeepActivitiesPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/KeepActivitiesPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v1, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/BackgroundProcessLimitPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v1, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShowFirstCrashDialogPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance v1, Lcom/android/settings/development/AppsNotRespondingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AppsNotRespondingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v1, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/NotificationChannelWarningsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v1, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/AllowAppsOnExternalPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance v1, Lcom/android/settings/development/ResizableActivityPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ResizableActivityPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v1, Lcom/android/settings/development/FreeformWindowsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/FreeformWindowsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    new-instance v1, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v1, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/development/EnableGnssRawMeasFullTrackingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "running_apps"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "demo_mode"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "quick_settings_tiles"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "feature_flags_dashboard"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "default_usb_configuration"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "density"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "background_check"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    new-instance v1, Lcom/android/settings/development/DefaultLaunchPreferenceController;

    const-string v2, "inactive_apps"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/development/DefaultLaunchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    return-object v0
.end method

.method private disableDeveloperOptions()V
    .locals 4

    .line 381
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    return-void

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 385
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    .line 386
    .local v0, "poker":Lcom/android/settingslib/development/SystemPropPoker;
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->blockPokes()V

    .line 387
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 388
    .local v2, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v3, v2, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    if-eqz v3, :cond_1

    .line 389
    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    .line 390
    invoke-virtual {v3}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsDisabled()V

    .line 392
    .end local v2    # "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    :cond_1
    goto :goto_0

    .line 393
    :cond_2
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->unblockPokes()V

    .line 394
    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 395
    return-void
.end method

.method private enableDeveloperOptions()V
    .locals 3

    .line 369
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    return-void

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    .line 373
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 374
    .local v1, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v2, v1, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    if-eqz v2, :cond_1

    .line 375
    move-object v2, v1

    check-cast v2, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;

    invoke-virtual {v2}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsEnabled()V

    .line 377
    .end local v1    # "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    :cond_1
    goto :goto_0

    .line 378
    :cond_2
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settingslib.development.AbstractEnableAdbController.ENABLE_ADB_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 358
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 359
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 361
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mEnableAdbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 366
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 343
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    .line 345
    const/4 v0, 0x0

    return-object v0

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v2, Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-direct {v2}, Lcom/android/settings/development/BluetoothA2dpConfigStore;-><init>()V

    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/development/BluetoothA2dpConfigStore;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    .line 350
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    return-object v0
.end method

.method getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 512
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 333
    const/4 v0, 0x0

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 328
    const-string v0, "DevSettingsDashboard"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 233
    const/16 v0, 0x27

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 338
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1600a0

    goto :goto_0

    :cond_0
    const v0, 0x7f160044

    :goto_0
    return v0
.end method

.method public onA2dpHwDialogConfirmed()V
    .locals 1

    .line 304
    const-class v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;

    .line 306
    .local v0, "controller":Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->onA2dpHwDialogConfirmed()V

    .line 307
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 160
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->setIfOnlyAvailableForAdmins(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 176
    new-instance v0, Lcom/android/settings/development/DevelopmentSwitchBarController;

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v2, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mIsAvailable:Z

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/development/DevelopmentSwitchBarController;-><init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settings/widget/SwitchBar;ZLcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBarController:Lcom/android/settings/development/DevelopmentSwitchBarController;

    .line 178
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->enableDeveloperOptions()V

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    .line 186
    :goto_0
    return-void

    .line 166
    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mIsAvailable:Z

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12053f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 172
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "handledResult":Z
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mPreferenceControllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 313
    .local v2, "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    instance-of v3, v2, Lcom/android/settings/development/OnActivityResultListener;

    if-eqz v3, :cond_0

    .line 316
    move-object v3, v2

    check-cast v3, Lcom/android/settings/development/OnActivityResultListener;

    .line 317
    invoke-interface {v3, p1, p2, p3}, Lcom/android/settings/development/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 320
    .end local v2    # "controller":Lcom/android/settingslib/core/AbstractPreferenceController;
    :cond_0
    goto :goto_0

    .line 321
    :cond_1
    if-nez v0, :cond_2

    .line 322
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 324
    :cond_2
    return-void
.end method

.method public onAdbClearKeysDialogConfirmed()V
    .locals 1

    .line 283
    const-class v0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/ClearAdbKeysPreferenceController;

    .line 285
    .local v0, "controller":Lcom/android/settings/development/ClearAdbKeysPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/ClearAdbKeysPreferenceController;->onClearAdbKeysConfirmed()V

    .line 286
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 151
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 154
    return-void

    .line 156
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 191
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->registerReceivers()V

    .line 193
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 198
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    const-string v1, "DevSettingsDashboard"

    const-string v2, "bluetooth on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 208
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDestroyView()V
    .locals 4

    .line 213
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroyView()V

    .line 214
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->unregisterReceivers()V

    .line 216
    sget-object v0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mOemController:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->unBindSimlockConnection()V

    .line 218
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 219
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    .line 220
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 222
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mLastConnectedBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mLastConnectedBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eq v1, v3, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mLastConnectedBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 225
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mLastConnectedBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 227
    iput-object v1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 229
    :cond_1
    return-void
.end method

.method public onDisableLogPersistDialogConfirmed()V
    .locals 1

    .line 290
    const-class v0, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 292
    .local v0, "controller":Lcom/android/settings/development/LogPersistPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/LogPersistPreferenceController;->onDisableLogPersistDialogConfirmed()V

    .line 293
    return-void
.end method

.method public onDisableLogPersistDialogRejected()V
    .locals 1

    .line 297
    const-class v0, Lcom/android/settings/development/LogPersistPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/LogPersistPreferenceController;

    .line 299
    .local v0, "controller":Lcom/android/settings/development/LogPersistPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/LogPersistPreferenceController;->onDisableLogPersistDialogRejected()V

    .line 300
    return-void
.end method

.method public onEnableAdbDialogConfirmed()V
    .locals 1

    .line 268
    const-class v0, Lcom/android/settings/development/AdbPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/AdbPreferenceController;

    .line 270
    .local v0, "controller":Lcom/android/settings/development/AdbPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/AdbPreferenceController;->onAdbDialogConfirmed()V

    .line 272
    return-void
.end method

.method public onEnableAdbDialogDismissed()V
    .locals 1

    .line 276
    const-class v0, Lcom/android/settings/development/AdbPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/AdbPreferenceController;

    .line 278
    .local v0, "controller":Lcom/android/settings/development/AdbPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/AdbPreferenceController;->onAdbDialogDismissed()V

    .line 279
    return-void
.end method

.method onEnableDevelopmentOptionsConfirmed()V
    .locals 0

    .line 398
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->enableDeveloperOptions()V

    .line 399
    return-void
.end method

.method onEnableDevelopmentOptionsRejected()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 404
    return-void
.end method

.method public onOemUnlockDialogConfirmed()V
    .locals 1

    .line 254
    const-class v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 256
    .local v0, "controller":Lcom/android/settings/development/OemUnlockPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->onOemUnlockConfirmed()V

    .line 257
    return-void
.end method

.method public onOemUnlockDialogDismissed()V
    .locals 1

    .line 261
    const-class v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getDevelopmentOptionsController(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 263
    .local v0, "controller":Lcom/android/settings/development/OemUnlockPreferenceController;
    invoke-virtual {v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->onOemUnlockDismissed()V

    .line 264
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .line 238
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    nop

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 243
    .local v0, "developmentEnabledState":Z
    if-eq p2, v0, :cond_2

    .line 244
    if-eqz p2, :cond_1

    .line 245
    invoke-static {p0}, Lcom/android/settings/development/EnableDevelopmentSettingWarningDialog;->show(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->disableDeveloperOptions()V

    .line 250
    :cond_2
    :goto_0
    return-void
.end method
