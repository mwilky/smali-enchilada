.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Vibrator$VibrationIntensity;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Vibrator"

.field public static final VIBRATION_INTENSITY_HIGH:I = 0x3

.field public static final VIBRATION_INTENSITY_LOW:I = 0x1

.field public static final VIBRATION_INTENSITY_MEDIUM:I = 0x2

.field public static final VIBRATION_INTENSITY_OFF:I


# instance fields
.field private final mDefaultHapticFeedbackIntensity:I

.field private final mDefaultNotificationVibrationIntensity:I

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    const v1, 0x10e002d

    invoke-direct {p0, v0, v1}, Landroid/os/Vibrator;->loadDefaultIntensity(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Landroid/os/Vibrator;->mDefaultHapticFeedbackIntensity:I

    const v1, 0x10e0034

    invoke-direct {p0, v0, v1}, Landroid/os/Vibrator;->loadDefaultIntensity(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Landroid/os/Vibrator;->mDefaultNotificationVibrationIntensity:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    const v0, 0x10e002d

    invoke-direct {p0, p1, v0}, Landroid/os/Vibrator;->loadDefaultIntensity(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/os/Vibrator;->mDefaultHapticFeedbackIntensity:I

    const v0, 0x10e0034

    invoke-direct {p0, p1, v0}, Landroid/os/Vibrator;->loadDefaultIntensity(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroid/os/Vibrator;->mDefaultNotificationVibrationIntensity:I

    return-void
.end method

.method private loadDefaultIntensity(Landroid/content/Context;I)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public getDefaultHapticFeedbackIntensity()I
    .locals 1

    iget v0, p0, Landroid/os/Vibrator;->mDefaultHapticFeedbackIntensity:I

    return v0
.end method

.method public getDefaultNotificationVibrationIntensity()I
    .locals 1

    iget v0, p0, Landroid/os/Vibrator;->mDefaultNotificationVibrationIntensity:I

    return v0
.end method

.method public abstract hasAmplitudeControl()Z
.end method

.method public abstract hasVibrator()Z
.end method

.method public abstract vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
.end method

.method public vibrate(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate(JLandroid/media/AudioAttributes;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p1, p2, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Vibrator"

    const-string v2, "Failed to create VibrationEffect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public vibrate(Landroid/os/VibrationEffect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    .locals 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate([JI)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate([JILandroid/media/AudioAttributes;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    array-length v0, p1

    if-ge p2, v0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Vibrator"

    const-string v2, "Failed to create VibrationEffect"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vibrate called with repeat index out of bounds (pattern.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vibrator"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method
