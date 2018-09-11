.class public Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsHeaderController.java"


# static fields
.field private static final KEY_DEVICE_HEADER:Ljava/lang/String; = "bluetooth_device_header"


# instance fields
.field private mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p3, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p4, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p5, "bluetoothManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 48
    iput-object p5, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 49
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 50
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 86
    const-string v0, "bluetooth_device_header"

    return-object v0
.end method

.method protected init(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 54
    const-string v0, "bluetooth_device_header"

    .line 55
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    .line 56
    .local v0, "headerPreference":Lcom/android/settings/applications/LayoutPreference;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    .line 57
    const v3, 0x7f0a01ae

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 56
    invoke-static {v1, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    .line 58
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 59
    return-void
.end method

.method protected refresh()V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->setHeaderProperties()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 82
    return-void
.end method

.method protected setHeaderProperties()V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    const v4, 0x7f090005

    invoke-virtual {v2, v4, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    .line 63
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/bluetooth/Utils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;F)Landroid/util/Pair;

    move-result-object v0

    .line 65
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/drawable/Drawable;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "summaryText":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 68
    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getHearingAidPairDeviceSummary(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "pairDeviceSummary":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 70
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/EntityHeaderController;->setSecondSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 73
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    .line 74
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setIconContentDescription(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    .line 75
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;->mHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    .line 76
    return-void
.end method
