.class public Lcom/android/settings/fuelgauge/OPPowerOptimizePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OPPowerOptimizePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_POWER_OPTIMIZE:Ljava/lang/String; = "op_power_optimize"


# instance fields
.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 38
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/OPPowerOptimizePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/OPPowerOptimizePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 40
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "op_power_optimize"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 49
    const-string v0, "op_power_optimize"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.BACKGROUND_OPTIMIZE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 53
    const-string v1, "classname"

    const-class v2, Lcom/android/settings/Settings$BgOptimizeAppListActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/android/settings/fuelgauge/OPPowerOptimizePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 58
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 60
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 33
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
