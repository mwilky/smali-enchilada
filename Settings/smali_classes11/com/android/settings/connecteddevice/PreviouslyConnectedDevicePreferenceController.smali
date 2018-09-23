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

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private updatePreferenceOnSizeChanged()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget v1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->setPrefContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    new-instance v0, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;

    invoke-virtual {p1}, Lcom/android/settings/dashboard/DashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/bluetooth/SavedBluetoothDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    return-void
.end method

.method public onDeviceAdded(Landroid/support/v7/preference/Preference;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->updatePreferenceOnSizeChanged()V

    return-void
.end method

.method public onDeviceRemoved(Landroid/support/v7/preference/Preference;)V
    .locals 1

    iget v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->updatePreferenceOnSizeChanged()V

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->registerCallback()V

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->updatePreferenceOnSizeChanged()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;->unregisterCallback()V

    return-void
.end method

.method setBluetoothDeviceUpdater(Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mBluetoothDeviceUpdater:Lcom/android/settings/bluetooth/BluetoothDeviceUpdater;

    return-void
.end method

.method setPreference(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-void
.end method

.method setPreferenceSize(I)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->mPreferenceSize:I

    return-void
.end method
