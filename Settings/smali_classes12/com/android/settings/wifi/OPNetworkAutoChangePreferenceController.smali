.class public Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OPNetworkAutoChangePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_NETWORK_AUTO_CHANGE:Ljava/lang/String; = "network_auto_change"

.field public static final WIFI_AUTO_CHANGE_TO_MOBILE_DATA:Ljava/lang/String; = "wifi_auto_change_to_mobile_data"

.field public static final WIFI_SHOULD_SWITCH_NETWORK:Ljava/lang/String; = "wifi_should_switch_network"


# instance fields
.field private mSettingObserver:Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    new-instance v0, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController$SettingObserver;

    const-string v1, "network_auto_change"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController$SettingObserver;-><init>(Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController;->mSettingObserver:Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController$SettingObserver;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "network_auto_change"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network_auto_change"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_should_switch_network"

    move-object v3, p1

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    new-array v2, v0, [I

    aput v0, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_auto_change_to_mobile_data"

    move-object v3, p1

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController;->mSettingObserver:Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController;->mSettingObserver:Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController;->mSettingObserver:Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController;->mSettingObserver:Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/OPNetworkAutoChangePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_should_switch_network"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
