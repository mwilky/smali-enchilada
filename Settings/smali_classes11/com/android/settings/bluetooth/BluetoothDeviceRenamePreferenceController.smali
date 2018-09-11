.class public Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;
.super Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;
.source "BluetoothDeviceRenamePreferenceController.java"


# instance fields
.field private mFragment:Landroid/app/Fragment;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localAdapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p3, "preferenceKey"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 44
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mContext:Landroid/content/Context;

    const/16 v3, 0xa1

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$OPDeviceNameActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 86
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    const/4 v2, 0x1

    return v2

    .line 91
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "comp":Landroid/content/ComponentName;
    :cond_0
    return v1
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mFragment:Landroid/app/Fragment;

    .line 60
    return-void
.end method

.method protected updatePreferenceState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceRenamePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 66
    return-void
.end method
