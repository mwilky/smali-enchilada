.class public Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;
.super Lcom/android/settings/connecteddevice/usb/UsbDetailsController;
.source "UsbDetailsDataRoleController.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# instance fields
.field private mDevicePref:Lcom/android/settings/widget/RadioButtonPreference;

.field private final mFailureCallback:Ljava/lang/Runnable;

.field private mHostPref:Lcom/android/settings/widget/RadioButtonPreference;

.field private mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

.field private mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;-><init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/UsbBackend;)V

    new-instance v0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsDataRoleController$cU-Vca-1LUjTmehDhPZv_qMdSP8;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/-$$Lambda$UsbDetailsDataRoleController$cU-Vca-1LUjTmehDhPZv_qMdSP8;-><init>(Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mFailureCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    const v1, 0x7f12128c

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    :cond_0
    return-void
.end method

.method private makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 2

    new-instance v0, Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(I)V

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f121275

    invoke-direct {p0, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f121274

    invoke-direct {p0, v0, v1}, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settings/widget/RadioButtonPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "usb_details_data_role"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleFromString(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v1}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v1, v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->setDataRole(I)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    const v1, 0x7f12128b

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mFailureCallback:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mUsbBackend:Lcom/android/settings/connecteddevice/usb/UsbBackend;

    invoke-virtual {v3}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0xbb8

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x3a98

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method protected refresh(ZJII)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p5, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-ne p5, v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHostPref:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mDevicePref:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v0, :cond_5

    if-eqz p5, :cond_5

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->dataRoleFromString(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p5, :cond_4

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    const v1, 0x7f12128c

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreference;->setSummary(I)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mNextRolePref:Lcom/android/settings/widget/RadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDetailsDataRoleController;->mFailureCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method
