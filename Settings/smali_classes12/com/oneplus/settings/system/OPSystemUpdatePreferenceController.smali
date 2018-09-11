.class public Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPSystemUpdatePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;
    }
.end annotation


# static fields
.field private static final KEY_OP_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "oneplus_system_update_settings"

.field private static final TAG:Ljava/lang/String; = "OPSysUpdatePrefContr"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSystemUpdateObserver:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

.field private final mUm:Landroid/os/UserManager;

.field mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 49
    const-string v0, "oneplus_system_update_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUm:Landroid/os/UserManager;

    .line 51
    iput-object p1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;

    .line 36
    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    iput-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    .line 73
    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUm:Landroid/os/UserManager;

    .line 57
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x2

    .line 56
    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "oneplus_system_update_settings"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 85
    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;-><init>(Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    invoke-virtual {v0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->startObserving()V

    .line 89
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    invoke-virtual {v0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->stopObserving()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    .line 97
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 77
    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    move-object v0, p1

    check-cast v0, Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    .line 79
    .local v0, "updatePreference":Lcom/oneplus/settings/system/OPSystemUpdatePreference;
    invoke-virtual {v0}, Lcom/oneplus/settings/system/OPSystemUpdatePreference;->updateView()V

    .line 81
    .end local v0    # "updatePreference":Lcom/oneplus/settings/system/OPSystemUpdatePreference;
    :cond_0
    return-void
.end method
