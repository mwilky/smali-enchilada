.class public Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPBluetoothDiscoverablePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_DISCOVERABLE_DEVICE:Ljava/lang/String; = "discoverable_device"

.field private static final SETTINGS_SYSTEM_BLUETOOTH_DEFAULT_SCAN_MODE:Ljava/lang/String; = "bluetooth_default_scan_mode"


# instance fields
.field private mBluetoothScanMode:I

.field private mContext:Landroid/content/Context;

.field mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

.field private mStatusReceive:Landroid/content/BroadcastReceiver;

.field mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 63
    const-string v0, "discoverable_device"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    const/16 v0, 0x17

    iput v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mBluetoothScanMode:I

    .line 91
    new-instance v0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$1;-><init>(Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    .line 64
    iput-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    .line 65
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 66
    .local v0, "mLocalManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 67
    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 70
    :cond_0
    return-void
.end method

.method private saveScanModeToSettingsProvider(I)V
    .locals 2
    .param p1, "scanMode"    # I

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_default_scan_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 76
    new-instance v0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    const-string v1, "discoverable_device"

    .line 77
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;-><init>(Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    .line 78
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 155
    const-string v0, "discoverable_device"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 136
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "discoverable_device"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 137
    return v1

    .line 139
    :cond_0
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    .line 140
    return v1

    .line 142
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 145
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->saveScanModeToSettingsProvider(I)V

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 148
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->saveScanModeToSettingsProvider(I)V

    .line 150
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 85
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 160
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 161
    return-void

    .line 163
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 164
    .local v0, "enableSwitch":Landroid/support/v14/preference/SwitchPreference;
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_default_scan_mode"

    .line 164
    const/16 v3, 0x17

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mBluetoothScanMode:I

    .line 168
    iget v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mBluetoothScanMode:I

    if-ne v1, v3, :cond_1

    .line 169
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 170
    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 171
    const v1, 0x7f1202df

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 173
    :cond_1
    iget v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mBluetoothScanMode:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_2

    .line 174
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 175
    const v1, 0x7f1202ec

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 176
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 178
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 179
    return-void
.end method
