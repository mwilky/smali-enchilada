.class public Lcom/android/settings/fingerprint/FingerprintUiHelper;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintUiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;
    }
.end annotation


# static fields
.field private static final ERROR_TIMEOUT:J = 0x514L


# instance fields
.field private mCallback:Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIcon:Landroid/widget/ImageView;

.field private mResetErrorTextRunnable:Ljava/lang/Runnable;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;I)V
    .locals 1
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "errorTextView"    # Landroid/widget/TextView;
    .param p3, "callback"    # Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;
    .param p4, "userId"    # I

    .line 45
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    .line 125
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintUiHelper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintUiHelper$1;-><init>(Lcom/android/settings/fingerprint/FingerprintUiHelper;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    .line 46
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 47
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    .line 48
    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    .line 49
    iput-object p3, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCallback:Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;

    .line 50
    iput p4, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mUserId:I

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintUiHelper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintUiHelper;

    .line 32
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintUiHelper;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintUiHelper;

    .line 32
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private setFingerprintIconVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 78
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCallback:Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;->onFingerprintIconVisibilityChanged(Z)V

    .line 85
    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f080198

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 122
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    return-void
.end method


# virtual methods
.method public isListening()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 89
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->showError(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->setFingerprintIconVisibility(Z)V

    .line 95
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12066d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->showError(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 99
    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->showError(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2
    .param p1, "result"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    .line 110
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f08019b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCallback:Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;->onAuthenticated()V

    .line 112
    return-void
.end method

.method public startListening()V
    .locals 9

    .line 54
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mUserId:I

    .line 55
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 57
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 58
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mUserId:I

    move-object v6, p0

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->setFingerprintIconVisibility(Z)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f080196

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 70
    :cond_0
    return-void
.end method
