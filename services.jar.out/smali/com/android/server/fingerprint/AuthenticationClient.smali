.class public abstract Lcom/android/server/fingerprint/AuthenticationClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "AuthenticationClient.java"


# static fields
.field public static final LOCKOUT_NONE:I = 0x0

.field public static final LOCKOUT_PERMANENT:I = 0x2

.field public static final LOCKOUT_TIMED:I = 0x1


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field protected mDialogDismissed:Z

.field protected mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mInLockout:Z

.field private mIsDoubleAccount:Z

.field private mOpId:J

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "targetUserId"    # I
    .param p7, "groupId"    # I
    .param p8, "opId"    # J
    .param p10, "restricted"    # Z
    .param p11, "owner"    # Ljava/lang/String;
    .param p12, "bundle"    # Landroid/os/Bundle;
    .param p13, "dialogReceiver"    # Landroid/hardware/biometrics/IBiometricPromptReceiver;
    .param p14, "statusBarService"    # Lcom/android/internal/statusbar/IStatusBarService;

    move-object v10, p0

    .line 101
    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 67
    new-instance v0, Lcom/android/server/fingerprint/AuthenticationClient$1;

    invoke-direct {v0, v10}, Lcom/android/server/fingerprint/AuthenticationClient$1;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 102
    move-wide/from16 v0, p8

    iput-wide v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    .line 103
    move-object/from16 v2, p12

    iput-object v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    .line 104
    move-object/from16 v3, p13

    iput-object v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    .line 105
    move-object/from16 v4, p14

    iput-object v4, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 106
    invoke-virtual {v10}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "fingerprint"

    .line 107
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v5, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/AuthenticationClient;

    .line 43
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/biometrics/IBiometricPromptReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/AuthenticationClient;

    .line 43
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    return-object v0
.end method

.method private static shouldVibrate(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .line 397
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 399
    .local v0, "enabled":I
    if-ne v0, v2, :cond_0

    .line 400
    return v2

    .line 402
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/android/server/fingerprint/ClientMonitor;->binderDied()V

    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    .line 124
    return-void
.end method

.method public abstract handleFailedAttempt()I
.end method

.method public onAcquired(II)Z
    .locals 3
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 129
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-nez v0, :cond_5

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "isKeyguardAuthenticate":Z
    :try_start_0
    const-string v1, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 138
    :cond_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 142
    invoke-virtual {v2, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(II)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_1
    const/4 v1, 0x0

    .line 150
    if-nez p1, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    .line 144
    :cond_2
    return v1

    .line 150
    .end local v0    # "isKeyguardAuthenticate":Z
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "FingerprintService"

    const-string v2, "Remote exception when sending acquired message"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    const/4 v1, 0x1

    .line 150
    if-nez p1, :cond_3

    .line 151
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    .line 147
    :cond_3
    return v1

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez p1, :cond_4

    .line 151
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    :cond_4
    throw v0

    .line 155
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result v0

    return v0
.end method

.method public onAuthenticated(II)Z
    .locals 13
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "result":Z
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 187
    .local v3, "authenticated":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-nez v4, :cond_2

    .line 189
    if-eqz v3, :cond_1

    .line 190
    :try_start_0
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAuthenticated()V

    goto :goto_1

    .line 195
    :catch_0
    move-exception v4

    goto :goto_2

    .line 192
    :cond_1
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040244

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_1
    goto :goto_3

    .line 195
    :goto_2
    nop

    .line 196
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "FingerprintService"

    const-string v6, "Failed to notify Authenticated:"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v4

    .line 202
    .local v4, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    if-eqz v4, :cond_7

    .line 204
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xfc

    invoke-static {v5, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 206
    if-nez v3, :cond_3

    .line 207
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V

    goto :goto_7

    .line 210
    :cond_3
    const-string v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAuthenticated(owner="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", gp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getIsRestricted()Z

    move-result v5

    const/16 v6, 0x3e7

    if-nez v5, :cond_5

    .line 217
    new-instance v5, Landroid/hardware/fingerprint/Fingerprint;

    const-string v8, ""

    .line 218
    iget-boolean v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsDoubleAccount:Z

    if-eqz v7, :cond_4

    .line 219
    move v9, v6

    goto :goto_4

    :cond_4
    move v9, p2

    :goto_4
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v11

    move-object v7, v5

    move v10, p1

    invoke-direct/range {v7 .. v12}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    goto :goto_5

    .line 220
    :cond_5
    const/4 v5, 0x0

    .line 222
    .local v5, "fp":Landroid/hardware/fingerprint/Fingerprint;
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v7

    .line 223
    iget-boolean v9, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsDoubleAccount:Z

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v6

    .line 222
    :goto_6
    invoke-interface {v4, v7, v8, v5, v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    .end local v5    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_7

    .line 226
    :catch_1
    move-exception v5

    .line 227
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "FingerprintService"

    const-string v7, "Failed to notify Authenticated:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    const/4 v0, 0x1

    .line 229
    .end local v5    # "e":Landroid/os/RemoteException;
    :goto_7
    goto :goto_8

    .line 231
    :cond_7
    const/4 v0, 0x1

    .line 233
    :goto_8
    if-nez v3, :cond_f

    .line 234
    if-eqz v4, :cond_9

    .line 236
    iget-boolean v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v5, :cond_8

    const-string v5, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 237
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateError()V

    .line 242
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->handleFailedAttempt()I

    move-result v5

    .line 243
    .local v5, "lockoutMode":I
    if-eqz v5, :cond_d

    .line 245
    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    .line 246
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Forcing lockout (fp driver code should do this!), mode("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    .line 249
    if-ne v5, v2, :cond_a

    .line 250
    const/4 v6, 0x7

    goto :goto_9

    .line 251
    :cond_a
    const/16 v6, 0x9

    .line 256
    .local v6, "errorCode":I
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v7

    invoke-interface {v4, v7, v8, v6, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V

    .line 260
    iget-object v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-nez v7, :cond_c

    .line 261
    :cond_b
    iget-object v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v8, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 262
    invoke-virtual {v8, v6, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v8

    .line 261
    invoke-interface {v7, v8}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 267
    .end local v6    # "errorCode":I
    :cond_c
    goto :goto_a

    .line 265
    :catch_2
    move-exception v6

    .line 266
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "FingerprintService"

    const-string v8, "Failed to notify lockout:"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_d
    :goto_a
    if-eqz v5, :cond_e

    move v1, v2

    nop

    :cond_e
    or-int/2addr v0, v1

    .line 270
    .end local v5    # "lockoutMode":I
    goto :goto_b

    .line 271
    :cond_f
    if-eqz v4, :cond_11

    .line 274
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->shouldVibrate(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-nez v1, :cond_11

    .line 275
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateSuccess()V

    .line 280
    :cond_11
    or-int/2addr v0, v2

    .line 281
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->resetFailedAttempts()V

    .line 282
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStop()V

    .line 284
    :goto_b
    return v0
.end method

.method public onEnrollResult(III)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 379
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(III)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 391
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v0, 0x1

    return v0
.end method

.method public onError(II)Z
    .locals 3
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 161
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-eqz v0, :cond_0

    .line 166
    const/4 v0, 0x1

    return v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-nez v0, :cond_1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 171
    invoke-virtual {v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Remote exception when sending error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    move-result v0

    return v0
.end method

.method public onRemoved(III)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "remaining"    # I

    .line 385
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract resetFailedAttempts()V
.end method

.method public setDoubleAccount()V
    .locals 1

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsDoubleAccount:Z

    .line 114
    return-void
.end method

.method public start()I
    .locals 7

    .line 292
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 293
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 294
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "start authentication: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return v1

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStart()V

    .line 299
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I

    move-result v2

    .line 300
    .local v2, "result":I
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 301
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAuthentication failed, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "fingeprintd_auth_start_error"

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 303
    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    .line 304
    return v2

    .line 306
    :cond_1
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is authenticating..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_4

    .line 315
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v4, :cond_3

    .line 316
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    .line 318
    :cond_3
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "key_fingerprint_package_name"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-interface {v4, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    goto :goto_0

    .line 320
    :catch_0
    move-exception v4

    .line 321
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "FingerprintService"

    const-string v6, "Unable to show fingerprint dialog"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 327
    .end local v2    # "result":I
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    nop

    .line 329
    return v3

    .line 324
    :catch_1
    move-exception v2

    .line 325
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startAuthentication failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    return v1
.end method

.method public stop(Z)I
    .locals 7
    .param p1, "initiatedByClient"    # Z

    .line 334
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "FingerprintService"

    const-string/jumbo v2, "stopAuthentication: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return v1

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStop()V

    .line 340
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    .line 341
    .local v0, "daemon":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    const/4 v2, 0x3

    if-nez v0, :cond_1

    .line 342
    const-string v1, "FingerprintService"

    const-string/jumbo v3, "stopAuthentication: no fingerprint HAL!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return v2

    .line 346
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v3

    .line 347
    .local v3, "result":I
    if-eqz v3, :cond_4

    .line 348
    const-string v1, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopAuthentication failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    nop

    .line 364
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v1, :cond_3

    .line 367
    :try_start_1
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    goto :goto_0

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return v3

    .line 351
    :cond_4
    :try_start_2
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is no longer authenticating"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    .end local v3    # "result":I
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v2, :cond_6

    .line 367
    :try_start_3
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 368
    :catch_1
    move-exception v2

    .line 369
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    nop

    .line 373
    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    .line 374
    return v1

    .line 364
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 352
    :catch_2
    move-exception v1

    .line 353
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopAuthentication failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 354
    nop

    .line 364
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v3, :cond_8

    :cond_7
    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v3, :cond_8

    .line 367
    :try_start_5
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 370
    goto :goto_2

    .line 368
    :catch_3
    move-exception v3

    .line 369
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "Unable to hide fingerprint dialog"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_8
    :goto_2
    return v2

    .line 364
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v2, :cond_a

    :cond_9
    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v2, :cond_a

    .line 367
    :try_start_6
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 370
    goto :goto_4

    .line 368
    :catch_4
    move-exception v2

    .line 369
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_a
    :goto_4
    throw v1
.end method
