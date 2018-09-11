.class public Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PreviouslyConnectedDevicePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;


# instance fields
.field private mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mPreferenceSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private updatePreferenceOnSizeChanged()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget v1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 109
    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 58
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->setPrefContext(Landroid/content/Context;)V

    .line 60
    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;

    .line 74
    new-instance v0, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    .line 76
    return-void
.end method

.method public onDeviceAdded(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 80
    iget v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    .line 81
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->updatePreferenceOnSizeChanged()V

    .line 82
    return-void
.end method

.method public onDeviceRemoved(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 86
    iget v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    .line 87
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->updatePreferenceOnSizeChanged()V

    .line 88
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->registerCallback()V

    .line 65
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->updatePreferenceOnSizeChanged()V

    .line 66
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->unregisterCallback()V

    .line 71
    return-void
.end method

.method setBluetoothDeviceUpdater(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;)V
    .locals 0
    .param p1, "bluetoothDeviceUpdater"    # Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    .line 93
    return-void
.end method

.method setPreference(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 103
    return-void
.end method

.method setPreferenceSize(I)V
    .locals 0
    .param p1, "size"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 97
    iput p1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    .line 98
    return-void
.end method
