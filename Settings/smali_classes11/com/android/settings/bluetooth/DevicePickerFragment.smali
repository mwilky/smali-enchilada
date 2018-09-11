.class public final Lcom/android/settings/bluetooth/DevicePickerFragment;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# static fields
.field private static final KEY_BT_DEVICE_LIST:Ljava/lang/String; = "bt_device_list"

.field private static final TAG:Ljava/lang/String; = "DevicePickerFragment"


# instance fields
.field mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mScanAllowed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 196
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceListKey()Ljava/lang/String;
    .locals 1

    .line 186
    const-string v0, "bt_device_list"

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 171
    const-string v0, "DevicePickerFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 78
    const/16 v0, 0x19

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 176
    const v0, 0x7f16004b

    return v0
.end method

.method initPreferencesFromPreferenceScreen()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 64
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setFilter(I)V

    .line 66
    const-string v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 67
    const-string v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 68
    const-string v1, "bt_device_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iput-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    .line 69
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .line 162
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 164
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->enableScanning()V

    .line 167
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12054d

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 92
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_config_bluetooth"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScanAllowed:Z

    .line 93
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/DevicePickerFragment;->setHasOptionsMenu(Z)V

    .line 94
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 73
    invoke-super {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 116
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .line 148
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 149
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    const/16 v1, 0xc

    if-ne p2, v1, :cond_1

    .line 153
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    goto :goto_0

    .line 155
    :cond_1
    const/16 v1, 0xa

    if-ne p2, v1, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->enableScanning()V

    .line 158
    :cond_2
    :goto_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .param p1, "btPreference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->disableScanning()V

    .line 128
    nop

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_1

    .line 132
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->finish()V

    .line 137
    :goto_1
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .line 141
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 142
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScanEnabled:Z

    or-int/2addr p1, v0

    .line 143
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 144
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 98
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStart()V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->addCachedDevices()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 101
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mScanAllowed:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->enableScanning()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerFragment;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;->setProgress(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DevicePickerFragment;->disableScanning()V

    .line 111
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onStop()V

    .line 112
    return-void
.end method
