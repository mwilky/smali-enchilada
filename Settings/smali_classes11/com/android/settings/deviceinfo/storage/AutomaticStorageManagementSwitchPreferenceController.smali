.class public Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AutomaticStorageManagementSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# static fields
.field private static final KEY_TOGGLE_ASM:Ljava/lang/String; = "toggle_asm"

.field static final STORAGE_MANAGER_ENABLED_BY_DEFAULT_PROPERTY:Ljava/lang/String; = "ro.storage_manager.enabled"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mSwitchController:Lcom/android/settings/widget/MasterSwitchController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/app/FragmentManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mFragmentManager:Landroid/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "toggle_asm"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "toggle_asm"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->isStorageManagerEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/settings/widget/MasterSwitchController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitch:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-direct {v0, v1}, Lcom/android/settings/widget/MasterSwitchController;-><init>(Lcom/android/settings/widget/MasterSwitchPreference;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/MasterSwitchController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mSwitchController:Lcom/android/settings/widget/MasterSwitchController;

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchController;->startListening()V

    :cond_1
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x1e9

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_storage_manager_enabled"

    nop

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "ro.storage_manager.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "automatic_storage_manager_turned_off_by_policy"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v1, v3

    nop

    :cond_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->newInstance()Lcom/android/settings/deletionhelper/ActivationWarningFragment;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/deviceinfo/storage/AutomaticStorageManagementSwitchPreferenceController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v5, "ActivationWarningFragment"

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return v3
.end method
