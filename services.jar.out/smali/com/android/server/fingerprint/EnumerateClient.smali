.class public abstract Lcom/android/server/fingerprint/EnumerateClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "EnumerateClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p7

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAuthenticated(II)Z
    .locals 2

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onAuthenticated() called for enumerate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(III)Z
    .locals 2

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for enumerate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(III)Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    return v7

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getHalDeviceId()J

    move-result-wide v1

    move-object v0, v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnumerated(JIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Failed to notify enumerated:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    return v7
.end method

.method public onRemoved(III)Z
    .locals 2

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for enumerate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public start()I
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enumerate()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start enumerate for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getTargetUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "fingerprintd_enum_start_error"

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/server/fingerprint/EnumerateClient;->onError(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startEnumeration failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v1
.end method

.method public stop(Z)I
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/fingerprint/EnumerateClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v2, "stopEnumerate: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    const/4 v2, 0x3

    if-nez v0, :cond_1

    const-string v1, "FingerprintService"

    const-string/jumbo v3, "stopEnumeration: no fingerprint HAL!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stop enumeration failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_2
    nop

    if-eqz p1, :cond_3

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Lcom/android/server/fingerprint/EnumerateClient;->onError(II)Z

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/EnumerateClient;->mAlreadyCancelled:Z

    return v1

    :catch_0
    move-exception v1

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopEnumeration failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method
