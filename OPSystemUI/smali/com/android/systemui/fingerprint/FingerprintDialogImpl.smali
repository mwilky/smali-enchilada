.class public Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
.super Lcom/android/systemui/SystemUI;
.source "FingerprintDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAuthenticatedSuccess:Z

.field private mDialogShowing:Z

.field private mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

.field private mFpSensorPressing:Z

.field private mHandler:Landroid/os/Handler;

.field private mOnViewPressing:Z

.field private mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mTransparentIconShowing:Z

.field private mTransparentIconView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Lcom/android/internal/os/SomeArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleShowDialog(Lcom/android/internal/os/SomeArgs;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintAuthenticated()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintEnroll()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintAuthenticatedFail()V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Lcom/android/systemui/fingerprint/FingerprintDialogView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintHelp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleButtonNegative()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleUserCanceled()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleButtonPositive()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleClearMessage()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleFingerprintAcquire(II)V

    return-void
.end method

.method private getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x901

    const v4, 0x1000108

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "FingerprintTransparentIcon"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070494

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070495

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-object v0
.end method

.method private handleButtonNegative()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-nez v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintDialogImpl"

    const-string v2, "Remote exception when handling negative button"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method private handleButtonPositive()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-nez v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Receiver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintDialogImpl"

    const-string v2, "Remote exception when handling positive button"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method private handleClearMessage()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->resetMessage()V

    return-void
.end method

.method private handleFingerprintAcquire(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

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

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-eqz v3, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleFingerprintAuthenticated()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "handleFingerprintAuthenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedSuccess:Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040238

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    return-void
.end method

.method private handleFingerprintAuthenticatedFail()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->playAnimation(I)V

    return-void
.end method

.method private handleFingerprintEnroll()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    return-void
.end method

.method private handleFingerprintError(Ljava/lang/String;)V
    .locals 3

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

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Dialog already dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method private handleFingerprintHelp(Ljava/lang/String;)V
    .locals 3

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

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->playAnimation(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showHelpMessage(Ljava/lang/String;)V

    return-void
.end method

.method private handleHideDialog(Z)V
    .locals 4

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

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-nez v0, :cond_1

    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog already dismissed, userCanceled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showFingerprintPressed(Z)V

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isDefault()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardDone()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintAlreadyAuthenticated()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "FingerprintDialogImpl"

    const-string v2, "handleHideDialog: don\'t hide window since keyguard is showing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FingerprintDialogImpl"

    const-string v3, "RemoteException when hiding dialog"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedSuccess:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->startDismiss(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    if-nez v0, :cond_4

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private handleShowDialog(Lcom/android/internal/os/SomeArgs;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShowDialog, isAnimatingAway: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isAnimatingAway()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isAnimatingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->forceRemove()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "Dialog already showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "key_fingerprint_package_name"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintDialogImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "authenticatedPkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setOwnerString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mOnViewPressing:Z

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mFpSensorPressing:Z

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setBundle(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    invoke-interface {v4, v5, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setPressDimWindow(Z)V

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-nez v4, :cond_3

    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mAuthenticatedSuccess:Z

    return-void
.end method

.method private handleUserCanceled()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->handleHideDialog(Z)V

    return-void
.end method


# virtual methods
.method public hideFingerprintDialog()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "hideFingerprintDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFingerprintAcquired(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFingerprintAuthenticated()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "onFingerprintAuthenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFingerprintAuthenticatedFail()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "onFingerprintAuthenticatedFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFingerprintEnrollResult()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "onFingerprintEnroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFingerprintError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFingerprintHelp(Ljava/lang/String;)V
    .locals 3

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

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintDialogImpl"

    const-string v1, "showFingerprintDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public start()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallbacks(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;-><init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d012f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$2;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogView:Lcom/android/systemui/fingerprint/FingerprintDialogView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setTransparentIconView(Landroid/view/View;)V

    return-void
.end method

.method public updateTransparentIconLayoutParams(Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FingerprintDialogImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTransparentIconLayoutParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->getIconLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    const/4 v3, -0x2

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070494

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070495

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v1, -0x1

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mTransparentIconView:Landroid/view/View;

    invoke-interface {v6, v7, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
