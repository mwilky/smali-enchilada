.class public Lcom/android/settings/applications/HighPowerAppsController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "HighPowerAppsController.java"


# static fields
.field static final KEY_HIGH_POWER_APPS:Ljava/lang/String; = "high_power_apps"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    const-string v0, "high_power_apps"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/settings/applications/HighPowerAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_0
    const/4 v0, 0x2

    .line 52
    :goto_0
    return v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 40
    const-string v0, "high_power_apps"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.BACKGROUND_OPTIMIZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "classname"

    const-class v2, Lcom/android/settings/Settings$BgOptimizeAppListActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/android/settings/applications/HighPowerAppsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    const/4 v1, 0x1

    return v1

    .line 46
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
