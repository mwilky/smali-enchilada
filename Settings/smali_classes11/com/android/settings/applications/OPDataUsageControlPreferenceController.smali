.class public Lcom/android/settings/applications/OPDataUsageControlPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPDataUsageControlPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_DATA_USAGE_CONTROL:Ljava/lang/String; = "data_usage_control"


# instance fields
.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    const-string v0, "data_usage_control"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 36
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/applications/OPDataUsageControlPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/OPDataUsageControlPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 38
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "data_usage_control"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 47
    const-string v0, "data_usage_control"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.security.action.NETWORK_Restrict"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/applications/OPDataUsageControlPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 54
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
