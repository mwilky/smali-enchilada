.class public Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BluetoothDashboardFragment.java"


# static fields
.field public static final KEY_BLUETOOTH_SCREEN:Ljava/lang/String; = "bluetooth_switchbar_screen"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "BluetoothDashboardFrag"


# instance fields
.field private mController:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f1206f3

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "BluetoothDashboardFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x56e

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160028

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    new-instance v2, Lcom/android/settings/widget/SwitchBarController;

    iget-object v3, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v2, v3}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    iget-object v3, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/widget/FooterPreference;)V

    iput-object v1, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mController:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mController:Lcom/android/settings/bluetooth/BluetoothSwitchPreferenceController;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->setFragment(Landroid/app/Fragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    return-void
.end method
