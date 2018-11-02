.class public Lcom/android/settings/gestures/GestureSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "GestureSettings.java"


# static fields
.field private static final KEY_ASSIST:Ljava/lang/String; = "gesture_assist_input_summary"

.field private static final KEY_DOUBLE_TAP_POWER:Ljava/lang/String; = "gesture_double_tap_power_input_summary"

.field private static final KEY_DOUBLE_TAP_SCREEN:Ljava/lang/String; = "gesture_double_tap_screen_input_summary"

.field private static final KEY_DOUBLE_TWIST:Ljava/lang/String; = "gesture_double_twist_input_summary"

.field private static final KEY_PICK_UP:Ljava/lang/String; = "gesture_pick_up_input_summary"

.field private static final KEY_PREVENT_RINGING:Ljava/lang/String; = "gesture_prevent_ringing_summary"

.field private static final KEY_SWIPE_DOWN:Ljava/lang/String; = "gesture_swipe_down_fingerprint_input_summary"

.field private static final KEY_SWIPE_UP:Ljava/lang/String; = "gesture_swipe_up_input_summary"

.field private static final TAG:Ljava/lang/String; = "GestureSettings"


# instance fields
.field private mAmbientDisplayConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private getConfig(Landroid/content/Context;)Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/gestures/GestureSettings;->mAmbientDisplayConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/GestureSettings;->mAmbientDisplayConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/gestures/GestureSettings;->mAmbientDisplayConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    return-object v0
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "GestureSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1cb

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160059

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/gestures/GestureSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;->setAssistOnly(Z)Lcom/android/settings/gestures/AssistGestureSettingsPreferenceController;

    const-class v0, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/gestures/GestureSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settings/gestures/GestureSettings;->getConfig(Landroid/content/Context;)Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/PickupGesturePreferenceController;

    const-class v0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/gestures/GestureSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settings/gestures/GestureSettings;->getConfig(Landroid/content/Context;)Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    return-void
.end method
