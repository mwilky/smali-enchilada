.class public Lcom/oneplus/settings/controllers/OPRoamingControlPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPRoamingControlPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_BUTTON_ONEPLUS_ROAMING:Ljava/lang/String; = "key_button_oneplus_roaming"

.field private static final ONEPLUS_ROAMING_PACKAGE:Ljava/lang/String; = "com.redteamobile.oneplus.roaming"

.field private static final ONEPLUS_ROAMING_PACKAGE_LAUNCHER:Ljava/lang/String; = "com.redteamobile.oneplus.roaming.activity.MainActivity"


# instance fields
.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const-string v0, "key_button_oneplus_roaming"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private hasCatRoaming()Z
    .locals 7

    .line 37
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPRoamingControlPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 39
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.redteamobile.oneplus.roaming"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 41
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.redteamobile.oneplus.roaming"

    const-string v6, "com.redteamobile.oneplus.roaming.activity.MainActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 46
    .local v4, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v5, :cond_0

    .line 47
    return v3

    .line 51
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 52
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 63
    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPRoamingControlPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/controllers/OPRoamingControlPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 64
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPRoamingControlPreferenceController;->hasCatRoaming()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "key_button_oneplus_roaming"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 73
    const-string v0, "key_button_oneplus_roaming"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.redteamobile.oneplus.roaming"

    const-string v3, "com.redteamobile.oneplus.roaming.activity.MainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 79
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/oneplus/settings/controllers/OPRoamingControlPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 84
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
