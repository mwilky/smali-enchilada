.class public Lcom/oneplus/settings/better/OPReadingMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPReadingMode.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final KEY_AUTO_TURN_ON_APPS:Ljava/lang/String; = "auto_turn_on_apps"

.field private static final KEY_BLOCK_PEEK_NOTIFICATIONS:Ljava/lang/String; = "block_peek_notifications"

.field private static final KEY_READING_MODE_ADD_APPS:Ljava/lang/String; = "reading_mode_add_apps"

.field private static final KEY_READING_MODE_TURN_ON:Ljava/lang/String; = "reading_mode_turn_on"

.field public static final READING_MODE_STATUS:Ljava/lang/String; = "reading_mode_status"

.field public static final READING_MODE_STATUS_AUTO:Ljava/lang/String; = "reading_mode_status_auto"

.field public static final READING_MODE_STATUS_MANUAL:Ljava/lang/String; = "reading_mode_status_manual"

.field private static final TAG:Ljava/lang/String; = "OPReadingMode"


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

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAutoTurnOnAppList:Landroid/support/v7/preference/PreferenceCategory;

.field private mBlockPeekNotificationsPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReadingModeAddAppsPreference:Landroid/support/v7/preference/Preference;

.field private mReadingModeTurnOnPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAppList:Ljava/util/List;

    .line 53
    new-instance v0, Lcom/oneplus/settings/better/OPReadingMode$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPReadingMode$1;-><init>(Lcom/oneplus/settings/better/OPReadingMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v0, Lcom/oneplus/settings/better/OPReadingMode$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPReadingMode$2;-><init>(Lcom/oneplus/settings/better/OPReadingMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPReadingMode;

    .line 34
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAutoTurnOnAppList:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPReadingMode;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPReadingMode;

    .line 34
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPReadingMode;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPReadingMode;

    .line 34
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPReadingMode;

    .line 34
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPReadingMode;

    .line 34
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPReadingMode;

    .line 34
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPReadingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/better/OPReadingMode;

    .line 34
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mReadingModeTurnOnPreference:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method private updateListData()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-virtual {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedGameOrReadAppMap(I)Ljava/util/Map;

    .line 112
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 186
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f16008c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPReadingMode;->addPreferencesFromResource(I)V

    .line 89
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mContext:Landroid/content/Context;

    .line 90
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPReadingMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 91
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPReadingMode;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 92
    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v3, p0, Lcom/oneplus/settings/better/OPReadingMode;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .line 93
    const-string v0, "reading_mode_turn_on"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPReadingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mReadingModeTurnOnPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mReadingModeTurnOnPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mReadingModeTurnOnPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    :cond_0
    const-string v0, "auto_turn_on_apps"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPReadingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAutoTurnOnAppList:Landroid/support/v7/preference/PreferenceCategory;

    .line 98
    const-string v0, "reading_mode_add_apps"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPReadingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mReadingModeAddAppsPreference:Landroid/support/v7/preference/Preference;

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mReadingModeAddAppsPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mReadingModeAddAppsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    :cond_1
    const-string v0, "block_peek_notifications"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPReadingMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mBlockPeekNotificationsPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mBlockPeekNotificationsPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mBlockPeekNotificationsPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 137
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPReadingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 138
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .line 156
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "key":Ljava/lang/String;
    const-string v1, "reading_mode_turn_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_1

    .line 158
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 159
    .local v1, "value":Z
    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPReadingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "reading_mode_status_manual"

    const-string v5, "force-on"

    invoke-static {v3, v4, v5, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPReadingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "reading_mode_status_manual"

    const-string v5, "force-off"

    invoke-static {v3, v4, v5, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 164
    .end local v1    # "value":Z
    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "block_peek_notifications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 166
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPReadingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "reading_mode_block_notification"

    invoke-static {v3, v4, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 168
    .end local v1    # "value":Z
    :cond_2
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 173
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reading_mode_add_apps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "OPReadingMode"

    const-string v1, "KEY_READING_MODE_ADD_APPS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.ONEPLUS_GAME_READ_APP_LIST_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op_load_app_tyep"

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    const/4 v1, 0x1

    return v1

    .line 180
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 6

    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 120
    invoke-direct {p0}, Lcom/oneplus/settings/better/OPReadingMode;->updateListData()V

    .line 121
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPReadingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 122
    .local v0, "value":I
    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mReadingModeTurnOnPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mReadingModeTurnOnPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v1, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPReadingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "reading_mode_block_notification"

    invoke-static {v1, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mBlockPeekNotificationsPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 127
    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mBlockPeekNotificationsPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_2

    move v3, v4

    nop

    :cond_2
    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPReadingMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "reading_mode_status"

    .line 130
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lcom/oneplus/settings/better/OPReadingMode;->mContentObserver:Landroid/database/ContentObserver;

    .line 129
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 132
    return-void
.end method
