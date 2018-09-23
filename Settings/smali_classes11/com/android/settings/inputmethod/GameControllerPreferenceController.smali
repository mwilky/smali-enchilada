.class public Lcom/android/settings/inputmethod/GameControllerPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "GameControllerPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private final mIm:Landroid/hardware/input/InputManager;

.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 7

    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    iget-object v5, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public isChecked()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_input_devices"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public onInputDeviceAdded(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_input_devices"

    nop

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/GameControllerPreferenceController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    return-void
.end method
