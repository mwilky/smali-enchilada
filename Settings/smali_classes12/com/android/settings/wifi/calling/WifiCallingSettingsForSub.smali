.class public Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiCallingSettingsForSub.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BUTTON_WFC_MODE:Ljava/lang/String; = "wifi_calling_mode"

.field private static final BUTTON_WFC_ROAMING_MODE:Ljava/lang/String; = "wifi_calling_roaming_mode"

.field public static final EXTRA_LAUNCH_CARRIER_APP:Ljava/lang/String; = "EXTRA_LAUNCH_CARRIER_APP"

.field protected static final FRAGMENT_BUNDLE_SUBID:Ljava/lang/String; = "subId"

.field public static final LAUCH_APP_ACTIVATE:I = 0x0

.field public static final LAUCH_APP_UPDATE:I = 0x1

.field private static final PREFERENCE_EMERGENCY_ADDRESS:Ljava/lang/String; = "emergency_address_key"

.field private static final REQUEST_CHECK_WFC_EMERGENCY_ADDRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiCallingForSub"


# instance fields
.field private mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

.field private mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

.field private mEditableWfcMode:Z

.field private mEditableWfcRoamingMode:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSubId:I

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUpdateAddress:Landroid/support/v7/preference/Preference;

.field private final mUpdateAddressListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mValidListener:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddressListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/ims/ImsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->showAlert(Landroid/content/Intent;)V

    return-void
.end method

.method private getCarrierActivityIntent()Landroid/content/Intent;
    .locals 5

    nop

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const-string v3, "wfc_emergency_address_carrier_app_string"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v1

    :cond_2
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_3

    return-object v1

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v1
.end method

.method private getWfcModeSummary(I)I
    .locals 4

    const v0, 0x10406ff

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v1, "WifiCallingForSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected WFC mode value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const v0, 0x10406de

    goto :goto_0

    :pswitch_1
    const v0, 0x10406dc

    goto :goto_0

    :pswitch_2
    const v0, 0x10406dd

    nop

    :cond_0
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showAlert(Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "alertTitle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "alertMessage"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateBody()V
    .locals 7

    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "editable_wfc_mode_bool"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    const-string v4, "editable_wfc_roaming_mode_bool"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    const-string v4, "carrier_wfc_supports_wifi_only_bool"

    invoke-virtual {v3, v4, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const v4, 0x7f0300d0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const v4, 0x7f0300d2

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    const v5, 0x7f0300cf

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v5, v4}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v5, v2}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4, v2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateButtonWfcMode(ZII)V

    return-void
.end method

.method private updateButtonWfcMode(ZII)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getWfcModeSummary(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    :cond_2
    if-eqz p1, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_2
    iget-boolean v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_3
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_4
    return-void
.end method

.method private updateWfcMode(Z)V
    .locals 6

    const-string v0, "WifiCallingForSub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWfcMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateButtonWfcMode(ZII)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4ce

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEmptyView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->setEmptyView(Landroid/view/View;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1213f3

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1213f4

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a055a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/SwitchBar;

    iput-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitch:Landroid/widget/Switch;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string v2, "WifiCallingForSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WFC emergency address activity result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1600e1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "subId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    :cond_1
    :goto_0
    nop

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    const-string v0, "wifi_calling_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "wifi_calling_roaming_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "emergency_address_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddressListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f0d02e1

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0429

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {p2, v1, v2, v0}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    invoke-super {p0, p1, v2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    const-string v0, "WifiCallingForSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange mButtonWfcMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v4, v0, v3}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getWfcModeSummary(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v3

    if-eq v0, v3, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v4, v0, v1}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v2, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v2

    if-eq v0, v2, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3, v0, v1}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    :cond_3
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateBody()V

    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "alertShow"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->showAlert(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "subId"

    iget v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const-string v0, "WifiCallingForSub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v3, "EXTRA_LAUNCH_CARRIER_APP"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    :goto_0
    return-void
.end method
