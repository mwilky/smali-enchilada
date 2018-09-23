.class public Lcom/oneplus/settings/better/OPAppLocker;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPAppLocker.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final KEY_APP_LOCKER_ADD_APPS:Ljava/lang/String; = "app_locker_add_apps"

.field private static final KEY_APP_LOCKER_OPEN_APPS:Ljava/lang/String; = "app_locker_open_apps"

.field private static final KEY_APP_LOCKER_SWITCH:Ljava/lang/String; = "app_locker_switch"

.field private static final TAG:Ljava/lang/String; = "OPAppLocker"


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLockerAddAppsPreference:Landroid/support/v7/preference/Preference;

.field private mAppLockerSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOpenAppsList:Landroid/support/v7/preference/PreferenceCategory;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppList:Ljava/util/List;

    new-instance v0, Lcom/oneplus/settings/better/OPAppLocker$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPAppLocker$1;-><init>(Lcom/oneplus/settings/better/OPAppLocker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPAppLocker;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOpenAppsList:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPAppLocker;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPAppLocker;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPAppLocker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPAppLocker;)Landroid/app/AppOpsManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private updateListData()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-virtual {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedGameOrReadAppMap(I)Ljava/util/Map;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPAppLocker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160071

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPAppLocker;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppLocker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPAppLocker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppLocker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPAppLocker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/oneplus/settings/better/OPAppLocker;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setAppType(I)V

    const-string v0, "app_locker_open_apps"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPAppLocker;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mOpenAppsList:Landroid/support/v7/preference/PreferenceCategory;

    const-string v0, "app_locker_add_apps"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPAppLocker;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerAddAppsPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerAddAppsPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerAddAppsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    const-string v0, "app_locker_switch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPAppLocker;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    const-string v2, "app_locker_switch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "OPAppLocker"

    const-string v3, "KEY_APP_LOCKER_SWITCH"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppLocker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "app_locker_switch"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_locker_add_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OPAppLocker"

    const-string v1, "KEY_APP_LOCKER_ADD_APPS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.ONEPLUS_GAME_READ_APP_LIST_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "op_load_app_tyep"

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPAppLocker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPAppLocker;->updateListData()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppLocker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_locker_switch"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPAppLocker;->mAppLockerSwitch:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
