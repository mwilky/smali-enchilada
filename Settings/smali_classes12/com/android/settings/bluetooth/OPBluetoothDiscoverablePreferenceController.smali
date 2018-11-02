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

    const-string v0, "discoverable_device"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0x17

    iput v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mBluetoothScanMode:I

    new-instance v0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$1;-><init>(Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private saveScanModeToSettingsProvider(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_default_scan_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    new-instance v0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    const-string v1, "discoverable_device"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;-><init>(Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "discoverable_device"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "discoverable_device"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v2, 0x78

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setDiscoverableTimeout(I)V

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->saveScanModeToSettingsProvider(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->saveScanModeToSettingsProvider(I)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSettingObserver:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mStatusReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_default_scan_mode"

    const/16 v3, 0x17

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mBluetoothScanMode:I

    iget v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mBluetoothScanMode:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    const v1, 0x7f1202df

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mBluetoothScanMode:I

    const/16 v2, 0x15

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    const v1, 0x7f1202ec

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method
