.class public Lcom/android/settings/system/OPOTGPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OPOTGPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/system/OPOTGPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_OTG_READ_ENABLE:Ljava/lang/String; = "otg_read_enable"


# instance fields
.field private mSettingObserver:Lcom/android/settings/system/OPOTGPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 51
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 55
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 56
    new-instance v0, Lcom/android/settings/system/OPOTGPreferenceController$SettingObserver;

    const-string v1, "otg_read_enable"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/system/OPOTGPreferenceController$SettingObserver;-><init>(Lcom/android/settings/system/OPOTGPreferenceController;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/system/OPOTGPreferenceController;->mSettingObserver:Lcom/android/settings/system/OPOTGPreferenceController$SettingObserver;

    .line 57
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "otg_read_enable"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 80
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "otg_read_enable"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 81
    return v1

    .line 83
    :cond_0
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    .line 84
    return v1

    .line 86
    :cond_1
    const-string v0, "persist.sys.oem.otg_support"

    move-object v1, p1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "true"

    goto :goto_0

    :cond_2
    const-string v1, "false"

    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/system/OPOTGPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_otg_auto_disable"

    .line 89
    move-object v2, p1

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 87
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/android/settings/system/OPOTGPreferenceController;->mSettingObserver:Lcom/android/settings/system/OPOTGPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/system/OPOTGPreferenceController;->mSettingObserver:Lcom/android/settings/system/OPOTGPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/system/OPOTGPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/system/OPOTGPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 71
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/android/settings/system/OPOTGPreferenceController;->mSettingObserver:Lcom/android/settings/system/OPOTGPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/system/OPOTGPreferenceController;->mSettingObserver:Lcom/android/settings/system/OPOTGPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/system/OPOTGPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/system/OPOTGPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 101
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 102
    return-void

    .line 104
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 106
    .local v0, "enableSwitchNetwork":Landroid/support/v14/preference/SwitchPreference;
    iget-object v1, p0, Lcom/android/settings/system/OPOTGPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oneplus_otg_auto_disable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 114
    return-void
.end method
