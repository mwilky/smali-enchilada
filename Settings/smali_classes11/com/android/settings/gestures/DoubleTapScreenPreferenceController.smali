.class public Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "DoubleTapScreenPreferenceController.java"


# static fields
.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_double_tap_screen_video"


# instance fields
.field private final OFF:I

.field private final ON:I

.field private final SECURE_KEY:Ljava/lang/String;

.field private mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mDoubleTapScreenPrefKey:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->ON:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->OFF:I

    const-string v0, "doze_pulse_on_double_tap"

    iput-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->SECURE_KEY:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mUserId:I

    iput-object p2, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mDoubleTapScreenPrefKey:Ljava/lang/String;

    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 1

    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v0, p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p1}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->isSuggestionComplete(Lcom/android/internal/hardware/AmbientDisplayConfiguration;Landroid/content/SharedPreferences;)Z

    move-result v0

    return v0
.end method

.method static isSuggestionComplete(Lcom/android/internal/hardware/AmbientDisplayConfiguration;Landroid/content/SharedPreferences;)Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "pref_double_tap_screen_suggestion_complete"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method protected canHandleClicks()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget v1, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->doubleTapSensorAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getResultPayload()Lcom/android/settings/search/ResultPayload;
    .locals 11

    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/gestures/DoubleTapScreenSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mDoubleTapScreenPrefKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120585

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/android/settings/search/InlineSwitchPayload;

    const-string v5, "doze_pulse_on_double_tap"

    invoke-virtual {p0}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->isAvailable()Z

    move-result v9

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x1

    move-object v4, v1

    move-object v8, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search/InlineSwitchPayload;-><init>(Ljava/lang/String;IILandroid/content/Intent;ZI)V

    return-object v1
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 1

    const-string v0, "gesture_double_tap_screen_video"

    return-object v0
.end method

.method public isChecked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget v1, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnDoubleTapEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gesture_double_tap_screen"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_on_double_tap"

    nop

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->mAmbientConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    return-object p0
.end method
