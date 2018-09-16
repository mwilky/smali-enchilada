.class public Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
.super Lcom/android/systemui/SystemUI;
.source "FingerprintDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field private static final DEBUG:Z

.field public static final SHOW_TRANSPARENT_ICON_VIEW:Z

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private IS_SUPPORT_QL:Z

.field private mAuthenticatedSuccess:Z

.field private mDialogShowing:Z

.field private mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

.field private mFpSensorPressing:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsEnableQL:Z

.field private mOnViewPressing:Z

.field private final mQLEnableObserver:Landroid/database/ContentObserver;

.field private mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

.field private mQLShowing:Z

.field private mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mShowQLView:Ljava/lang/Runnable;

.field private mTransparentIconShowing:Z

.field private mTransparentIconView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    .line 63
    const-string v0, "debug.show_transparent_icon_view"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->SHOW_TRANSPARENT_ICON_VIEW:Z

    .line 629
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 630
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 631
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 632
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 629
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->IS_SUPPORT_QL:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsEnableQL:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLShowing:Z

    .line 107
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    .line 463
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$3;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLEnableObserver:Landroid/database/ContentObserver;

    .line 472
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$4;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Lcom/android/internal/os/SomeArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Lcom/android/internal/os/SomeArgs;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintAuthenticated()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintEnroll()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintAuthenticatedFail()V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .line 60
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->isQLEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintHelp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLShowing:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLShowing:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/QLRootView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Lcom/android/systemui/fingerprint/QLRootView;)Lcom/android/systemui/fingerprint/QLRootView;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Lcom/android/systemui/fingerprint/QLRootView;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLRootView:Lcom/android/systemui/fingerprint/QLRootView;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsEnableQL:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsEnableQL:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # Z

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleButtonNegative()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleUserCanceled()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleButtonPositive()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleClearMessage()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintAcquire(II)V

    return-void
.end method

.method private getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 347
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x901

    const v4, 0x1000108

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 353
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 354
    const-string v1, "FingerprintTransparentIcon"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 355
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 356
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070494

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 357
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070495

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 358
    return-object v0
.end method

.method private handleButtonNegative()V
    .locals 3

    .line 591
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-nez v0, :cond_0

    .line 592
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-void

    .line 596
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintDialogImpl"

    const-string v2, "Remote exception when handling negative button"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 600
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 601
    return-void
.end method

.method private handleButtonPositive()V
    .locals 3

    .line 604
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-nez v0, :cond_0

    .line 605
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return-void

    .line 609
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    goto :goto_0

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintDialogImpl"

    const-string v2, "Remote exception when handling positive button"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 614
    return-void
.end method

.method private handleClearMessage()V
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->resetMessage()V

    .line 618
    return-void
.end method

.method private handleFingerprintAcquire(II)V
    .locals 4
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 402
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 404
    .local v0, "isInterActive":Z
    const-string v1, "FingerprintDialogImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleFingerprintAcquire: acquireInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", onViewPressing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", vendorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", interactive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", dialogShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    if-nez p2, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-eqz v3, :cond_0

    .line 411
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    .line 412
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed()V

    goto :goto_0

    .line 413
    :cond_0
    if-ne p1, v2, :cond_2

    if-ne p2, v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    if-eqz v1, :cond_2

    .line 415
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    .line 416
    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v2, :cond_1

    .line 417
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 418
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 421
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    .line 422
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->hideFingerprintPressed()V

    .line 424
    :cond_2
    :goto_0
    return-void
.end method

.method private handleFingerprintAuthenticated()V
    .locals 4

    .line 488
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "handleFingerprintAuthenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 492
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedSuccess:Z

    .line 496
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    .line 497
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 496
    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 499
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 502
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->isQLEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mShowQLView:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 507
    :cond_1
    return-void
.end method

.method private handleFingerprintAuthenticatedFail()V
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 433
    return-void
.end method

.method private handleFingerprintEnroll()V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 428
    return-void
.end method

.method private handleFingerprintError(Ljava/lang/String;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/String;

    .line 521
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFingerprintError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_2

    .line 524
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Dialog already dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_1
    return-void

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showErrorMessage(Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method private handleFingerprintHelp(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 510
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFingerprintHelp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 517
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showHelpMessage(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method private handleHideDialog(Z)V
    .locals 3
    .param p1, "userCanceled"    # Z

    .line 537
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHideDialog, userCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_1

    .line 541
    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog already dismissed, userCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    .line 548
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isDefault()Z

    move-result v0

    if-nez v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    .line 553
    .local v0, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 555
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAlreadyAuthenticated()Z

    move-result v1

    if-nez v1, :cond_2

    .line 557
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSwitchingUser()Z

    move-result v1

    if-nez v1, :cond_2

    .line 562
    const-string v1, "FingerprintDialogImpl"

    const-string v2, "handleHideDialog: don\'t hide window since keyguard is showing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    return-void

    .line 568
    .end local v0    # "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    :cond_2
    if-eqz p1, :cond_4

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :cond_3
    goto :goto_0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintDialogImpl"

    const-string v2, "RemoteException when hiding dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    .line 579
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedSuccess:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->startDismiss(Z)V

    .line 583
    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    if-nez v1, :cond_5

    .line 584
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 585
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 588
    :cond_5
    return-void
.end method

.method private handleShowDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 8
    .param p1, "args"    # Lcom/android/internal/os/SomeArgs;

    .line 297
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 298
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShowDialog, isAnimatingAway: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 299
    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isAnimatingAway()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isAnimatingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->forceRemove()V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-eqz v0, :cond_2

    .line 304
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 305
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    .line 308
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    .line 311
    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Dialog already showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void

    .line 317
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 320
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 321
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "key_fingerprint_package_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "authenticatedPkg":Ljava/lang/String;
    const-string v3, "FingerprintDialogImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authenticatedPkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setOwnerString(Ljava/lang/String;)V

    .line 324
    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 325
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    .line 326
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    .line 329
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setBundle(Landroid/os/Bundle;)V

    .line 330
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-interface {v4, v5, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setPressDimWindow(Z)V

    .line 334
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-nez v4, :cond_3

    .line 335
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    .line 336
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    :cond_3
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    .line 341
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedSuccess:Z

    .line 342
    return-void
.end method

.method private handleUserCanceled()V
    .locals 1

    .line 621
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    .line 622
    return-void
.end method

.method private isQLEnabled()Z
    .locals 1

    .line 626
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->IS_SUPPORT_QL:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mIsEnableQL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public hideFingerprintDialog()V
    .locals 3

    .line 290
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "hideFingerprintDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 292
    return-void
.end method

.method public onFingerprintAcquired(II)V
    .locals 2
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 254
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 255
    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 2

    .line 272
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "onFingerprintAuthenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 274
    return-void
.end method

.method public onFingerprintAuthenticatedFail()V
    .locals 2

    .line 265
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "onFingerprintAuthenticatedFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 267
    return-void
.end method

.method public onFingerprintEnrollResult()V
    .locals 2

    .line 259
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "onFingerprintEnroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 261
    return-void
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 286
    return-void
.end method

.method public onFingerprintEventCallback(II)V
    .locals 3
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 642
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintEventCallback: acquireInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vendorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 644
    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 278
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerprintHelp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 280
    return-void
.end method

.method public resetState()V
    .locals 1

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    .line 650
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    .line 651
    return-void
.end method

.method public showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "receiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 240
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "showFingerprintDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 246
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 247
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 249
    return-void
.end method

.method public start()V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 161
    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    .line 165
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportQuickLaunch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->IS_SUPPORT_QL:Z

    .line 166
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->IS_SUPPORT_QL:Z

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ql_enable"

    .line 169
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mQLEnableObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    .line 168
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d012f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    .line 177
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 228
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->SHOW_TRANSPARENT_ICON_VIEW:Z

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setTransparentIconView(Landroid/view/View;)V

    .line 236
    return-void
.end method

.method public updateTransparentIconLayoutParams(Z)V
    .locals 8
    .param p1, "expand"    # Z

    .line 364
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-nez v0, :cond_0

    .line 365
    return-void

    .line 367
    :cond_0
    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTransparentIconLayoutParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 374
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    .line 375
    .local v1, "orientation":I
    if-eqz p1, :cond_1

    .line 376
    const/4 v2, -0x1

    .line 377
    .local v2, "w":I
    const/4 v3, -0x1

    .line 378
    .local v3, "h":I
    const/4 v4, 0x0

    .line 379
    .local v4, "x":I
    const/4 v5, 0x0

    .line 380
    .local v5, "y":I
    const/4 v1, 0x1

    goto :goto_0

    .line 382
    .end local v2    # "w":I
    .end local v3    # "h":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_1
    const/4 v2, -0x2

    .line 383
    .restart local v2    # "w":I
    const/4 v3, -0x2

    .line 384
    .restart local v3    # "h":I
    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070494

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 385
    .restart local v4    # "x":I
    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070495

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 386
    .restart local v5    # "y":I
    const/4 v1, -0x1

    .line 389
    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 390
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 391
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 392
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 393
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 395
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v6, v7, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    return-void
.end method

.method vibrate()V
    .locals 4

    .line 635
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 637
    .local v0, "vib":Landroid/os/Vibrator;
    sget-object v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 638
    return-void
.end method
