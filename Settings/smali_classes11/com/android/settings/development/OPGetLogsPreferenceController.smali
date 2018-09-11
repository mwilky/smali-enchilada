.class public Lcom/android/settings/development/OPGetLogsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OPGetLogsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_GET_LOGS:Ljava/lang/String; = "getlogs"


# instance fields
.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 30
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/development/OPGetLogsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/OPGetLogsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 32
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "getlogs"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 41
    const-string v0, "getlogs"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.oemlogkit.startlog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/android/settings/development/OPGetLogsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 48
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 25
    const/4 v0, 0x1

    return v0
.end method
