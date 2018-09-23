.class public Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeAlarmsPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field protected static final KEY:Ljava/lang/String; = "zen_mode_alarms"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_mode_alarms"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_alarms"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-boolean v1, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PrefControllerMixin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange allowAlarms="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->mContext:Landroid/content/Context;

    const/16 v3, 0x4ca

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/ZenModeBackend;->saveSoundPolicy(IZ)V

    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->getZenMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAlarmsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
