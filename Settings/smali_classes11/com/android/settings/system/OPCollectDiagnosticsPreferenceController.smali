.class public Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OPCollectDiagnosticsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY_COLLECT_DIAGNOSTICS:Ljava/lang/String; = "reset_collect_diagnostics"


# instance fields
.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 43
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;->mUm:Landroid/os/UserManager;

    .line 44
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 59
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    return-void

    .line 65
    :cond_0
    const-string v0, "reset_collect_diagnostics"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 66
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120412

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "action":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 72
    .end local v1    # "action":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "reset_collect_diagnostics"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDemoUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 76
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/settings/system/OPCollectDiagnosticsPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120412

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 85
    :cond_1
    return-void
.end method
