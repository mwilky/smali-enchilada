.class public abstract Lcom/android/server/fingerprint/EnrollClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "EnrollClient.java"


# static fields
.field private static final ENROLLMENT_TIMEOUT_MS:I = 0xea60

.field private static final MS_PER_SEC:J = 0x3e8L


# instance fields
.field private mCryptoToken:[B

.field private mEnrollRemain:I

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 12

    move-object v10, p0

    move-object/from16 v11, p8

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    const/4 v0, 0x0

    iput v0, v10, Lcom/android/server/fingerprint/EnrollClient;->mEnrollRemain:I

    array-length v0, v11

    invoke-static {v11, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    move-object/from16 v0, p11

    iput-object v0, v10, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method private sendEnrollResult(III)Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    return v7

    :cond_0
    iget v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mEnrollRemain:I

    if-eq v0, p3, :cond_1

    iput p3, p0, Lcom/android/server/fingerprint/EnrollClient;->mEnrollRemain:I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->vibrateSuccess()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xfb

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getHalDeviceId()J

    move-result-wide v1

    move-object v0, v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    return v7

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Failed to notify EnrollResult:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7
.end method


# virtual methods
.method public destroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Unable to hide fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onAcquired(II)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result v0

    return v0
.end method

.method public onAuthenticated(II)Z
    .locals 2

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onAuthenticated() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(III)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v0

    if-eq p2, v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "groupId != getGroupId(), groupId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " getGroupId():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p3, :cond_1

    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getTargetUserId()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/EnrollClient;->sendEnrollResult(III)Z

    move-result v0

    return v0
.end method

.method public onEnumerationResult(III)Z
    .locals 2

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onRemoved(III)Z
    .locals 2

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public resume()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "key_fingerprint_package_name"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Unable to show fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public start()I
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "FingerprintService"

    const-string v2, "enroll: no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    return v1

    :cond_0
    const/16 v1, 0x3c

    move v2, v1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v5

    invoke-interface {v0, v4, v5, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enroll([BII)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startEnroll failed, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "fingerprintd_enroll_start_error"

    invoke-static {v4, v5, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/android/server/fingerprint/EnrollClient;->onError(II)Z

    return v1

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_2

    :try_start_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "key_fingerprint_package_name"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lcom/android/internal/statusbar/IStatusBarService;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "FingerprintService"

    const-string v6, "Unable to show fingerprint dialog"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    iput v3, p0, Lcom/android/server/fingerprint/EnrollClient;->mEnrollRemain:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v4, "FingerprintService"

    const-string/jumbo v5, "startEnroll failed"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v3
.end method

.method public stop(Z)I
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v2, "stopEnroll: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "stopEnrollment: no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    return v1

    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startEnrollCancel failed, result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    iget-boolean v1, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return v2

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z

    if-eqz v2, :cond_4

    :try_start_2
    iget-object v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v2

    :try_start_3
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopEnrollment failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-boolean v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z

    if-eqz v2, :cond_4

    :try_start_4
    iget-object v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :cond_4
    :goto_2
    if-eqz p1, :cond_5

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Lcom/android/server/fingerprint/EnrollClient;->onError(II)Z

    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mAlreadyCancelled:Z

    return v1

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z

    if-eqz v2, :cond_6

    :try_start_5
    iget-object v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_4
    throw v1
.end method

.method public suspend()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mSupportCustomFingerprint:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/EnrollClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Unable to hide fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
