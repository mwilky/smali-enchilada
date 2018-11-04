.class public Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPNavigationBarGesturesSettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final KEY_ALWAYS_SHOW_NAVIGATION_BAR:Ljava/lang/String; = "always_show_navigation_bar"

.field private static final KEY_BACK_HOME:Ljava/lang/String; = "back_home"

.field private static final KEY_CUSTOMIZATION:Ljava/lang/String; = "customization"

.field private static final KEY_GESTURE_NAVIGATION_BAR:Ljava/lang/String; = "gesture_navigation_bar"

.field private static final KEY_OP_NAVIGATION_BAR_TYPE:Ljava/lang/String; = "op_navigation_bar_type"

.field private static final KEY_PHONE_CONTROL_WAY:Ljava/lang/String; = "phone_control_way"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TYPE_ALWAYS_SHOW_NAVIGATION_BAR:I = 0x1

.field private static final TYPE_BACK_HOME:I = 0x2

.field private static final TYPE_GESTURE_NAVIGATION_BAR:I = 0x3


# instance fields
.field private mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

.field private mAm:Landroid/app/ActivityManager;

.field private mAms:Landroid/app/IActivityManager;

.field private mBackHome:Lcom/android/settings/ui/RadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mCustomization:Landroid/support/v7/preference/Preference;

.field private mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

.field private mHandler:Landroid/os/Handler;

.field private mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings$2;

    invoke-direct {v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mBackHome:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->updateUI()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isSupportHardwareKeys()Z

    move-result v0

    return v0
.end method

.method private delayHideNavkey()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mBackHome:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings$1;-><init>(Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getBackHomeEnabled()Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "swipe_up_to_switch_apps_enabled"

    iget-object v2, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCustomSettingsEnable(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_navigation_bar_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static isSupportHardwareKeys()Z
    .locals 2

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private killSomeProcess()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAm:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAm:Landroid/app/ActivityManager;

    const-string v1, "com.android.dialer"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAm:Landroid/app/ActivityManager;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAm:Landroid/app/ActivityManager;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private removeRunningTask()V
    .locals 9

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const v3, 0x7fffffff

    const/4 v4, 0x2

    const/4 v5, -0x2

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    if-nez v2, :cond_2

    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_2

    :cond_1
    move-object v5, v0

    :goto_2
    if-eqz v5, :cond_2

    const-string v6, "com.android.settings"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    iget v6, v4, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->removeTask(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v5

    const-string v6, "OPNotchDisplayGuideActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to remove task="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v4, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    goto :goto_1

    :cond_3
    return-void
.end method

.method private setBackHomeEnabled(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "swipe_up_to_switch_apps_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setNavigationType(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_navigation_bar_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_gesture_button_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const-string v1, "swap_button"

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    const-string v0, "nav&gestures_settings"

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method private updateUI()V
    .locals 6

    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->getBackHomeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mBackHome:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mBackHome:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "op_navigation_bar_type"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne v0, v2, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mBackHome:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    invoke-virtual {v3, v5}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mBackHome:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroid/support/v7/preference/Preference;
	
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :goto_2
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160087

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAms:Landroid/app/IActivityManager;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    const-string v0, "customization"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mCustomization:Landroid/support/v7/preference/Preference;

    const-string v0, "always_show_navigation_bar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "back_home"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mBackHome:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "gesture_navigation_bar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v0, "phone_control_way"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mBackHome:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const v1, 0x7f120b30

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mBackHome:Lcom/android/settings/ui/RadioButtonPreference;

    const v1, 0x7f120a7d

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->releaseAnim()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->stopAnim()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mBackHome:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-direct {p0, v2}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setBackHomeEnabled(I)V

    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->delayHideNavkey()V

    invoke-direct {p0, v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setNavigationType(I)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mBackHome:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mBackHome:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "op_navigation_bar_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    invoke-direct {p0, v1}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setBackHomeEnabled(I)V

    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->delayHideNavkey()V

    const-string v0, "nav&gestures_settings"

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mBackHome:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    invoke-direct {p0, v2}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setBackHomeEnabled(I)V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_exit_locked"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopSystemLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OPNotchDisplayGuideActivity"

    const-string v2, "Failed to rstopSystemLockTaskMode"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->delayHideNavkey()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->setNavigationType(I)V

    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->removeRunningTask()V

    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->killSomeProcess()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->updateUI()V

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->startAnim()V

    :cond_0
    return-void
.end method
