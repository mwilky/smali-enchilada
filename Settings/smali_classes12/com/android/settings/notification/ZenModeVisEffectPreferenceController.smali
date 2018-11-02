.class public Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeVisEffectPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field protected final mEffect:I

.field protected final mKey:Ljava/lang/String;

.field protected final mMetricsCategory:I

.field protected final mParentSuppressedEffects:[I

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V
    .locals 0

    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p3, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mKey:Ljava/lang/String;

    iput p4, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mEffect:I

    iput p5, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mMetricsCategory:I

    iput-object p6, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    iget v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mEffect:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mMetricsCategory:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget v2, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mEffect:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/notification/ZenModeBackend;->saveVisualEffectsPolicy(IZ)V

    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget v1, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mEffect:I

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->isVisualEffectSuppressed(I)Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    array-length v4, v2

    move v5, v1

    move v1, v3

    :goto_0
    if-ge v1, v4, :cond_0

    aget v6, v2, v1

    iget-object v7, p0, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v7, v6}, Lcom/android/settings/notification/ZenModeBackend;->isVisualEffectSuppressed(I)Z

    move-result v7

    or-int/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v5

    :cond_1
    if-eqz v1, :cond_2

    move-object v2, p1

    check-cast v2, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/notification/ZenModeVisEffectPreferenceController;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-object v2, p1

    check-cast v2, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    move-object v2, p1

    check-cast v2, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    move-object v2, p1

    check-cast v2, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->setEnabled(Z)V

    move-object v2, p1

    check-cast v2, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_1
    return-void
.end method
