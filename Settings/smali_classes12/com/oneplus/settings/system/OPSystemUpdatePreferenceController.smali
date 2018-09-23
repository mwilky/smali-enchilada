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

    const-string v0, "oneplus_system_update_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUm:Landroid/os/UserManager;

    iput-object p1, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    iput-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "oneplus_system_update_settings"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;-><init>(Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    invoke-virtual {v0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->startObserving()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    invoke-virtual {v0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;->stopObserving()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->mSystemUpdateObserver:Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController$SystemUpdateObserver;

    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/system/OPSystemUpdatePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/system/OPSystemUpdatePreference;->updateView()V

    :cond_0
    return-void
.end method
