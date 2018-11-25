.class public Lcom/android/systemui/plugin/LSState;
.super Ljava/lang/Object;
.source "LSState.java"

# interfaces
.implements Lcom/android/systemui/plugin/BaseCtrl$ControlCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugin/LSState$MyUIHandler;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/plugin/LSState;


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final WHAT_UI_INIT:I

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field public final mControls:[Lcom/android/systemui/plugin/BaseCtrl;

.field private final mDozeModeCtrl:Lcom/android/systemui/plugin/DozeModeCtrl;

.field private mFingerprintUnlockControl:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mInit:Z

.field private mIsFinishedScreenTuredOn:Z

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNonUiLooper:Landroid/os/Looper;

.field private mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mPreventModeCtrl:Lcom/android/systemui/plugin/PreventModeCtrl;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugin/LSState;->DEBUG:Z

    const-string v1, "LSState"

    iput-object v1, p0, Lcom/android/systemui/plugin/LSState;->TAG:Ljava/lang/String;

    iput v0, p0, Lcom/android/systemui/plugin/LSState;->WHAT_UI_INIT:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/plugin/LSState;->mInit:Z

    new-instance v2, Lcom/android/systemui/plugin/LSState$MyUIHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/plugin/LSState$MyUIHandler;-><init>(Lcom/android/systemui/plugin/LSState;Lcom/android/systemui/plugin/LSState$1;)V

    iput-object v2, p0, Lcom/android/systemui/plugin/LSState;->mUIHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/systemui/plugin/LSState;->mIsFinishedScreenTuredOn:Z

    new-instance v2, Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-direct {v2}, Lcom/android/systemui/plugin/PreventModeCtrl;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/plugin/LSState;->mPreventModeCtrl:Lcom/android/systemui/plugin/PreventModeCtrl;

    new-instance v2, Lcom/android/systemui/plugin/DozeModeCtrl;

    invoke-direct {v2}, Lcom/android/systemui/plugin/DozeModeCtrl;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/plugin/LSState;->mDozeModeCtrl:Lcom/android/systemui/plugin/DozeModeCtrl;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/systemui/plugin/BaseCtrl;

    iget-object v3, p0, Lcom/android/systemui/plugin/LSState;->mPreventModeCtrl:Lcom/android/systemui/plugin/PreventModeCtrl;

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/android/systemui/plugin/LSState;->mDozeModeCtrl:Lcom/android/systemui/plugin/DozeModeCtrl;

    aput-object v1, v2, v0

    iput-object v2, p0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    new-instance v0, Lcom/android/systemui/plugin/LSState$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/plugin/LSState$1;-><init>(Lcom/android/systemui/plugin/LSState;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/LSState;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/plugin/LSState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/plugin/LSState;->mIsFinishedScreenTuredOn:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/android/systemui/plugin/LSState;
    .locals 2

    const-class v0, Lcom/android/systemui/plugin/LSState;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/plugin/LSState;->sInstance:Lcom/android/systemui/plugin/LSState;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/plugin/LSState;

    invoke-direct {v1}, Lcom/android/systemui/plugin/LSState;-><init>()V

    sput-object v1, Lcom/android/systemui/plugin/LSState;->sInstance:Lcom/android/systemui/plugin/LSState;

    :cond_0
    sget-object v1, Lcom/android/systemui/plugin/LSState;->sInstance:Lcom/android/systemui/plugin/LSState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getFingerprintUnlockControl()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mFingerprintUnlockControl:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    return-object v0
.end method

.method public getNonUILooper()Landroid/os/Looper;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mNonUiLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LSState thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/plugin/LSState;->mNonUiLooper:Landroid/os/Looper;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mNonUiLooper:Landroid/os/Looper;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object v0
.end method

.method public getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mPreventModeCtrl:Lcom/android/systemui/plugin/PreventModeCtrl;

    return-object v0
.end method

.method public getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method public init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/plugin/LSState;->mInit:Z

    if-nez v0, :cond_2

    const-string v0, "LSState"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/android/systemui/plugin/LSState;->mContainer:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/plugin/LSState;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p3, p0, Lcom/android/systemui/plugin/LSState;->mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/plugin/LSState;->mInit:Z

    iput-object p1, p0, Lcom/android/systemui/plugin/LSState;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/plugin/LSState;->getNonUILooper()Landroid/os/Looper;

    iget-object v1, p0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4, p0}, Lcom/android/systemui/plugin/BaseCtrl;->setCallback(Lcom/android/systemui/plugin/BaseCtrl$ControlCallback;)V

    invoke-virtual {v4, p1}, Lcom/android/systemui/plugin/BaseCtrl;->init(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/systemui/plugin/BaseCtrl;->startCtrl()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/plugin/LSState;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/plugin/LSState;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFinishedScreenTuredOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/plugin/LSState;->mIsFinishedScreenTuredOn:Z

    return v0
.end method

.method public onDreamingStarted()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->onDreamingStarted()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDreamingStopped()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->onDreamingStopped()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onFingerprintStartedGoingToSleep()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/plugin/LSState;->mIsFinishedScreenTuredOn:Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/plugin/LSState;->mIsFinishedScreenTuredOn:Z

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->onScreenTurnedOn()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onWallpaperChange(Landroid/graphics/Bitmap;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mControls:[Lcom/android/systemui/plugin/BaseCtrl;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/plugin/BaseCtrl;->isEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/systemui/plugin/BaseCtrl;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/plugin/LSState;->mPhonstatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ChargingAnimationController;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/ChargingAnimationController;->onWallpaperChange(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setFingerprintUnlockControl(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/LSState;->mFingerprintUnlockControl:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugin/LSState;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method
