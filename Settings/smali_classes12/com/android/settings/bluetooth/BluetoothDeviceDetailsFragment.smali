.class public Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "BluetoothDeviceDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;
    }
.end annotation


# static fields
.field static EDIT_DEVICE_NAME_ITEM_ID:I = 0x0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final KEY_DEVICE_ADDRESS:Ljava/lang/String; = "device_address"

.field private static final TAG:Ljava/lang/String; = "BTDeviceDetailsFrg"

.field static sTestDataFactory:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDeviceAddress:Ljava/lang/String;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->EDIT_DEVICE_NAME_ITEM_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "device_address"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-direct {v1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    new-instance v8, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/bluetooth/BluetoothDetailsHeaderController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v2, p1, p0, v3, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsButtonsController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v2, v8

    move-object v3, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/bluetooth/BluetoothDetailsProfilesController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {v2, p1, p0, v3, v1}, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;-><init>(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->sTestDataFactory:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->sTestDataFactory:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;

    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;->getDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    return-object v1
.end method

.method getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->sTestDataFactory:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->sTestDataFactory:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;

    invoke-interface {v0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$TestDataFactory;->getManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BTDeviceDetailsFrg"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3f1

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160026

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    sget v0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->EDIT_DEVICE_NAME_ITEM_ID:I

    const/4 v1, 0x0

    const v2, 0x7f120330

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0801cd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->EDIT_DEVICE_NAME_ITEM_ID:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v0}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->newInstance(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "RemoteDeviceName"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
