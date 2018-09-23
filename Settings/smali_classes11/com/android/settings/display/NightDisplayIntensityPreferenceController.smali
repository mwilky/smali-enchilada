.class public Lcom/android/settings/display/NightDisplayIntensityPreferenceController;
.super Lcom/android/settings/core/SliderPreferenceController;
.source "NightDisplayIntensityPreferenceController.java"


# instance fields
.field private mController:Lcom/android/internal/app/ColorDisplayController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/SliderPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {v0, p1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    return-void
.end method

.method private convertTemperature(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getMaximumColorTemperature()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    nop

    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->getMaxSteps()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/ColorDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSteps()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getMinimumColorTemperature()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->convertTemperature(I)I

    move-result v0

    return v0
.end method

.method public getSliderPosition()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorTemperature()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->convertTemperature(I)I

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "night_display_temperature"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setSliderPosition(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {p0, p1}, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->convertTemperature(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setColorTemperature(I)Z

    move-result v0

    return v0
.end method

.method public final updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/SliderPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayIntensityPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void
.end method
