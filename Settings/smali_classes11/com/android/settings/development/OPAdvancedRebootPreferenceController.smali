.class public Lcom/android/settings/development/OPAdvancedRebootPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "OPAdvancedRebootPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_ADVANCED_REBOOT:Ljava/lang/String; = "advanced_reboot"


# instance fields
.field private mSettingObserver:Lcom/android/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 50
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 59
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/development/OPAdvancedRebootPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/OPAdvancedRebootPreferenceController;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/development/OPAdvancedRebootPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 64
    :cond_0
    new-instance v0, Lcom/android/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;

    const-string v1, "advanced_reboot"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;-><init>(Lcom/android/settings/development/OPAdvancedRebootPreferenceController;Landroid/support/v7/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/development/OPAdvancedRebootPreferenceController;->mSettingObserver:Lcom/android/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;

    .line 65
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "advanced_reboot"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 88
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "advanced_reboot"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    return v1

    .line 91
    :cond_0
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    .line 92
    return v1

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/settings/development/OPAdvancedRebootPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "advanced_reboot"

    .line 96
    move-object v2, p1

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 94
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method isAdminUser()Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/settings/development/OPAdvancedRebootPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/android/settings/development/OPAdvancedRebootPreferenceController;->mSettingObserver:Lcom/android/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings/development/OPAdvancedRebootPreferenceController;->mSettingObserver:Lcom/android/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/development/OPAdvancedRebootPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/android/settings/development/OPAdvancedRebootPreferenceController;->mSettingObserver:Lcom/android/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/development/OPAdvancedRebootPreferenceController;->mSettingObserver:Lcom/android/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/development/OPAdvancedRebootPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 72
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 102
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 103
    return-void

    .line 105
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 107
    .local v0, "enableSwitchNetwork":Landroid/support/v14/preference/SwitchPreference;
    iget-object v1, p0, Lcom/android/settings/development/OPAdvancedRebootPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "advanced_reboot"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 109
    return-void
.end method
