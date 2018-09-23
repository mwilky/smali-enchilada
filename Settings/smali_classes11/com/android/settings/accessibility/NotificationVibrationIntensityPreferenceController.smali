.class public Lcom/android/settings/accessibility/NotificationVibrationIntensityPreferenceController;
.super Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;
.source "NotificationVibrationIntensityPreferenceController.java"


# static fields
.field static final PREF_KEY:Ljava/lang/String; = "notification_vibration_preference_screen"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification_vibration_preference_screen"

    const-string v1, "notification_vibration_intensity"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultIntensity()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/NotificationVibrationIntensityPreferenceController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v0

    return v0
.end method
