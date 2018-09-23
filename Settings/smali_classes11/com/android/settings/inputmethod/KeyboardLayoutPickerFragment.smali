.class public Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "KeyboardLayoutPickerFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field public static final EXTRA_INPUT_DEVICE_IDENTIFIER:Ljava/lang/String; = "input_device_identifier"


# instance fields
.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceId:I

.field private mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

.field private mPreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/support/v7/preference/CheckBoxPreference;",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mPreferenceMap:Ljava/util/HashMap;

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    new-instance v5, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getCollection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v6, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateCheckedState()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getEnabledKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v4}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "input_device_identifier"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    const-string v0, "input"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->updateCheckedState()V

    :cond_0
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    instance-of v0, p1, Landroid/support/v7/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mPreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/KeyboardLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/input/InputManager;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v4, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/input/InputManager;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->mInputDeviceId:I

    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment;->updateCheckedState()V

    return-void
.end method
