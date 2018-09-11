.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsPowerRoleController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final mFailureCallback:Ljava/lang/Runnable;

.field private mNextPowerRole:I

.field private mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;
    .param p3, "backend"    # Lcom/android/settings/connecteddevice/usb/UsbBackend;

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    .line 41
    new-instance v0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsPowerRoleController$jiVF0c0jApWPiJapsUjjyYudYlM;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsPowerRoleController$jiVF0c0jApWPiJapsUjjyYudYlM;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFailureCallback:Ljava/lang/Runnable;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    .line 52
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;)V
    .locals 2

    .line 42
    iget v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f12128f

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 58
    new-instance v0, Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 59
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f12129e

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 60
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 62
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 127
    const-string v0, "usb_details_power_role"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 122
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 101
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 102
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 103
    .local v0, "newRole":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getPowerRole()I

    move-result v2

    if-eq v2, v0, :cond_2

    iget v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-nez v2, :cond_2

    .line 104
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-nez v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v2, v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setPowerRole(I)V

    .line 107
    iput v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    .line 108
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const v3, 0x7f12128e

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 110
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFailureCallback:Ljava/lang/Runnable;

    .line 111
    iget-object v4, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v4}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v4, 0xbb8

    goto :goto_1

    .line 112
    :cond_1
    const-wide/16 v4, 0x3a98

    .line 110
    :goto_1
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 117
    return v1
.end method

.method protected refresh(ZJII)V
    .locals 3
    .param p1, "connected"    # Z
    .param p2, "functions"    # J
    .param p4, "powerRole"    # I
    .param p5, "dataRole"    # I

    .line 67
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 69
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFragment:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 72
    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_2

    .line 73
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 74
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_1

    .line 75
    :cond_2
    const/4 v2, 0x2

    if-ne p4, v2, :cond_3

    .line 76
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 77
    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_1

    .line 79
    :cond_3
    if-eqz p1, :cond_4

    goto :goto_1

    .line 80
    :cond_4
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 81
    iget v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-nez v1, :cond_5

    .line 82
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    :cond_5
    :goto_1
    iget v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-eqz v1, :cond_7

    if-eqz p4, :cond_7

    .line 87
    iget v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    if-ne v1, p4, :cond_6

    .line 89
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 92
    :cond_6
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f12128f

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 94
    :goto_2
    iput v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mNextPowerRole:I

    .line 95
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsPowerRoleController;->mFailureCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    :cond_7
    return-void
.end method
