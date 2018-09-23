.class public Lcom/android/settings/display/AmbientDisplaySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AmbientDisplaySettings.java"


# static fields
.field public static final KEY_AMBIENT_DISPLAY_ALWAYS_ON:Ljava/lang/String; = "ambient_display_always_on"

.field private static final TAG:Ljava/lang/String; = "AmbientDisplaySettings"


# instance fields
.field private mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private getConfig(Landroid/content/Context;)Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplaySettings;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/AmbientDisplaySettings;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplaySettings;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    return-object v0
.end method

.method public static synthetic lambda$EZV3GOIvjt5KUMzbyw8y8_onopw(Lcom/android/settings/display/AmbientDisplaySettings;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "AmbientDisplaySettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3eb

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f16000f

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/display/AmbientDisplaySettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settings/display/AmbientDisplaySettings;->getConfig(Landroid/content/Context;)Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;

    move-result-object v0

    new-instance v1, Lcom/android/settings/display/-$$Lambda$AmbientDisplaySettings$EZV3GOIvjt5KUMzbyw8y8_onopw;

    invoke-direct {v1, p0}, Lcom/android/settings/display/-$$Lambda$AmbientDisplaySettings$EZV3GOIvjt5KUMzbyw8y8_onopw;-><init>(Lcom/android/settings/display/AmbientDisplaySettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;->setCallback(Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController$OnPreferenceChangedCallback;)Lcom/android/settings/display/AmbientDisplayAlwaysOnPreferenceController;

    const-class v0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/display/AmbientDisplaySettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settings/display/AmbientDisplaySettings;->getConfig(Landroid/content/Context;)Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;->setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/display/AmbientDisplayNotificationsPreferenceController;

    const-class v0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/display/AmbientDisplaySettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settings/display/AmbientDisplaySettings;->getConfig(Landroid/content/Context;)Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;->setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/DoubleTapScreenPreferenceController;

    const-class v0, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/display/AmbientDisplaySettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gestures/PickupGesturePreferenceController;

    invoke-direct {p0, p1}, Lcom/android/settings/display/AmbientDisplaySettings;->getConfig(Landroid/content/Context;)Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->setConfig(Lcom/android/internal/hardware/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/PickupGesturePreferenceController;

    return-void
.end method
