.class public Lcom/android/settings/network/OPSimAndNetworkSettingsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPSimAndNetworkSettingsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_OP_SIM_CORD:Ljava/lang/String; = "op_sim_cord"


# instance fields
.field private final mIsSecondaryUser:Z

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    const-string v0, "op_sim_cord"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/OPSimAndNetworkSettingsPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 37
    iget-object v0, p0, Lcom/android/settings/network/OPSimAndNetworkSettingsPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/OPSimAndNetworkSettingsPreferenceController;->mIsSecondaryUser:Z

    .line 39
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/network/OPSimAndNetworkSettingsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/OPSimAndNetworkSettingsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 63
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/network/OPSimAndNetworkSettingsPreferenceController;->isUserRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "op_sim_cord"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 72
    const-string v0, "op_sim_cord"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.SIM_AND_NETWORK_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/network/OPSimAndNetworkSettingsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 79
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUserRestricted()Z
    .locals 3

    .line 51
    iget-boolean v0, p0, Lcom/android/settings/network/OPSimAndNetworkSettingsPreferenceController;->mIsSecondaryUser:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/OPSimAndNetworkSettingsPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_config_mobile_networks"

    .line 55
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 52
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 51
    :goto_1
    return v0
.end method
