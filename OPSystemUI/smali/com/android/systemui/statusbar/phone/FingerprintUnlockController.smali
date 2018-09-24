.class public Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FingerprintUnlockController.java"


# instance fields
.field private mApplySpeedUpPolicy:Z

.field private final mContext:Landroid/content/Context;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mHandler:Landroid/os/Handler;

.field private mHasScreenTurnedOnSinceAuthenticating:Z

.field private mIsFingerprintAuthenticating:Z

.field private mIsScreenOffUnlock:Z

.field private mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mMode:I

.field private mPendingAuthenticatedUserId:I

.field private mPendingShowBouncer:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

.field private final mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsFingerprintAuthenticating:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mApplySpeedUpPolicy:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$1;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$4;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    new-instance v0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$5;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->addObserver(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScreenObserver:Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/ScreenLifecycle;->addObserver(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingShowBouncer:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->showBouncer()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHasScreenTurnedOnSinceAuthenticating:Z

    return p1
.end method

.method private calculateMode()I
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v1

    const-string v2, "FingerprintController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsScreenOffUnlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isDeviceInteractive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", deviceDreaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    const/4 v3, 0x3

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_7

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_7

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v2, 0x7

    return v2

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    const/4 v2, 0x6

    return v2

    :cond_4
    if-eqz v0, :cond_5

    const/4 v2, 0x5

    return v2

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    if-nez v2, :cond_6

    return v3

    :cond_6
    const/4 v2, 0x0

    return v2

    :cond_7
    :goto_0
    const-string v2, "FingerprintController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unlockingAllowed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mUnlockMethodCache.isMethodSecure() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x4

    return v2

    :cond_8
    if-nez v0, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    return v3

    :cond_a
    :goto_1
    const/4 v2, 0x1

    return v2
.end method

.method private changePanelVisibilityByAlpha(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_IGNORE:I

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->changePanelAlpha(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    sget v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->changePanelAlpha(II)V

    :goto_0
    return-void
.end method

.method private cleanup()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    return-void
.end method

.method private isLauncherOnTop()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v1

    const-string v3, "FingerprintController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLauncherOnTop: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private onFingerprintUnlockCancel(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    const-string v1, "FingerprintController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFingerprintUnlockCancel: Reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", OffUnlock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", attemps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Authenticating:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isFingerprintAuthenticating()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", prevent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", skip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ScreenOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", interactive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isFingerprintAuthenticating()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->changePanelVisibilityByAlpha(IZ)V

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_2

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/LSState;->getPreventModeCtrl()Lcom/android/systemui/plugin/PreventModeCtrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugin/PreventModeCtrl;->isPreventModeActive()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    if-nez v3, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingShowBouncer:Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const v3, 0x3f8ccccd    # 1.1f

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-string v5, "com.android.systemui:FailedAttempts"

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->tryToStartFaceLockAfterScreenOn()V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/16 v5, 0xb

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/os/PowerManager;->goToSleep(JII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFacelockController()Lcom/android/systemui/statusbar/phone/OPFacelockController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->onPreStartedGoingToSleep()V

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/plugin/LSState;->onFingerprintStartedGoingToSleep()V

    :cond_3
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->setFingerprintState(Z)V

    return-void
.end method

.method private onFingerprintUnlockStart()V
    .locals 8

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->isFinishedScreenTuredOn()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v3

    const-string v4, "FingerprintController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFingerprintUnlockStart, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , dream:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , live:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4, v4}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->changePanelVisibilityByAlpha(IZ)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-string v7, "com.android.systemui:UnlockStart"

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v2, :cond_2

    invoke-direct {p0, v4, v4}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->changePanelVisibilityByAlpha(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private pulsingOrAod()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getState()Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private releaseFingerprintWakeLock()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "FingerprintController"

    const-string v1, "releasing fp wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private setFingerprintState(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsFingerprintAuthenticating:Z

    if-eq v0, p1, :cond_0

    const-string v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFingerprintState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsFingerprintAuthenticating:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsFingerprintAuthenticating:Z

    sget v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;->AUTHENTICATE_FINGERPRINT:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->notifyScreenOffAuthenticate(ZI)V

    return-void
.end method

.method private showBouncer()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->calculateMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->animateCollapsePanels(F)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingShowBouncer:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, " FingerprintUnlockController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "   mMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "   mWakeLock="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public finishKeyguardFadingAway()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->resetMode()V

    return-void
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    return v0
.end method

.method public hasPendingAuthentication()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFingerprintAuthenticating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsFingerprintAuthenticating:Z

    return v0
.end method

.method public isFingerprintUnlock()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

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

.method public isWakeAndUnlock()Z
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public onFingerprintAcquired(I)V
    .locals 5

    const-string v0, "FingerprintUnlockController#onFingerprintAcquired"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintAcquired: accquireInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isPulsing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->isFinishedScreenTuredOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "FingerprintController"

    const-string v1, "don\'t deal with event if screen does not turne on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FingerprintController"

    const-string v1, "not allow unlock with fingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "com.android.systemui:onAcquired"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.oneplus.aod.doze.pulse"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->setFingerprintState(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintUnlockStart()V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "wake-and-unlock wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v0, "acquiring wake-and-unlock"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "FingerprintController"

    const-string v1, "fingerprint acquired, grabbing fp wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mReleaseFingerprintWakeLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onFingerprintAuthFailed()V
    .locals 3

    const-string v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintAuthFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintFailedUnlockAttempts()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isFingerprintAuthenticating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->isFinishedScreenTuredOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "lock_unlock_failed"

    const-string v1, "finger"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintUnlockCancel(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 1

    const-string v0, "FingerprintUnlockController#onFingerprintAuthenticated"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->setFingerprintState(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->calculateMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->startWakeAndUnlock(I)V

    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 3

    const-string v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintUnlockCancel(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .locals 3

    const-string v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintHelp: msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", helpString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintUnlockCancel(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    return-void
.end method

.method public onFingerprintTimeout()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintUnlockCancel(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->cleanup()V

    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 3

    const-string v0, "FingerprintUnlockController#onFinishedGoingToSleep"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$2;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsFingerprintAuthenticating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsFingerprintAuthenticating:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->changePanelVisibilityByAlpha(IZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->changePanelVisibilityByAlpha(IZ)V

    :goto_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->resetMode()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingAuthenticatedUserId:I

    return-void
.end method

.method public resetMode()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->changePanelVisibilityByAlpha(IZ)V

    return-void
.end method

.method public resetSpeedUpPolicy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mApplySpeedUpPolicy:Z

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method public shouldApplySpeedUpPolicy()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isLauncherOnTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startKeyguardFadingAway()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController$3;-><init>(Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;)V

    const-wide/16 v2, 0x60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public startWakeAndUnlock(I)V
    .locals 10

    const-string v0, "FingerprintController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startWakeAndUnlock("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mHasScreenTurnedOnSinceAuthenticating:Z

    iget v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->pulsingOrAod()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setForceDozeBrightness(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isLauncherOnTop()Z

    move-result v5

    const-string v6, "FingerprintController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "has wallpaper="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", launcherTop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    const-string v6, "FingerprintController"

    const-string v7, "fp wakelock: Authenticated, waking up..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "android.policy:FINGERPRINT"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_1

    const-string v8, ""

    goto :goto_0

    :cond_1
    const-string v8, "_NORMAL"

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    const-string v8, ""

    goto :goto_1

    :cond_2
    const-string v8, "_WALLPAPER"

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v6}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    :cond_3
    const-string v6, "release wake-and-unlock"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->releaseFingerprintWakeLock()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mIsScreenOffUnlock:Z

    const-string v6, "FingerprintController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFingerprintAuthenticated: mMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-eq v6, v3, :cond_4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-eq v6, v4, :cond_4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_5

    :cond_4
    const-string v6, "lock_unlock_success"

    const-string v7, "finger"

    const-string v8, "1"

    invoke-static {v6, v7, v8}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget v6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    const-string v3, "MODE_DISMISS"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_4

    :pswitch_2
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->shouldApplySpeedUpPolicy()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking(Z)V

    goto :goto_4

    :cond_6
    :pswitch_3
    const-string v1, "MODE_UNLOCK or MODE_SHOW_BOUNCER"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingShowBouncer:Z

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->showBouncer()V

    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :pswitch_4
    iget v6, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-ne v6, v3, :cond_8

    const-string v3, "MODE_WAKE_AND_UNLOCK_PULSING"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    goto :goto_3

    :cond_8
    iget v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mMode:I

    if-ne v3, v4, :cond_9

    const-string v3, "MODE_WAKE_AND_UNLOCK"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v3, "MODE_WAKE_AND_UNLOCK_FROM_DREAM"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->awakenFromDream()V

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->shouldApplySpeedUpPolicy()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    :cond_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    nop

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public startWakeAndUnlockForFace(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    const-string v1, "FingerprintController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startWakeAndUnlockForFace:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    goto :goto_0

    :pswitch_1
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyDeviceWakeUpRequested()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mPendingShowBouncer:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->showBouncer()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isLauncherOnTop()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onWakeAndUnlocking(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyFpAuthModeChanged()V

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
