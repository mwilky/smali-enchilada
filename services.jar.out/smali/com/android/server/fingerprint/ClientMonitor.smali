.class public abstract Lcom/android/server/fingerprint/ClientMonitor;
.super Ljava/lang/Object;
.source "ClientMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field protected static final DEBUG:Z = true

.field private static final DEFAULT_SUCCESS_VIBRATION_PATTERN:[J

.field protected static final ERROR_ESRCH:I = 0x3

.field private static final FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field public static FP_ERROR_VIBRATE_PATTERN_INTENSITY:[J = null

.field public static FP_SUCCESS_VIBRATE_PATTERN_INTENSITY:[J = null

.field private static final IS_SUPPORT_VIBRATION_INTENSITY:Z

.field protected static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field protected mAlreadyCancelled:Z

.field private final mContext:Landroid/content/Context;

.field private final mErrorVibrationEffect:Landroid/os/VibrationEffect;

.field private final mGroupId:I

.field private final mHalDeviceId:J

.field private final mIsRestricted:Z

.field private final mOwner:Ljava/lang/String;

.field private mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private final mSuccessVibrationEffect:Landroid/os/VibrationEffect;

.field public mSupportCustomFingerprint:Z

.field private final mTargetUserId:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/fingerprint/ClientMonitor;->DEFAULT_SUCCESS_VIBRATION_PATTERN:[J

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/fingerprint/ClientMonitor;->FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x27

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/fingerprint/ClientMonitor;->IS_SUPPORT_VIBRATION_INTENSITY:Z

    const/4 v0, 0x3

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/fingerprint/ClientMonitor;->FP_ERROR_VIBRATE_PATTERN_INTENSITY:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/fingerprint/ClientMonitor;->FP_SUCCESS_VIBRATE_PATTERN_INTENSITY:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x1e
    .end array-data

    :array_1
    .array-data 8
        -0x2
        0x0
        0xfa
    .end array-data

    :array_2
    .array-data 8
        -0x2
        0x0
        0xa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x47

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mSupportCustomFingerprint:Z

    iput-object p1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mHalDeviceId:J

    iput-object p4, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput p6, p0, Lcom/android/server/fingerprint/ClientMonitor;->mTargetUserId:I

    iput p7, p0, Lcom/android/server/fingerprint/ClientMonitor;->mGroupId:I

    iput-boolean p8, p0, Lcom/android/server/fingerprint/ClientMonitor;->mIsRestricted:Z

    iput-object p9, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mSuccessVibrationEffect:Landroid/os/VibrationEffect;

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mErrorVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz p4, :cond_0

    :try_start_0
    invoke-interface {p4, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private vibrateForIntensity(Landroid/os/Vibrator;[J)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_on_touch_intensity"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const/4 v2, -0x1

    mul-int/2addr v1, v2

    int-to-long v3, v1

    const/4 v1, 0x0

    aput-wide v3, p2, v1

    invoke-virtual {p1, p2, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    return-void
.end method

.method public destroy()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroy(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "here"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    :cond_0
    iput-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
.end method

.method public final getGroupId()I
    .locals 1

    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mGroupId:I

    return v0
.end method

.method public final getHalDeviceId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mHalDeviceId:J

    return-wide v0
.end method

.method public final getIsRestricted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mIsRestricted:Z

    return v0
.end method

.method public final getOwnerString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    return-object v0
.end method

.method public final getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-object v0
.end method

.method public final getTargetUserId()I
    .locals 1

    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mTargetUserId:I

    return v0
.end method

.method public final getToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public abstract notifyUserActivity()V
.end method

.method public onAcquired(II)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->getHalDeviceId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    :cond_1
    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "FingerprintService"

    const-string v3, "Failed to invoke sendAcquired:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    :cond_2
    return v1

    :goto_0
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    :cond_3
    throw v0
.end method

.method public abstract onAuthenticated(II)Z
.end method

.method public abstract onEnrollResult(III)Z
.end method

.method public abstract onEnumerationResult(III)Z
.end method

.method public onError(II)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->getHalDeviceId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Failed to invoke sendError:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onRemoved(III)Z
.end method

.method public abstract start()I
.end method

.method public abstract stop(Z)I
.end method

.method public final vibrateError()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sget-boolean v1, Lcom/android/server/fingerprint/ClientMonitor;->IS_SUPPORT_VIBRATION_INTENSITY:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/fingerprint/ClientMonitor;->FP_ERROR_VIBRATE_PATTERN_INTENSITY:[J

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/ClientMonitor;->vibrateForIntensity(Landroid/os/Vibrator;[J)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mErrorVibrationEffect:Landroid/os/VibrationEffect;

    sget-object v2, Lcom/android/server/fingerprint/ClientMonitor;->FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :cond_1
    return-void
.end method

.method public final vibrateSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sget-boolean v1, Lcom/android/server/fingerprint/ClientMonitor;->IS_SUPPORT_VIBRATION_INTENSITY:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/fingerprint/ClientMonitor;->FP_SUCCESS_VIBRATE_PATTERN_INTENSITY:[J

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/ClientMonitor;->vibrateForIntensity(Landroid/os/Vibrator;[J)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mSuccessVibrationEffect:Landroid/os/VibrationEffect;

    sget-object v2, Lcom/android/server/fingerprint/ClientMonitor;->FINGERPRINT_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :cond_1
    return-void
.end method
