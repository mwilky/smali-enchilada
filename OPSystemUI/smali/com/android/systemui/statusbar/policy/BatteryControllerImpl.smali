.class public Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "BatteryControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field protected mAodPowerSave:Z

.field private mBatteryStyle:I

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mCharged:Z

.field protected mCharging:Z

.field private final mContext:Landroid/content/Context;

.field private mDemoMode:Z

.field private mFastchargeType:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasReceivedBattery:Z

.field protected mLevel:I

.field protected mPluggedIn:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field protected mPowerSave:Z

.field private final mSettingObserver:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;

.field private mShowPercent:Z

.field private mTestmode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "BatteryController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;-><init>(Landroid/content/Context;Landroid/os/PowerManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mTestmode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFastchargeType:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mSettingObserver:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->registerReceiver()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->updatePowerSave()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mTestmode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mTestmode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->fireBatteryStylechange()V

    return-void
.end method

.method private fireBatteryStylechange()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "BatteryController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " fireBatteryStylechange mShowPercent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mBatteryStyle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryPercentShowChange(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryStyleChanged(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "BatteryController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " fireBatteryStylechange:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private firePowerSaveChanged()V
    .locals 5

    const-string v0, "BatteryController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " firePowerSaveChanged mPowerSave:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onPowerSaveChanged(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

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

.method private registerReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mSettingObserver:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->observe()V

    return-void
.end method

.method private setPowerSave(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v1, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mAodPowerSave:Z

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "BatteryController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power save is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    if-eqz v3, :cond_1

    const-string v3, "on"

    goto :goto_0

    :cond_1
    const-string v3, "off"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->firePowerSaveChanged()V

    return-void
.end method

.method private updatePowerSave()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->setPowerSave(Z)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onPowerSaveChanged(Z)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFastchargeType:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onFastChargeChanged(I)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryStyleChanged(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryPercentShowChange(Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDemoMode:Z

    if-nez v0, :cond_0

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDemoMode:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDemoMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDemoMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->registerReceiver()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->updatePowerSave()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDemoMode:Z

    if-eqz v0, :cond_5

    const-string v0, "battery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "level"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "powersave"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v4, 0x64

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    :cond_3
    if-eqz v3, :cond_4

    const-string/jumbo v1, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->firePowerSaveChanged()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->fireBatteryLevelChanged()V

    :cond_5
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "BatteryController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mPluggedIn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mCharging="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mCharged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mPowerSave="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mShowPercent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mBatteryStyle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method protected fireBatteryLevelChanged()V
    .locals 7

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "BatteryController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " fireBatteryLevelChanged mLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " PluggedIn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Charging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mFastchargeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFastchargeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mShowPercent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " style:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBatteryStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFastchargeType:I

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onFastChargeChanged(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

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

.method public isAodPowerSave()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mAodPowerSave:Z

    return v0
.end method

.method public isPowerSave()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mTestmode:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "testmode"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    if-nez v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    const/high16 v4, 0x42c80000    # 100.0f

    const-string v5, "level"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const-string v5, "scale"

    const/16 v6, 0x64

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    const-string v4, "plugged"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    const-string v4, "status"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharged:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharged:Z

    if-nez v5, :cond_5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    move v5, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v2

    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    const-string v5, "fastcharge_status"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sget-boolean v6, Lcom/android/systemui/util/OPUtils;->SUPPORT_WARP_CHARGING:Z

    if-eqz v6, :cond_6

    move v2, v5

    goto :goto_4

    :cond_6
    if-lez v5, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    :goto_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFastchargeType:I

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->fireBatteryStylechange()V

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->fireBatteryLevelChanged()V

    goto :goto_5

    :cond_9
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->updatePowerSave()V

    goto :goto_5

    :cond_a
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "mode"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->setPowerSave(Z)V

    goto :goto_5

    :cond_b
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mSettingObserver:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$SettingObserver;->update(Landroid/net/Uri;)V

    goto :goto_5

    :cond_c
    const-string v1, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mTestmode:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    :goto_5
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public setPowerSaveMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(Landroid/content/Context;ZZ)Z

    return-void
.end method
