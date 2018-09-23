.class public Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "FingerprintAuthenticateSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;,
        Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintAuthenticateSidecar"


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mAuthenticationError:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

.field private mAuthenticationResult:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mListener:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$1;-><init>(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationResult:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;)Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationError:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

    return-object p1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4c5

    return v0
.end method

.method public setFingerprintManager(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method public setListener(Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationResult:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationResult:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    invoke-interface {p1, v0}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationResult:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationError:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationError:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;->error:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationError:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

    iget v0, v0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;->error:I

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationError:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

    iget-object v2, v2, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;->errorString:Ljava/lang/CharSequence;

    invoke-interface {p1, v0, v2}, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;->onAuthenticationError(ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationError:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

    :cond_1
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar$Listener;

    return-void
.end method

.method public startAuthentication(I)V
    .locals 8

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v7, p1

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    return-void
.end method

.method public stopAuthentication()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintAuthenticateSidecar;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-void
.end method
