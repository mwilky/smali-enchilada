.class public Lcom/oneplus/aod/battery/BatteryControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "BatteryControllerImpl.java"

# interfaces
.implements Lcom/oneplus/aod/battery/BatteryController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;
    }
.end annotation


# static fields
.field public static final ACTION_LEVEL_TEST:Ljava/lang/String; = "com.android.systemui.BATTERY_LEVEL_TEST"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "AodBatteryController"


# instance fields
.field private mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

.field private mAodUpdateMonitorCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

.field private mBatteryContainer:Landroid/widget/LinearLayout;

.field private mBatteryDashChargeView:Lcom/oneplus/aod/battery/BatteryDashChargeView;

.field private mBatteryMeterView:Lcom/oneplus/aod/battery/BatteryMeterView;

.field private mBatteryStyle:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mCharged:Z

.field protected mCharging:Z

.field private mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

.field private final mContext:Landroid/content/Context;

.field private mDemoMode:Z

.field private mFastcharge:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasReceivedBattery:Z

.field protected mLevel:I

.field private mPercent:Landroid/view/View;

.field protected mPluggedIn:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field protected mPowerSave:Z

.field private final mSettingObserver:Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;

.field private mShowPercent:Z

.field private mTestmode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    const-string v0, "AodBatteryController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aodUpdateMonitor"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .line 87
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mTestmode:Z

    .line 71
    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mHasReceivedBattery:Z

    .line 73
    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mFastcharge:Z

    .line 74
    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mShowPercent:Z

    .line 75
    new-instance v1, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;-><init>(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V

    iput-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;

    .line 77
    iput v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryStyle:I

    .line 121
    new-instance v0, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl$1;-><init>(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mAodUpdateMonitorCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 88
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mContext:Landroid/content/Context;

    .line 89
    iput-object p0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mHandler:Landroid/os/Handler;

    .line 91
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 93
    invoke-virtual {p2}, Lcom/oneplus/aod/AodUpdateMonitor;->getAodView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 94
    .local v0, "container":Landroid/view/ViewGroup;
    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/battery/BatteryMeterView;

    iput-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryMeterView:Lcom/oneplus/aod/battery/BatteryMeterView;

    .line 95
    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/aod/battery/BatteryDashChargeView;

    iput-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryDashChargeView:Lcom/oneplus/aod/battery/BatteryDashChargeView;

    .line 96
    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryContainer:Landroid/widget/LinearLayout;

    .line 97
    const v1, 0x7f0900e6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPercent:Landroid/view/View;

    .line 98
    iput-object p2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    .line 99
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mAodUpdateMonitorCallback:Lcom/oneplus/aod/AodUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->registerCallback(Lcom/oneplus/aod/AodUpdateMonitorCallback;)V

    .line 100
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-virtual {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->getClockViewCtrl()Lcom/oneplus/aod/clock/ClockViewCtrl;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    .line 101
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->updatePowerSave()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Lcom/oneplus/aod/clock/ClockViewCtrl;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 52
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mClockViewCtrl:Lcom/oneplus/aod/clock/ClockViewCtrl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 52
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/aod/battery/BatteryControllerImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 52
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryStyle:I

    return v0
.end method

.method static synthetic access$1002(Lcom/oneplus/aod/battery/BatteryControllerImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;
    .param p1, "x1"    # I

    .line 52
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryStyle:I

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 52
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->fireBatteryStylechange()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 52
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/battery/BatteryControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 52
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->registerReceiver()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 52
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 52
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 52
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mTestmode:Z

    return v0
.end method

.method static synthetic access$602(Lcom/oneplus/aod/battery/BatteryControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mTestmode:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 52
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 52
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mShowPercent:Z

    return v0
.end method

.method static synthetic access$802(Lcom/oneplus/aod/battery/BatteryControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mShowPercent:Z

    return p1
.end method

.method static synthetic access$900(Lcom/oneplus/aod/battery/BatteryControllerImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/aod/battery/BatteryControllerImpl;

    .line 52
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPercent:Landroid/view/View;

    return-object v0
.end method

.method private fireBatteryStylechange()V
    .locals 6

    .line 323
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 324
    .local v0, "N":I
    const-string v1, "AodBatteryController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " fireBatteryStylechange mShowPercent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mShowPercent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mBatteryStyle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryStyle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 328
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;

    iget-boolean v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mShowPercent:Z

    invoke-interface {v2, v3}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onBatteryPercentShowChange(Z)V

    .line 329
    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;

    iget v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryStyle:I

    invoke-interface {v2, v3}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onBatteryStyleChanged(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_1

    .line 330
    :catch_0
    move-exception v2

    .line 331
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "AodBatteryController"

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

    .line 325
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private firePowerSaveChanged()V
    .locals 5

    .line 308
    const-string v0, "AodBatteryController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " firePowerSaveChanged mPowerSave:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mAodUpdateMonitor:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->firePowerSaveChanged(Z)V

    .line 313
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 315
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 316
    iget-object v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;

    iget-boolean v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    invoke-interface {v3, v4}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onPowerSaveChanged(Z)V

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerReceiver()V
    .locals 2

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 106
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;

    invoke-virtual {v1}, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->observe()V

    .line 117
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->updatePowerSave()V

    .line 119
    return-void
.end method

.method private setPowerSave(Z)V
    .locals 3
    .param p1, "powerSave"    # Z

    .line 275
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 276
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    .line 277
    const-string v0, "AodBatteryController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Power save is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    if-eqz v2, :cond_1

    const-string v2, "on"

    goto :goto_0

    :cond_1
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->firePowerSaveChanged()V

    .line 279
    return-void
.end method

.method private updatePowerSave()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->setPowerSave(Z)V

    .line 272
    return-void
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;

    .line 170
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mHasReceivedBattery:Z

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPluggedIn:Z

    iget-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharging:Z

    invoke-interface {p1, v0, v1, v2}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    .line 175
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    invoke-interface {p1, v0}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onPowerSaveChanged(Z)V

    .line 177
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mFastcharge:Z

    invoke-interface {p1, v0}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onFastChargeChanged(Z)V

    .line 178
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryStyle:I

    invoke-interface {p1, v0}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onBatteryStyleChanged(I)V

    .line 179
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mShowPercent:Z

    invoke-interface {p1, v0}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onBatteryPercentShowChange(Z)V

    .line 181
    return-void

    .line 172
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 342
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mDemoMode:Z

    if-nez v0, :cond_0

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mDemoMode:Z

    .line 344
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 345
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mDemoMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iput-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mDemoMode:Z

    .line 347
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->registerReceiver()V

    .line 348
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->updatePowerSave()V

    goto :goto_0

    .line 349
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mDemoMode:Z

    if-eqz v0, :cond_4

    const-string v0, "battery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 350
    const-string v0, "level"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "level":Ljava/lang/String;
    const-string v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "plugged":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 353
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v3, 0x64

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    .line 355
    :cond_2
    if-eqz v2, :cond_3

    .line 356
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPluggedIn:Z

    .line 358
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->fireBatteryLevelChanged()V

    .line 360
    .end local v0    # "level":Ljava/lang/String;
    .end local v2    # "plugged":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 151
    const-string v0, "BatteryController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    const-string v0, "  mLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 153
    const-string v0, "  mPluggedIn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPluggedIn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 154
    const-string v0, "  mCharging="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharging:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 155
    const-string v0, "  mCharged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 156
    const-string v0, "  mPowerSave="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 158
    const-string v0, "  mShowPercent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mShowPercent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 159
    const-string v0, "  mBatteryStyle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryStyle:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 161
    return-void
.end method

.method protected fireBatteryLevelChanged()V
    .locals 8

    .line 283
    const-string v0, "AodBatteryController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " fireBatteryLevelChanged mLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " PluggedIn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPluggedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Charging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Fastcharge:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mFastcharge:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " show:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mShowPercent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " style:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 288
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 289
    iget-object v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;

    iget v5, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    iget-boolean v6, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPluggedIn:Z

    iget-boolean v7, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharging:Z

    invoke-interface {v4, v5, v6, v7}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    .line 291
    iget-object v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;

    iget-boolean v5, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mFastcharge:Z

    invoke-interface {v4, v5}, Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;->onFastChargeChanged(Z)V

    .line 288
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "N":I
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mFastcharge:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryDashChargeView:Lcom/oneplus/aod/battery/BatteryDashChargeView;

    iget v3, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->setLevel(IZ)V

    .line 298
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryDashChargeView:Lcom/oneplus/aod/battery/BatteryDashChargeView;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryMeterView:Lcom/oneplus/aod/battery/BatteryMeterView;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/battery/BatteryMeterView;->setVisibility(I)V

    goto :goto_1

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryDashChargeView:Lcom/oneplus/aod/battery/BatteryDashChargeView;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mBatteryMeterView:Lcom/oneplus/aod/battery/BatteryMeterView;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/battery/BatteryMeterView;->setVisibility(I)V

    .line 304
    :goto_1
    return-void

    .line 294
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isPowerSave()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerSave:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 194
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mTestmode:Z

    if-eqz v1, :cond_0

    const-string v1, "testmode"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 196
    :cond_0
    const/4 v1, 0x0

    .line 197
    .local v1, "refreshOthers":Z
    iget-boolean v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mHasReceivedBattery:Z

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 199
    :cond_1
    iput-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mHasReceivedBattery:Z

    .line 200
    const/high16 v4, 0x42c80000    # 100.0f

    const-string v5, "level"

    .line 201
    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const-string v5, "scale"

    const/16 v6, 0x64

    .line 202
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mLevel:I

    .line 203
    const-string v4, "plugged"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPluggedIn:Z

    .line 205
    const-string v4, "status"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 207
    .local v4, "status":I
    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharged:Z

    .line 208
    iget-boolean v5, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharged:Z

    if-nez v5, :cond_5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    nop

    :cond_5
    :goto_2
    iput-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mCharging:Z

    .line 211
    const-string v2, "fastcharge_status"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mFastcharge:Z

    .line 214
    invoke-virtual {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->fireBatteryLevelChanged()V

    .line 217
    if-eqz v1, :cond_6

    .line 218
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->fireBatteryStylechange()V

    .line 221
    .end local v1    # "refreshOthers":Z
    .end local v4    # "status":I
    :cond_6
    goto :goto_3

    :cond_7
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 222
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->updatePowerSave()V

    goto :goto_3

    .line 223
    :cond_8
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 224
    const-string v1, "mode"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->setPowerSave(Z)V

    goto :goto_3

    .line 226
    :cond_9
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 227
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mSettingObserver:Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/aod/battery/BatteryControllerImpl$SettingObserver;->update(Landroid/net/Uri;)V

    goto :goto_3

    .line 229
    :cond_a
    const-string v1, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 230
    iput-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mTestmode:Z

    .line 231
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/aod/battery/BatteryControllerImpl$2;-><init>(Lcom/oneplus/aod/battery/BatteryControllerImpl;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    :cond_b
    :goto_3
    return-void
.end method

.method public removeStateChangedCallback(Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;

    .line 185
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPowerSaveMode(Z)V
    .locals 1
    .param p1, "powerSave"    # Z

    .line 165
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryControllerImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    .line 166
    return-void
.end method
