.class public abstract Lcom/android/settings/bluetooth/BluetoothDetailsController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BluetoothDetailsController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field protected final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field protected final mContext:Landroid/content/Context;

.field protected final mFragment:Landroid/support/v14/preference/PreferenceFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public final displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->init(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    return-void
.end method

.method protected abstract init(Landroid/support/v7/preference/PreferenceScreen;)V
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->refresh()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->refresh()V

    return-void
.end method

.method protected abstract refresh()V
.end method
