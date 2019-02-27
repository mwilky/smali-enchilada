.class public Landroid/hardware/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricFingerprintConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintManager$MyHandler;,
        Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;,
        Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;,
        Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ENUMERATED:I = 0x6a

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_REMOVED:I = 0x69

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"


# instance fields
.field private final FINGERPRINT_ACQUIRED_VENDOR_DUPLICATED_FINGERPRINT:I

.field private final FINGERPRINT_ACQUIRED_VENDOR_TOO_SIMILAR:I

.field private final FINGERPRINT_ACQUIRE_VENDOR_POSITION_SHIFT:I

.field private mAuthenticationCallback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mEnumerateCallback:Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mHandler:Landroid/os/Handler;

.field private mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mService:Landroid/hardware/fingerprint/IFingerprintService;

.field private mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mSupportCustomFingerprint:Z

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x47

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mSupportCustomFingerprint:Z

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->FINGERPRINT_ACQUIRED_VENDOR_DUPLICATED_FINGERPRINT:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->FINGERPRINT_ACQUIRED_VENDOR_TOO_SIMILAR:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->FINGERPRINT_ACQUIRE_VENDOR_POSITION_SHIFT:I

    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$2;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    const-string v0, "FingerprintManager"

    const-string v1, "FingerprintManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager$1;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    iget-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mSupportCustomFingerprint:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->cancelEnrollment()V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/biometrics/CryptoObject;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->cancelAuthentication(Landroid/hardware/biometrics/CryptoObject;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnumerateCallback:Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/fingerprint/FingerprintManager;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/fingerprint/FingerprintManager;JII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->sendAcquiredResult(JII)V

    return-void
.end method

.method static synthetic access$600(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static synthetic access$800(Landroid/hardware/fingerprint/FingerprintManager;JII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->sendErrorResult(JII)V

    return-void
.end method

.method static synthetic access$900(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    return-object v0
.end method

.method private authenticate(ILandroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/IBiometricPromptReceiver;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    iput-object v2, v1, Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintManager"

    const-string v4, "authentication already canceled"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;

    invoke-direct {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/biometrics/CryptoObject;)V

    move-object/from16 v4, p3

    invoke-virtual {v4, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    iget-object v0, v1, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_2

    move-object/from16 v5, p5

    :try_start_0
    iput-object v5, v1, Landroid/hardware/fingerprint/FingerprintManager;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v3, v1, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/biometrics/CryptoObject;->getOpId()J

    move-result-wide v6

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    :goto_0
    move-wide v10, v6

    iget-object v8, v1, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v9, v1, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v13, v1, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v14, 0x0

    iget-object v0, v1, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    move/from16 v12, p1

    move-object/from16 v16, p4

    move-object/from16 v17, p6

    invoke-interface/range {v8 .. v17}, Landroid/hardware/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "FingerprintManager"

    const-string v7, "Remote exception while authenticating"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, v1, Landroid/hardware/fingerprint/FingerprintManager;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$0Q_OnkqSSy_nQ9iUWqvqVi6QjNE;

    invoke-direct {v7, v1, v3}, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$0Q_OnkqSSy_nQ9iUWqvqVi6QjNE;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    move-object/from16 v5, p5

    :goto_1
    return-void
.end method

.method private cancelAuthentication(Landroid/hardware/biometrics/CryptoObject;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private cancelEnrollment()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private getCurrentUserId()I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static synthetic lambda$authenticate$0(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
    .locals 2

    nop

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private sendAcquiredResult(JII)V
    .locals 5

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    if-ne p3, v1, :cond_0

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    invoke-virtual {v0, p3}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;->onAuthenticationAcquired(I)V

    :cond_1
    invoke-virtual {p0, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(II)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAcquired(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "FingerprintManager"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez v0, :cond_3

    return-void

    :cond_3
    if-ne p3, v1, :cond_4

    add-int/lit16 v1, p4, 0x3e8

    goto :goto_1

    :cond_4
    move v1, p3

    :goto_1
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v2, v1, v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    invoke-virtual {v2, v1, v0}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_6
    :goto_2
    :try_start_1
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    goto :goto_3

    :catch_1
    move-exception v2

    const-string v3, "FingerprintManager"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method private sendAuthenticatedFailed()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onAuthenticatedFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintManager"

    const-string v2, "Unable to hide fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private sendAuthenticatedSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 4

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-direct {v0, v1, p1, p2}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;-><init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;I)V

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;)V

    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAuthenticated()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintManager"

    const-string v3, "Unable to hide fingerprint dialog"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private sendErrorResult(JII)V
    .locals 4

    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    add-int/lit16 v0, p4, 0x3e8

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {p0, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    invoke-virtual {p0, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnumerateCallback:Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnumerateCallback:Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;

    invoke-virtual {p0, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;->onEnumerateError(ILjava/lang/CharSequence;)V

    :cond_4
    :goto_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "FingerprintManager"

    const-string v3, "Unable to hide fingerprint dialog"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$1;)V

    iput-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    new-instance v1, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$1;)V

    iput-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintManager$1;

    invoke-direct {v2, p0, v0, p1}, Landroid/hardware/fingerprint/FingerprintManager$1;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->addLockoutResetCallback(Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    const-string v0, "FingerprintManager"

    const-string v1, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/IBiometricPromptReceiver;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
    .locals 9

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(ILandroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/IBiometricPromptReceiver;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a receiver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a cancellation signal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a crypto object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    return-void
.end method

.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintManager"

    const-string v5, "authentication already canceled"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;

    invoke-direct {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/biometrics/CryptoObject;)V

    invoke-virtual {v3, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_1
    iget-object v0, v1, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_3

    move-object/from16 v5, p5

    :try_start_0
    invoke-direct {v1, v5}, Landroid/hardware/fingerprint/FingerprintManager;->useHandler(Landroid/os/Handler;)V

    iput-object v4, v1, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;

    iput-object v2, v1, Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getOpId()J

    move-result-wide v6

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    :goto_0
    move-wide v10, v6

    iget-object v8, v1, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v9, v1, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v13, v1, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v0, v1, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v12, p6

    move/from16 v14, p3

    invoke-interface/range {v8 .. v17}, Landroid/hardware/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "FingerprintManager"

    const-string v7, "Remote exception while authenticating: "

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v4, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    move-object/from16 v5, p5

    :cond_4
    :goto_1
    return-void

    :cond_5
    move-object/from16 v5, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Must supply an authentication callback"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authenticate(Landroid/os/CancellationSignal;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/IBiometricPromptReceiver;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
    .locals 9

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(ILandroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/IBiometricPromptReceiver;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a calback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a receiver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an executor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a cancellation signal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V
    .locals 9

    const/4 v0, -0x2

    if-ne p4, v0, :cond_0

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result p4

    :cond_0
    if-eqz p5, :cond_6

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FingerprintManager"

    const-string v1, "enrollment already canceled"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$1;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_4

    const-string v0, "FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cryptToken null, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p5, :cond_3

    nop

    invoke-virtual {p0, v8, v7}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v8, v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_5

    :try_start_0
    iput-object p5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move v3, p4

    move v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in enroll: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p5, :cond_5

    nop

    invoke-virtual {p0, v8, v7}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v8, v1}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an enrollment callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enumerate(ILandroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnumerateCallback:Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v0, v1, p1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->enumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in enumerate: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;->onEnumerateError(ILjava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getAcquiredString(II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "similar fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0

    :cond_0
    const/16 v1, 0x64

    if-ne p2, v1, :cond_1

    const-string v0, "FingerprintManager"

    const-string v1, "duplicated fingerprint"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    const-string v0, ""

    return-object v0

    :cond_2
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x107005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-ge p2, v2, :cond_3

    aget-object v0, v1, p2

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040237

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040238

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040234

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040235

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040236

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    return-object v0

    :cond_3
    :goto_0
    const-string v1, "FingerprintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid acquired message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAuthenticatedPackage()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintService;->getAuthenticatedPackage()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintManager"

    const-string v3, "Remote exception in getAuthenticatedPackage"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getAuthenticatorId()J
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    const-string v0, "FingerprintManager"

    const-string v1, "getAuthenticatorId(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEnrolledFingerprints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/fingerprint/IFingerprintService;->getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getErrorString(II)Ljava/lang/String;
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x104023c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x104023f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040243

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x104023e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ge p2, v1, :cond_0

    aget-object v1, v0, p2

    return-object v1

    :pswitch_6
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x104023d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x104023a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040240

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_9
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040241

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x1040242

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_b
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x104023b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :goto_0
    const-string v0, "FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid error message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hasEnrolledFingerprints()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprints(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasEnrolledFingerprints(I)Z
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprints(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHardwareDetected()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Landroid/hardware/fingerprint/IFingerprintService;->isHardwareDetected(JLjava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "isFingerprintHardwareDetected(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public postEnroll()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->postEnroll(Landroid/os/IBinder;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    :goto_0
    return v0
.end method

.method public preEnroll()J
    .locals 4

    const-wide/16 v0, 0x0

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->preEnroll(Landroid/os/IBinder;)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    :goto_0
    return-wide v0
.end method

.method public remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V
    .locals 7

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iput-object p3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v4

    iget-object v6, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move v5, p2

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->remove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in remove: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, p1, v2, v1}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "rename(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public resetTimeout([B)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "resetTimeout(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setActiveUser(I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->setActiveUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public shouldBlockTouchForFP(II)Z
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->shouldBlockTouchForFP(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in shouldBlockTouch"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateStatus(I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1, p1}, Landroid/hardware/fingerprint/IFingerprintService;->updateStatus(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintManager"

    const-string v3, "Remote exception in updateStatus"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method
