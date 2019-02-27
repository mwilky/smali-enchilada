.class public final Landroid/os/PowerManager;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerManager$WakeLock;,
        Landroid/os/PowerManager$LocationPowerSaveMode;,
        Landroid/os/PowerManager$ServiceType;,
        Landroid/os/PowerManager$ShutdownReason;
    }
.end annotation


# static fields
.field public static final ACQUIRE_CAUSES_WAKEUP:I = 0x10000000

.field public static final ACTION_DEVICE_IDLE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.DEVICE_IDLE_MODE_CHANGED"

.field public static final ACTION_LIGHT_DEVICE_IDLE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

.field public static final ACTION_POWER_SAVE_MODE_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGED"

.field public static final ACTION_POWER_SAVE_MODE_CHANGED_INTERNAL:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGED_INTERNAL"

.field public static final ACTION_POWER_SAVE_MODE_CHANGING:Ljava/lang/String; = "android.os.action.POWER_SAVE_MODE_CHANGING"

.field public static final ACTION_POWER_SAVE_TEMP_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_TEMP_WHITELIST_CHANGED"

.field public static final ACTION_POWER_SAVE_WHITELIST_CHANGED:Ljava/lang/String; = "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

.field public static final ACTION_SCREEN_BRIGHTNESS_BOOST_CHANGED:Ljava/lang/String; = "android.os.action.SCREEN_BRIGHTNESS_BOOST_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BRIGHTNESS_DEFAULT:I = -0x1

.field public static final BRIGHTNESS_OFF:I = 0x0

.field public static final BRIGHTNESS_ON:I

.field public static final DOZE_WAKE_LOCK:I = 0x40

.field public static final DRAW_WAKE_LOCK:I = 0x80

.field public static final EXTRA_POWER_SAVE_MODE:Ljava/lang/String; = "mode"

.field public static final FULL_WAKE_LOCK:I = 0x1a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GO_TO_SLEEP_FLAG_NO_DOZE:I = 0x1

.field public static final GO_TO_SLEEP_REASON_ACCESSIBILITY:I = 0x7

.field public static final GO_TO_SLEEP_REASON_APPLICATION:I = 0x0

.field public static final GO_TO_SLEEP_REASON_DEVICE_ADMIN:I = 0x1

.field public static final GO_TO_SLEEP_REASON_FINGERPRINT:I = 0xb

.field public static final GO_TO_SLEEP_REASON_HDMI:I = 0x5

.field public static final GO_TO_SLEEP_REASON_LID_SWITCH:I = 0x3

.field public static final GO_TO_SLEEP_REASON_POWER_BUTTON:I = 0x4

.field public static final GO_TO_SLEEP_REASON_PROXIMITY:I = 0x8

.field public static final GO_TO_SLEEP_REASON_SLEEP_BUTTON:I = 0x6

.field public static final GO_TO_SLEEP_REASON_TIMEOUT:I = 0x2

.field public static final LOCATION_MODE_ALL_DISABLED_WHEN_SCREEN_OFF:I = 0x2

.field public static final LOCATION_MODE_FOREGROUND_ONLY:I = 0x3

.field public static final LOCATION_MODE_GPS_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field public static final LOCATION_MODE_NO_CHANGE:I = 0x0

.field public static final ON_AFTER_RELEASE:I = 0x20000000

.field public static final PARTIAL_WAKE_LOCK:I = 0x1

.field public static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final REBOOT_QUIESCENT:Ljava/lang/String; = "quiescent"

.field public static final REBOOT_RECOVERY:Ljava/lang/String; = "recovery"

.field public static final REBOOT_RECOVERY_UPDATE:Ljava/lang/String; = "recovery-update"

.field public static final REBOOT_REQUESTED_BY_DEVICE_OWNER:Ljava/lang/String; = "deviceowner"

.field public static final REBOOT_SAFE_MODE:Ljava/lang/String; = "safemode"

.field public static final RELEASE_FLAG_TIMEOUT:I = 0x10000

.field public static final RELEASE_FLAG_WAIT_FOR_NO_PROXIMITY:I = 0x1

.field public static final SCREEN_BRIGHT_WAKE_LOCK:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCREEN_DIM_WAKE_LOCK:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCREEN_OFF_REASON:Ljava/lang/String; = "screenoff_reason"

.field public static final SHUTDOWN_BATTERY_THERMAL_STATE:Ljava/lang/String; = "thermal,battery"

.field public static final SHUTDOWN_LOW_BATTERY:Ljava/lang/String; = "battery"

.field public static final SHUTDOWN_REASON_BATTERY_THERMAL:I = 0x6

.field public static final SHUTDOWN_REASON_LOW_BATTERY:I = 0x5

.field public static final SHUTDOWN_REASON_REBOOT:I = 0x2

.field public static final SHUTDOWN_REASON_SHUTDOWN:I = 0x1

.field public static final SHUTDOWN_REASON_THERMAL_SHUTDOWN:I = 0x4

.field public static final SHUTDOWN_REASON_UNKNOWN:I = 0x0

.field public static final SHUTDOWN_REASON_USER_REQUESTED:I = 0x3

.field public static final SHUTDOWN_USER_REQUESTED:Ljava/lang/String; = "userrequested"

.field private static final TAG:Ljava/lang/String; = "PowerManager"

.field public static final UNIMPORTANT_FOR_LOGGING:I = 0x40000000

.field public static final USER_ACTIVITY_EVENT_ACCESSIBILITY:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_ACTIVITY_EVENT_BUTTON:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_ACTIVITY_EVENT_OTHER:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_ACTIVITY_EVENT_TOUCH:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_ACTIVITY_FLAG_INDIRECT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_ACTIVITY_FLAG_NO_CHANGE_LIGHTS:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WAKE_LOCK_LEVEL_MASK:I = 0xffff


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field mIDeviceIdleController:Landroid/os/IDeviceIdleController;

.field final mService:Landroid/os/IPowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/PowerManager;->getMaxBrightness()I

    move-result v0

    sput v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IPowerManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iput-object p3, p0, Landroid/os/PowerManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static getMaxBrightness()I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x69

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3ff

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/16 v0, 0xff

    const-string v1, "PowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to getBrightnessValue Value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public static validateWakeLockParameters(ILjava/lang/String;)V
    .locals 2

    const v0, 0xffff

    and-int/2addr v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a valid wake lock level."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    nop

    if-eqz p1, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The tag must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public boostScreenBrightness(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->boostScreenBrightness(J)V
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

.method public getDefaultButtonBrightness()I
    .locals 2

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getDefaultScreenBrightnessForVrSetting()I
    .locals 2

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getDefaultScreenBrightnessSetting()I
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/16 v2, 0x3ff

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getLastShutdownReason()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getLastShutdownReason()I

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

.method public getLocationPowerSaveMode()I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v1, v0, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget v1, v0, Landroid/os/PowerSaveState;->gpsMode:I

    return v1
.end method

.method public getMaximumScreenBrightnessForVrSetting()I
    .locals 2

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMaximumScreenBrightnessSetting()I
    .locals 3

    const/4 v0, 0x0

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/16 v2, 0x3ff

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getMinimumScreenBrightnessForVrSetting()I
    .locals 2

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getMinimumScreenBrightnessSetting()I
    .locals 2

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getPowerSaveState(I)Landroid/os/PowerSaveState;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

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

.method public goToSleep(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method public goToSleep(JII)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IPowerManager;->goToSleep(JII)V
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

.method public isDeviceIdleMode()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isDeviceIdleMode()Z

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

.method public isIgnoringBatteryOptimizations(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mIDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-nez v0, :cond_0

    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PowerManager;->mIDeviceIdleController:Landroid/os/IDeviceIdleController;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Landroid/os/PowerManager;->mIDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->isPowerSaveWhitelistApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public isInteractive()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isInteractive()Z

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

.method public isLightDeviceIdleMode()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isLightDeviceIdleMode()Z

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

.method public isPowerSaveMode()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->isPowerSaveMode()Z

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

.method public isScreenBrightnessBoosted()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isScreenOn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method public isSustainedPerformanceModeSupported()Z
    .locals 2

    iget-object v0, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isWakeLockLevelSupported(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->isWakeLockLevelSupported(I)Z

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

.method public nap(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IPowerManager;->nap(J)V
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

.method public newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 2

    invoke-static {p1, p2}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    new-instance v0, Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/os/PowerManager$WakeLock;-><init>(Landroid/os/PowerManager;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public reboot(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
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

.method public rebootSafeMode()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/os/IPowerManager;->rebootSafeMode(ZZ)V
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

.method public setDozeAfterScreenOff(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setDozeAfterScreenOff(Z)V
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

.method public setPowerSaveMode(Z)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setPowerSaveMode(Z)Z

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

.method public shutdown(ZLjava/lang/String;Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
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

.method public userActivity(JII)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IPowerManager;->userActivity(JII)V
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

.method public userActivity(JZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    nop

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method

.method public wakeUp(J)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    const-string/jumbo v1, "wakeUp"

    iget-object v2, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
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

.method public wakeUp(JLjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v1, p0, Landroid/os/PowerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
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
