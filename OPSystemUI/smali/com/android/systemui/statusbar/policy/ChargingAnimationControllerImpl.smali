.class public Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;
.super Ljava/lang/Object;
.source "ChargingAnimationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/ChargingAnimationController;


# instance fields
.field private TAG:Ljava/lang/String;

.field private isKeyguardShowing:Z

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentAnimationState:I

.field private mFastCharging:Z

.field private mHandler:Landroid/os/Handler;

.field private mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

.field private mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private mWarpFastCharging:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ChargingAnimationControllerImpl"

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCurrentAnimationState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWarpFastCharging:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mFastCharging:Z

    new-instance v1, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->isKeyguardShowing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->genOPWarpChargingView()Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportWarpCharging()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->registerReceiver()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Lcom/android/systemui/statusbar/phone/OPWarpChargingView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->isKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->isKeyguardShowing:Z

    return p1
.end method

.method private genOPWarpChargingView()Lcom/android/systemui/statusbar/phone/OPWarpChargingView;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a048c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->setChargingAnimationController(Lcom/android/systemui/statusbar/policy/ChargingAnimationController;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    return-object v0
.end method

.method static synthetic lambda$animationEnd$1(ILcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;->onAnimationEnd(I)V

    return-void
.end method

.method static synthetic lambda$animationStart$0(ILcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;->onAnimationStart(I)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V

    return-void
.end method

.method public animationEnd(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ChargingAnimationControllerImpl$ubwqtOBHP7dTmXUVWRic8CF4Avk;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ChargingAnimationControllerImpl$ubwqtOBHP7dTmXUVWRic8CF4Avk;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/systemui/util/OPUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public animationStart(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$ChargingAnimationControllerImpl$RUKKNHHFbHtQKYG3xoU3USKAFA4;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/policy/-$$Lambda$ChargingAnimationControllerImpl$RUKKNHHFbHtQKYG3xoU3USKAFA4;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/systemui/util/OPUtils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->genOPWarpChargingView()Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->setBackgroundWallpaper(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->onBatteryLevelChanged(IZZ)V

    :cond_0
    return-void
.end method

.method public onFastChargeChanged(I)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mFastCharging:Z

    if-eq v2, v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onFastChargeChanged:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mFastCharging:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->isKeyguardShowing:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->prepaerAsset()V

    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    const/16 v6, 0x3e8

    iput v6, v5, Landroid/os/Message;->what:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWarpFastCharging:Z

    if-eq v4, v5, :cond_4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWarpFastCharging:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v5

    if-ne v5, v3, :cond_3

    move v0, v1

    nop

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWarpFastCharging:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->isKeyguardShowing:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->startAnimation()V

    :cond_4
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWallpaperChange: bitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/systemui/util/ImageUtils;->computeCustomBackgroundBounds(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mOPWarpChargingView:Lcom/android/systemui/statusbar/phone/OPWarpChargingView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/OPWarpChargingView;->setBackgroundWallpaper(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void
.end method

.method public registerReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->mCallbacks:Ljava/util/ArrayList;

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

    check-cast p1, Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ChargingAnimationControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/ChargingAnimationController$ChargingStateChangeCallback;)V

    return-void
.end method
