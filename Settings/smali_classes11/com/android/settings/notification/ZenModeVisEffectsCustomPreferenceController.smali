.class public Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeVisEffectsCustomPreferenceController.java"


# static fields
.field protected static final INTERRUPTIVE_EFFECTS:I = 0x9c


# instance fields
.field private final KEY:Ljava/lang/String;

.field private mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p3, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->KEY:Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$displayPreference$0(Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->launchCustomSettings()V

    return-void
.end method

.method public static synthetic lambda$displayPreference$1(Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->launchCustomSettings()V

    return-void
.end method

.method private launchCustomSettings()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->select()V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/ZenModeBlockedEffectsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f1215ca

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/16 v1, 0x578

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method protected areCustomOptionsSelected()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v0, v0, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    move v2, v3

    nop

    :cond_1
    return v2
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$hYHNs4-TKsGpjPSCluD3oYAyplI;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$hYHNs4-TKsGpjPSCluD3oYAyplI;-><init>(Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setOnGearClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$anmhCczZGnQRUAoXVehKNMc66b4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$anmhCczZGnQRUAoXVehKNMc66b4;-><init>(Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setOnRadioButtonClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected select()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x577

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/ZenCustomRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeVisEffectsCustomPreferenceController;->areCustomOptionsSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setChecked(Z)V

    return-void
.end method
