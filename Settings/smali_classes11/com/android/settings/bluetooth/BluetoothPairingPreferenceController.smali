.class public Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BluetoothPairingPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field public static final KEY_PAIRING:Ljava/lang/String; = "pref_bt_pairing"

.field private static final TAG:Ljava/lang/String; = "BluetoothPairingPrefCtrl"


# instance fields
.field private mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Lcom/android/settings/dashboard/DashboardFragment;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 43
    return-void
.end method


# virtual methods
.method public createBluetoothPairingPreference(I)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "order"    # I

    .line 76
    new-instance v0, Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 77
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const-string v1, "pref_bt_pairing"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0801c8

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f120306

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "pref_bt_pairing"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 57
    const-string v0, "pref_bt_pairing"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/bluetooth/BluetoothPairingDetail;

    .line 59
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f120304

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingPreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 61
    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardFragment;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 64
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 47
    const/4 v0, 0x1

    return v0
.end method
