.class public Lcom/android/settings/SettingsActivity;
.super Lcom/oneplus/setting/lib/SettingsDrawerActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/support/v14/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Lcom/android/settings/ButtonBarHandler;
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;


# static fields
.field public static final BACK_STACK_PREFS:Ljava/lang/String; = ":settings:prefs"

.field public static final EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field public static final EXTRA_HIDE_DRAWER:Ljava/lang/String; = ":settings:hide_drawer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_LAUNCH_ACTIVITY_ACTION:Ljava/lang/String; = ":settings:launch_activity_action"

.field protected static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field protected static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field protected static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":settings:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":settings:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_AS_SHORTCUT:Ljava/lang/String; = ":settings:show_fragment_as_shortcut"

.field public static final EXTRA_SHOW_FRAGMENT_AS_SUBSETTING:Ljava/lang/String; = ":settings:show_fragment_as_subsetting"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":settings:show_fragment_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE_RESID:Ljava/lang/String; = ":settings:show_fragment_title_resid"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE_RES_PACKAGE_NAME:Ljava/lang/String; = ":settings:show_fragment_title_res_package_name"

.field private static final EXTRA_UI_OPTIONS:Ljava/lang/String; = "settings:ui_options"

.field private static final LOG_TAG:Ljava/lang/String; = "SettingsActivity"

.field public static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field public static final META_DATA_KEY_LAUNCH_ACTIVITY_ACTION:Ljava/lang/String; = "com.android.settings.ACTIVITY_ACTION"

.field private static final ONEPLUS_CLOUD_PACKAGE:Ljava/lang/String; = "com.oneplus.cloud"

.field private static final SAVE_KEY_CATEGORIES:Ljava/lang/String; = ":settings:categories"


# instance fields
.field protected hasActionBar:Z

.field private mActivityAction:Ljava/lang/String;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryPresent:Z

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

.field private mFragmentClass:Ljava/lang/String;

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsShowingDashboard:Z

.field private mNextButton:Landroid/widget/Button;

.field private mSMQ:Lcom/android/settings/SmqSettings;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;-><init>()V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->hasActionBar:Z

    .line 184
    iput-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 185
    new-instance v0, Lcom/android/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$1;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .line 90
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/SettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .line 90
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/SettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/SettingsActivity;

    .line 90
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->doUpdateTilesList()V

    return-void
.end method

.method private dip2px(Landroid/content/Context;F)F
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpValue"    # F

    .line 443
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 444
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    return v1
.end method

.method private doUpdateTilesList()V
    .locals 27

    .line 783
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 784
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 785
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v4

    .line 786
    .local v4, "isAdmin":Z
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v5

    .line 787
    .local v5, "featureFactory":Lcom/android/settings/overlay/FeatureFactory;
    const/4 v0, 0x0

    .line 788
    .local v0, "somethingChanged":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 789
    .local v6, "packageName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .local v7, "changedList":Ljava/lang/StringBuilder;
    new-instance v8, Landroid/content/ComponentName;

    const-class v9, Lcom/android/settings/Settings$WifiSettingsActivity;

    .line 791
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "android.hardware.wifi"

    .line 792
    invoke-virtual {v2, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    .line 790
    invoke-direct {v1, v7, v8, v9, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v8

    const/4 v10, 0x1

    if-nez v8, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v10

    :goto_1
    move v0, v8

    .line 794
    new-instance v8, Landroid/content/ComponentName;

    const-class v11, Lcom/android/settings/Settings$BluetoothSettingsActivity;

    .line 795
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v6, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "android.hardware.bluetooth"

    .line 796
    invoke-virtual {v2, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    .line 794
    invoke-direct {v1, v7, v8, v11, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v10

    :goto_3
    move v0, v8

    .line 799
    iget-object v8, v1, Lcom/android/settings/SettingsActivity;->mSMQ:Lcom/android/settings/SmqSettings;

    invoke-virtual {v8}, Lcom/android/settings/SmqSettings;->isShowSmqSettings()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 800
    new-instance v8, Landroid/content/ComponentName;

    const-class v11, Lcom/android/settings/Settings$SMQQtiFeedbackActivity;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v6, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/android/settings/SettingsActivity;->mSMQ:Lcom/android/settings/SmqSettings;

    invoke-virtual {v11}, Lcom/android/settings/SmqSettings;->isShowSmqSettings()Z

    move-result v11

    invoke-direct {v1, v7, v8, v11, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    move v8, v10

    :goto_5
    move v0, v8

    .line 805
    :cond_6
    new-instance v8, Landroid/content/ComponentName;

    const-class v11, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    .line 806
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v6, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v11

    .line 805
    invoke-direct {v1, v7, v8, v11, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v8

    if-nez v8, :cond_8

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v8, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    move v8, v10

    :goto_7
    move v0, v8

    .line 810
    new-instance v8, Landroid/content/ComponentName;

    const-class v11, Lcom/android/settings/Settings$ConnectedDeviceDashboardActivity;

    .line 812
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v6, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v11

    .line 810
    xor-int/2addr v11, v10

    invoke-direct {v1, v7, v8, v11, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v8

    if-nez v8, :cond_a

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    const/4 v8, 0x0

    goto :goto_9

    :cond_a
    :goto_8
    move v8, v10

    :goto_9
    move v0, v8

    .line 816
    new-instance v8, Landroid/content/ComponentName;

    const-class v11, Lcom/android/settings/Settings$SimSettingsActivity;

    .line 817
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v6, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v11

    .line 816
    invoke-direct {v1, v7, v8, v11, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v8

    if-nez v8, :cond_c

    if-eqz v0, :cond_b

    goto :goto_a

    :cond_b
    const/4 v8, 0x0

    goto :goto_b

    :cond_c
    :goto_a
    move v8, v10

    :goto_b
    move v0, v8

    .line 821
    new-instance v8, Landroid/content/ComponentName;

    const-class v11, Lcom/android/settings/Settings$PowerUsageSummaryActivity;

    .line 822
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v6, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v11, v1, Lcom/android/settings/SettingsActivity;->mBatteryPresent:Z

    .line 821
    invoke-direct {v1, v7, v8, v11, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v8

    if-nez v8, :cond_e

    if-eqz v0, :cond_d

    goto :goto_c

    :cond_d
    const/4 v8, 0x0

    goto :goto_d

    :cond_e
    :goto_c
    move v8, v10

    :goto_d
    move v0, v8

    .line 826
    new-instance v8, Landroid/content/ComponentName;

    const-class v11, Lcom/android/settings/Settings$OPCloudServiceSettings;

    .line 827
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v6, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "com.oneplus.cloud"

    .line 828
    invoke-direct {v1, v11}, Lcom/android/settings/SettingsActivity;->isExistAPP(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v11

    if-nez v11, :cond_f

    .line 826
    move v11, v10

    goto :goto_e

    .line 828
    :cond_f
    nop

    .line 826
    const/4 v11, 0x0

    :goto_e
    invoke-direct {v1, v7, v8, v11, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v8

    if-nez v8, :cond_11

    if-eqz v0, :cond_10

    goto :goto_f

    :cond_10
    const/4 v8, 0x0

    goto :goto_10

    :cond_11
    :goto_f
    move v8, v10

    :goto_10
    move v0, v8

    .line 831
    const-string v8, "settings_data_usage_v2"

    .line 832
    invoke-static {v1, v8}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    .line 834
    .local v8, "isDataUsageSettingsV2Enabled":Z
    new-instance v11, Landroid/content/ComponentName;

    const-class v12, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    .line 835
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v6, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v12

    if-eqz v12, :cond_12

    if-eqz v8, :cond_12

    .line 834
    move v12, v10

    goto :goto_11

    .line 836
    :cond_12
    nop

    .line 834
    const/4 v12, 0x0

    :goto_11
    invoke-direct {v1, v7, v11, v12, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v11

    if-nez v11, :cond_14

    if-eqz v0, :cond_13

    goto :goto_12

    :cond_13
    const/4 v11, 0x0

    goto :goto_13

    :cond_14
    :goto_12
    move v11, v10

    :goto_13
    move v0, v11

    .line 839
    new-instance v11, Landroid/content/ComponentName;

    const-class v12, Lcom/android/settings/Settings$DataUsageSummaryLegacyActivity;

    .line 840
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v6, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v12

    if-eqz v12, :cond_15

    if-nez v8, :cond_15

    .line 839
    move v12, v10

    goto :goto_14

    .line 841
    :cond_15
    nop

    .line 839
    const/4 v12, 0x0

    :goto_14
    invoke-direct {v1, v7, v11, v12, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v11

    if-nez v11, :cond_17

    if-eqz v0, :cond_16

    goto :goto_15

    :cond_16
    const/4 v11, 0x0

    goto :goto_16

    :cond_17
    :goto_15
    move v11, v10

    :goto_16
    move v0, v11

    .line 844
    new-instance v11, Landroid/content/ComponentName;

    const-class v12, Lcom/android/settings/Settings$UserSettingsActivity;

    .line 845
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v6, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 847
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v12

    if-nez v12, :cond_18

    .line 844
    move v12, v10

    goto :goto_17

    .line 847
    :cond_18
    nop

    .line 844
    const/4 v12, 0x0

    :goto_17
    invoke-direct {v1, v7, v11, v12, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v11

    if-nez v11, :cond_1a

    if-eqz v0, :cond_19

    goto :goto_18

    :cond_19
    const/4 v11, 0x0

    goto :goto_19

    :cond_1a
    :goto_18
    move v11, v10

    :goto_19
    move v0, v11

    .line 850
    new-instance v11, Landroid/content/ComponentName;

    const-class v12, Lcom/android/settings/Settings$NetworkDashboardActivity;

    .line 851
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v6, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v12

    .line 850
    xor-int/2addr v12, v10

    invoke-direct {v1, v7, v11, v12, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v11

    if-nez v11, :cond_1c

    if-eqz v0, :cond_1b

    goto :goto_1a

    :cond_1b
    const/4 v11, 0x0

    goto :goto_1b

    :cond_1c
    :goto_1a
    move v11, v10

    :goto_1b
    move v0, v11

    .line 855
    new-instance v11, Landroid/content/ComponentName;

    const-class v12, Lcom/android/settings/Settings$DateTimeSettingsActivity;

    .line 856
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v6, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v12

    .line 855
    xor-int/2addr v12, v10

    invoke-direct {v1, v7, v11, v12, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v11

    if-nez v11, :cond_1e

    if-eqz v0, :cond_1d

    goto :goto_1c

    :cond_1d
    const/4 v11, 0x0

    goto :goto_1d

    :cond_1e
    :goto_1c
    move v11, v10

    :goto_1d
    move v0, v11

    .line 860
    invoke-static/range {p0 .. p0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 861
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v11

    if-nez v11, :cond_1f

    move v11, v10

    goto :goto_1e

    :cond_1f
    const/4 v11, 0x0

    .line 862
    .local v11, "showDev":Z
    :goto_1e
    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v12

    if-nez v12, :cond_21

    invoke-virtual {v3}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v12

    if-eqz v12, :cond_20

    goto :goto_1f

    :cond_20
    const/4 v12, 0x0

    goto :goto_20

    :cond_21
    :goto_1f
    move v12, v10

    .line 863
    .local v12, "isAdminOrDemo":Z
    :goto_20
    new-instance v13, Landroid/content/ComponentName;

    const-class v14, Lcom/android/settings/Settings$DevelopmentSettingsDashboardActivity;

    .line 864
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v6, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-direct {v1, v7, v13, v11, v12}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v13

    if-nez v13, :cond_23

    if-eqz v0, :cond_22

    goto :goto_21

    :cond_22
    const/4 v13, 0x0

    goto :goto_22

    :cond_23
    :goto_21
    move v13, v10

    :goto_22
    move v0, v13

    .line 869
    new-instance v13, Landroid/content/ComponentName;

    const-class v14, Lcom/android/settings/backup/BackupSettingsActivity;

    .line 870
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v6, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-direct {v1, v7, v13, v10, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v13

    if-nez v13, :cond_25

    if-eqz v0, :cond_24

    goto :goto_23

    :cond_24
    const/4 v13, 0x0

    goto :goto_24

    :cond_25
    :goto_23
    move v13, v10

    :goto_24
    move v0, v13

    .line 873
    new-instance v13, Landroid/content/ComponentName;

    const-class v14, Lcom/android/settings/Settings$WifiDisplaySettingsActivity;

    .line 874
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v6, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-static/range {p0 .. p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->isAvailable(Landroid/content/Context;)Z

    move-result v14

    .line 873
    invoke-direct {v1, v7, v13, v14, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v13

    if-nez v13, :cond_27

    if-eqz v0, :cond_26

    goto :goto_25

    :cond_26
    const/4 v13, 0x0

    goto :goto_26

    :cond_27
    :goto_25
    move v13, v10

    :goto_26
    move v0, v13

    .line 879
    nop

    .line 880
    invoke-virtual {v5}, Lcom/android/settings/overlay/FeatureFactory;->getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;

    move-result-object v13

    .line 881
    invoke-interface {v13, v1}, Lcom/android/settings/accounts/AccountFeatureProvider;->isAboutPhoneV2Enabled(Landroid/content/Context;)Z

    move-result v13

    .line 882
    .local v13, "aboutPhoneV2Enabled":Z
    new-instance v14, Landroid/content/ComponentName;

    const-class v15, Lcom/android/settings/Settings$MyDeviceInfoActivity;

    .line 883
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v6, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-direct {v1, v7, v14, v13, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v14

    if-nez v14, :cond_29

    if-eqz v0, :cond_28

    goto :goto_27

    :cond_28
    const/4 v14, 0x0

    goto :goto_28

    :cond_29
    :goto_27
    move v14, v10

    :goto_28
    move v0, v14

    .line 886
    new-instance v14, Landroid/content/ComponentName;

    const-class v15, Lcom/android/settings/Settings$DeviceInfoSettingsActivity;

    .line 887
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v6, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    xor-int/lit8 v15, v13, 0x1

    invoke-direct {v1, v7, v14, v15, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v14

    if-nez v14, :cond_2b

    if-eqz v0, :cond_2a

    goto :goto_29

    :cond_2a
    const/4 v14, 0x0

    goto :goto_2a

    :cond_2b
    :goto_29
    move v14, v10

    .line 891
    .end local v0    # "somethingChanged":Z
    .local v14, "somethingChanged":Z
    :goto_2a
    if-nez v4, :cond_33

    .line 894
    iget-object v0, v1, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v15

    .line 895
    .local v15, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    monitor-enter v15

    .line 896
    :try_start_0
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settingslib/drawer/DashboardCategory;

    move-object/from16 v17, v16

    .line 897
    .local v17, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    move-object/from16 v10, v17

    invoke-virtual {v10}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v16

    .line 899
    .end local v17    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .local v10, "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .local v16, "tileCount":I
    invoke-virtual {v10}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v17

    move-object/from16 v18, v17

    .line 900
    .local v18, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    move-object/from16 v19, v0

    move-object/from16 v9, v18

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local v18    # "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    .local v9, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settingslib/drawer/Tile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v20, v17

    .line 901
    .local v20, "tile":Lcom/android/settingslib/drawer/Tile;
    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v20

    :try_start_1
    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v20    # "tile":Lcom/android/settingslib/drawer/Tile;
    .local v0, "tile":Lcom/android/settingslib/drawer/Tile;
    .local v22, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 903
    .local v2, "component":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v23, v17

    .line 904
    .local v23, "name":Ljava/lang/String;
    move-object/from16 v24, v0

    sget-object v0, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "tile":Lcom/android/settingslib/drawer/Tile;
    .local v24, "tile":Lcom/android/settingslib/drawer/Tile;
    move-object/from16 v25, v3

    move-object/from16 v3, v23

    :try_start_2
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .end local v23    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .local v25, "um":Landroid/os/UserManager;
    if-nez v0, :cond_2d

    if-eqz v12, :cond_2c

    const-class v0, Lcom/android/settings/Settings$DevelopmentSettingsDashboardActivity;

    .line 906
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v0, 0x1

    .line 908
    .local v0, "isEnabledForRestricted":Z
    :goto_2e
    move-object/from16 v26, v3

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .end local v3    # "name":Ljava/lang/String;
    .local v26, "name":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    if-nez v0, :cond_30

    .line 910
    nop

    .line 911
    const/4 v3, 0x0

    invoke-direct {v1, v7, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z

    move-result v17

    if-nez v17, :cond_2f

    if-eqz v14, :cond_2e

    goto :goto_2f

    :cond_2e
    move/from16 v17, v3

    goto :goto_30

    :cond_2f
    :goto_2f
    const/16 v17, 0x1

    :goto_30
    move/from16 v14, v17

    .end local v0    # "isEnabledForRestricted":Z
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v24    # "tile":Lcom/android/settingslib/drawer/Tile;
    .end local v26    # "name":Ljava/lang/String;
    goto :goto_31

    .line 914
    :cond_30
    const/4 v3, 0x0

    .line 900
    :goto_31
    move-object/from16 v0, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    goto :goto_2c

    .line 916
    .end local v9    # "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    .end local v10    # "category":Lcom/android/settingslib/drawer/DashboardCategory;
    .end local v16    # "tileCount":I
    .end local v25    # "um":Landroid/os/UserManager;
    .local v3, "um":Landroid/os/UserManager;
    :catchall_0
    move-exception v0

    move-object/from16 v25, v3

    .end local v3    # "um":Landroid/os/UserManager;
    .restart local v25    # "um":Landroid/os/UserManager;
    goto :goto_32

    .line 915
    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "um":Landroid/os/UserManager;
    .local v2, "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "um":Landroid/os/UserManager;
    :cond_31
    move-object/from16 v22, v2

    move-object/from16 v25, v3

    const/4 v3, 0x0

    .line 896
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "um":Landroid/os/UserManager;
    .restart local v22    # "pm":Landroid/content/pm/PackageManager;
    .restart local v25    # "um":Landroid/os/UserManager;
    move-object/from16 v0, v19

    move-object/from16 v3, v25

    const/4 v10, 0x1

    goto/16 :goto_2b

    .line 916
    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "um":Landroid/os/UserManager;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "um":Landroid/os/UserManager;
    :cond_32
    move-object/from16 v22, v2

    move-object/from16 v25, v3

    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "um":Landroid/os/UserManager;
    .restart local v22    # "pm":Landroid/content/pm/PackageManager;
    .restart local v25    # "um":Landroid/os/UserManager;
    monitor-exit v15

    goto :goto_33

    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "um":Landroid/os/UserManager;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "um":Landroid/os/UserManager;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v25, v3

    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "um":Landroid/os/UserManager;
    .restart local v22    # "pm":Landroid/content/pm/PackageManager;
    .restart local v25    # "um":Landroid/os/UserManager;
    :goto_32
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_32

    .line 920
    .end local v15    # "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "um":Landroid/os/UserManager;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "um":Landroid/os/UserManager;
    :cond_33
    move-object/from16 v22, v2

    move-object/from16 v25, v3

    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "um":Landroid/os/UserManager;
    .restart local v22    # "pm":Landroid/content/pm/PackageManager;
    .restart local v25    # "um":Landroid/os/UserManager;
    :goto_33
    if-eqz v14, :cond_34

    .line 921
    const-string v0, "SettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enabled state changed for some tiles, reloading all categories "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 921
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->updateCategories()V

    goto :goto_34

    .line 925
    :cond_34
    const-string v0, "SettingsActivity"

    const-string v2, "No enabled state changed, skipping updateCategory call"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :goto_34
    return-void
.end method

.method private getMetaData()V
    .locals 4

    .line 948
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 950
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 951
    :cond_0
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 953
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.settings.ACTIVITY_ACTION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    goto :goto_1

    .line 950
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    :goto_0
    return-void

    .line 955
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v0

    .line 957
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "SettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get Metadata for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    .end local v0    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return-void
.end method

.method private getMetricsTag()Ljava/lang/String;
    .locals 3

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":settings:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":settings:show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    :cond_0
    const-string v1, "com.android.settings."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    const-string v1, "com.android.settings."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_1
    return-object v0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 625
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    return-object v0

    .line 627
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    return-object v1

    .line 630
    :cond_1
    const-string v1, "com.android.settings.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.settings.applications.StorageUse"

    .line 631
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 633
    :cond_2
    const-class v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 636
    :cond_3
    return-object v0
.end method

.method private isExistAPP(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagename"    # Ljava/lang/String;

    .line 768
    const/4 v0, 0x0

    .line 769
    .local v0, "info":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    move v2, v1

    .line 771
    .local v2, "isExist":Z
    :try_start_0
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 776
    goto :goto_0

    .line 773
    :catch_0
    move-exception v1

    .line 774
    .local v1, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 775
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 777
    .end local v1    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v0, :cond_0

    .line 778
    const/4 v2, 0x1

    .line 780
    :cond_0
    return v2
.end method

.method public static synthetic lambda$updateDeviceIndex$0(Lcom/android/settings/SettingsActivity;Lcom/android/settings/search/DeviceIndexFeatureProvider;)V
    .locals 1
    .param p1, "indexProvider"    # Lcom/android/settings/search/DeviceIndexFeatureProvider;

    .line 764
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->updateIndex(Landroid/content/Context;Z)V

    return-void
.end method

.method private setTileEnabled(Ljava/lang/StringBuilder;Landroid/content/ComponentName;ZZ)Z
    .locals 2
    .param p1, "changedList"    # Ljava/lang/StringBuilder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "enabled"    # Z
    .param p4, "isAdmin"    # Z

    .line 934
    if-nez p4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/core/gateway/SettingsGateway;->SETTINGS_FOR_RESTRICTED:[Ljava/lang/String;

    .line 936
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 935
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 937
    const/4 p3, 0x0

    .line 939
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/SettingsActivity;->setTileEnabled(Landroid/content/ComponentName;Z)Z

    move-result v0

    .line 940
    .local v0, "changed":Z
    if-eqz v0, :cond_1

    .line 941
    invoke-virtual {p2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    :cond_1
    return v0
.end method

.method private setTitleFromBackStack()V
    .locals 3

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 505
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 506
    iget v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    if-lez v1, :cond_0

    .line 507
    iget v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    goto :goto_0

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 511
    :goto_0
    return-void

    .line 514
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v1

    .line 515
    .local v1, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v1}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    .line 516
    return-void
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .line 520
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v0

    .line 521
    .local v0, "titleRes":I
    if-lez v0, :cond_0

    .line 522
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "title":Ljava/lang/CharSequence;
    goto :goto_0

    .line 524
    .end local v1    # "title":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 526
    .restart local v1    # "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v1, :cond_1

    .line 527
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 529
    :cond_1
    return-void
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 466
    const-string v0, "SettingsActivity"

    const-string v1, "Starting to set activity title"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v0, ":settings:show_fragment_title_resid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 468
    .local v0, "initialTitleResId":I
    if-lez v0, :cond_1

    .line 469
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 470
    iput v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 472
    const-string v2, ":settings:show_fragment_title_res_package_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "initialTitleResPackageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 476
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/os/UserHandle;

    .line 477
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 476
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/SettingsActivity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 478
    .local v3, "authContext":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 479
    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 480
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    return-void

    .line 482
    .end local v3    # "authContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 483
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 486
    :cond_0
    iget v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 488
    .end local v2    # "initialTitleResPackageName":Ljava/lang/String;
    :goto_0
    goto :goto_2

    .line 489
    :cond_1
    iput v1, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 490
    const-string v1, ":settings:show_fragment_title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, "initialTitle":Ljava/lang/String;
    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 492
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 494
    .end local v1    # "initialTitle":Ljava/lang/String;
    :goto_2
    const-string v1, "SettingsActivity"

    const-string v2, "Done setting title"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    return-void
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .line 658
    const v0, 0x7f120e62

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 659
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 660
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 662
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 663
    return-object v2

    .line 666
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    const-string v0, "SettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching to fragment "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v0, "extphone"

    .line 668
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    .line 670
    .local v0, "extTelephony":Lorg/codeaurora/internal/IExtTelephony;
    :try_start_0
    const-class v1, Lcom/android/settings/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "com.qualcomm.qti.simsettings"

    .line 671
    invoke-interface {v0, v1}, Lorg/codeaurora/internal/IExtTelephony;->isVendorApkAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 672
    const-string v1, "SettingsActivity"

    const-string v3, "switchToFragment, launch simSettings  "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.sim.SIM_SUB_INFO_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v1, "provisioningIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 676
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 678
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    return-object v2

    .line 685
    .end local v1    # "provisioningIntent":Landroid/content/Intent;
    :cond_2
    goto :goto_0

    .line 681
    :catch_0
    move-exception v1

    .line 683
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SettingsActivity"

    const-string v3, "couldn\'t connect to extphone service, launch the default sim cards activity"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 688
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid fragment for this activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 691
    :cond_4
    :goto_1
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    .line 692
    .local v1, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 693
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    const v3, 0x7f0a02fa

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 694
    if-eqz p7, :cond_5

    .line 695
    iget-object v3, p0, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 697
    :cond_5
    if-eqz p4, :cond_6

    .line 698
    const-string v3, ":settings:prefs"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 700
    :cond_6
    if-lez p5, :cond_7

    .line 701
    invoke-virtual {v2, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    goto :goto_2

    .line 702
    :cond_7
    if-eqz p6, :cond_8

    .line 703
    invoke-virtual {v2, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 705
    :cond_8
    :goto_2
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 706
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 707
    const-string v3, "SettingsActivity"

    const-string v4, "Executed frag manager pendingTransactions"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-object v1
.end method

.method private updateDeviceIndex()V
    .locals 2

    .line 760
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 761
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getDeviceIndexFeatureProvider()Lcom/android/settings/search/DeviceIndexFeatureProvider;

    move-result-object v0

    .line 763
    .local v0, "indexProvider":Lcom/android/settings/search/DeviceIndexFeatureProvider;
    new-instance v1, Lcom/android/settings/-$$Lambda$SettingsActivity$HXMcoLHGNmdxTucTgqvnp3fY_K8;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/-$$Lambda$SettingsActivity$HXMcoLHGNmdxTucTgqvnp3fY_K8;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/search/DeviceIndexFeatureProvider;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 765
    return-void
.end method

.method private updateTilesList()V
    .locals 1

    .line 751
    new-instance v0, Lcom/android/settings/SettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$6;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 757
    return-void
.end method


# virtual methods
.method public finishPreferencePanel(ILandroid/content/Intent;)V
    .locals 0
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/content/Intent;

    .line 648
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 649
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 650
    return-void
.end method

.method getBitmapFromXmlResource(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawableRes"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 972
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 973
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 974
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 975
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 974
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 976
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 977
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 978
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 980
    return-object v2
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 5

    .line 592
    invoke-super {p0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 593
    .local v0, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/settings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, "startingFragment":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 597
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 598
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v3, ":settings:show_fragment"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v3, ":settings:show_fragment_args"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 600
    .local v3, "args":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 601
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v3, v4

    goto :goto_0

    .line 603
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v3, v4

    .line 605
    :goto_0
    const-string v4, "intent"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 606
    const-string v4, ":settings:show_fragment_args"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 607
    return-object v2

    .line 610
    .end local v2    # "modIntent":Landroid/content/Intent;
    .end local v3    # "args":Landroid/os/Bundle;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 611
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 612
    .restart local v2    # "modIntent":Landroid/content/Intent;
    const-string v3, ":settings:launch_activity_action"

    iget-object v4, p0, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    return-object v2

    .line 617
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_2
    return-object v0
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    .line 238
    return-object v0

    .line 241
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchBar()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fragmentName"    # Ljava/lang/String;

    .line 584
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 585
    sget-object v2, Lcom/android/settings/core/gateway/SettingsGateway;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 584
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method launchSettingFragment(Ljava/lang/String;ZLandroid/content/Intent;)V
    .locals 9
    .param p1, "initialFragmentName"    # Ljava/lang/String;
    .param p2, "isSubSettings"    # Z
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 450
    iget-boolean v0, p0, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 451
    invoke-direct {p0, p3}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 453
    const-string v0, ":settings:show_fragment_args"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 454
    .local v0, "initialArguments":Landroid/os/Bundle;
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    .line 456
    .end local v0    # "initialArguments":Landroid/os/Bundle;
    goto :goto_0

    .line 458
    :cond_0
    const v0, 0x7f120485

    iput v0, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    .line 460
    const-class v0, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I

    iget-object v7, p0, Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    .line 463
    :goto_0
    return-void
.end method

.method public onBackStackChanged()V
    .locals 0

    .line 499
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    .line 500
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "savedState"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 257
    move-object/from16 v2, p1

    invoke-super/range {p0 .. p1}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 258
    const-string v0, "SettingsActivity"

    const-string v3, "Starting onCreate"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 261
    .local v3, "startTime":J
    invoke-static/range {p0 .. p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v5

    .line 263
    .local v5, "factory":Lcom/android/settings/overlay/FeatureFactory;
    invoke-virtual {v5, v1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v6, 0x2000

    invoke-virtual {v0, v6}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 271
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetaData()V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 275
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, ":settings:launch_activity_action"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, v1, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 278
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "SettingsActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activity not found for action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/settings/SettingsActivity;->mActivityAction:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 284
    return-void

    .line 287
    :cond_2
    const-string v0, "settings:ui_options"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v8, "settings:ui_options"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/view/Window;->setUiOptions(I)V

    .line 291
    :cond_3
    new-instance v0, Lcom/android/settings/SmqSettings;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/settings/SmqSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/settings/SettingsActivity;->mSMQ:Lcom/android/settings/SmqSettings;

    .line 294
    const-string v0, ":settings:show_fragment"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "initialFragmentName":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 297
    .local v8, "cn":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 299
    .local v9, "className":Ljava/lang/String;
    const-class v10, Lcom/android/settings/Settings;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, v1, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    .line 304
    instance-of v10, v1, Lcom/android/settings/SubSettings;

    const/4 v11, 0x1

    if-nez v10, :cond_5

    const-string v10, ":settings:show_fragment_as_subsetting"

    .line 305
    invoke-virtual {v6, v10, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_1

    :cond_4
    move v10, v7

    goto :goto_2

    :cond_5
    :goto_1
    move v10, v11

    .line 309
    .local v10, "isSubSettings":Z
    :goto_2
    if-eqz v10, :cond_6

    .line 310
    const v12, 0x7f130441

    invoke-virtual {v1, v12}, Lcom/android/settings/SettingsActivity;->setTheme(I)V

    .line 313
    :cond_6
    iget-boolean v12, v1, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v12, :cond_7

    .line 314
    const v12, 0x7f0d0241

    goto :goto_3

    :cond_7
    const v12, 0x7f0d0242

    .line 313
    :goto_3
    invoke-virtual {v1, v12}, Lcom/android/settings/SettingsActivity;->setContentView(I)V

    .line 316
    const v12, 0x7f0a02fa

    invoke-virtual {v1, v12}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    iput-object v12, v1, Lcom/android/settings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 320
    if-eqz v2, :cond_9

    .line 323
    invoke-direct {v1, v6}, Lcom/android/settings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 325
    const-string v12, ":settings:categories"

    .line 326
    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 327
    .local v12, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    if-eqz v12, :cond_8

    .line 328
    iget-object v13, v1, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 329
    iget-object v13, v1, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 330
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->setTitleFromBackStack()V

    .line 332
    .end local v12    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/drawer/DashboardCategory;>;"
    :cond_8
    goto :goto_4

    .line 333
    :cond_9
    invoke-virtual {v1, v0, v10, v6}, Lcom/android/settings/SettingsActivity;->launchSettingFragment(Ljava/lang/String;ZLandroid/content/Intent;)V

    .line 337
    :goto_4
    const v12, 0x7f0a0475

    invoke-virtual {v1, v12}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 338
    .local v12, "search_bar":Landroid/view/View;
    const/16 v13, 0x8

    if-eqz v12, :cond_a

    .line 339
    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v14

    .line 367
    .local v14, "actionBar":Landroid/app/ActionBar;
    if-eqz v14, :cond_b

    iget-boolean v15, v1, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v15, :cond_b

    .line 368
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v15

    .line 369
    .local v15, "deviceProvisioned":Z
    invoke-virtual {v14, v15}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 370
    invoke-virtual {v14, v15}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 371
    iget-boolean v13, v1, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    xor-int/2addr v11, v13

    invoke-virtual {v14, v11}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 374
    .end local v15    # "deviceProvisioned":Z
    :cond_b
    iget-boolean v11, v1, Lcom/android/settings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v11, :cond_c

    if-eqz v14, :cond_c

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f0602c1

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 376
    .local v11, "color":I
    new-instance v13, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v13, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v14, v13}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    .end local v11    # "color":I
    :cond_c
    const v11, 0x7f0a051f

    invoke-virtual {v1, v11}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/settings/widget/SwitchBar;

    iput-object v11, v1, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 380
    iget-object v11, v1, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v11, :cond_d

    .line 381
    iget-object v11, v1, Lcom/android/settings/SettingsActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SettingsActivity;->getMetricsTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/android/settings/widget/SwitchBar;->setMetricsTag(Ljava/lang/String;)V

    .line 385
    :cond_d
    const-string v11, "extra_prefs_show_button_bar"

    invoke-virtual {v6, v11, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 387
    const v11, 0x7f0a00c8

    invoke-virtual {v1, v11}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 388
    .local v11, "buttonBar":Landroid/view/View;
    if-eqz v11, :cond_12

    .line 389
    invoke-virtual {v11, v7}, Landroid/view/View;->setVisibility(I)V

    .line 391
    const v13, 0x7f0a0081

    invoke-virtual {v1, v13}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 392
    .local v13, "backButton":Landroid/widget/Button;
    new-instance v15, Lcom/android/settings/SettingsActivity$2;

    invoke-direct {v15, v1}, Lcom/android/settings/SettingsActivity$2;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v13, v15}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    const v15, 0x7f0a04be

    invoke-virtual {v1, v15}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    .line 399
    .local v15, "skipButton":Landroid/widget/Button;
    new-instance v7, Lcom/android/settings/SettingsActivity$3;

    invoke-direct {v7, v1}, Lcom/android/settings/SettingsActivity$3;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v15, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    const v7, 0x7f0a0338

    invoke-virtual {v1, v7}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v1, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 406
    iget-object v7, v1, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    new-instance v0, Lcom/android/settings/SettingsActivity$4;

    .end local v0    # "initialFragmentName":Ljava/lang/String;
    .local v16, "initialFragmentName":Ljava/lang/String;
    invoke-direct {v0, v1}, Lcom/android/settings/SettingsActivity$4;-><init>(Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 414
    const-string v0, "extra_prefs_set_next_text"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 415
    const-string v0, "extra_prefs_set_next_text"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "buttonText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 417
    iget-object v7, v1, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    .line 419
    :cond_e
    iget-object v2, v1, Lcom/android/settings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 422
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_f
    :goto_5
    const-string v0, "extra_prefs_set_back_text"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 423
    const-string v0, "extra_prefs_set_back_text"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    .restart local v0    # "buttonText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 425
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    .line 427
    :cond_10
    invoke-virtual {v13, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 430
    .end local v0    # "buttonText":Ljava/lang/String;
    :cond_11
    :goto_6
    const-string v0, "extra_prefs_show_skip"

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 431
    invoke-virtual {v15, v2}, Landroid/widget/Button;->setVisibility(I)V

    .end local v11    # "buttonBar":Landroid/view/View;
    .end local v13    # "backButton":Landroid/widget/Button;
    .end local v15    # "skipButton":Landroid/widget/Button;
    goto :goto_7

    .line 439
    .end local v16    # "initialFragmentName":Ljava/lang/String;
    .local v0, "initialFragmentName":Ljava/lang/String;
    :cond_12
    move-object/from16 v16, v0

    .end local v0    # "initialFragmentName":Ljava/lang/String;
    .restart local v16    # "initialFragmentName":Ljava/lang/String;
    :cond_13
    :goto_7
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 568
    invoke-super {p0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->onPause()V

    .line 569
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    .line 571
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 572
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "caller"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .line 219
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 220
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 221
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 222
    instance-of v1, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v1, :cond_0

    .line 223
    move-object v1, p1

    check-cast v1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {v1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v1

    goto :goto_0

    .line 224
    :cond_0
    const/4 v1, 0x0

    .line 222
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/4 v1, -0x1

    .line 225
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 4

    .line 549
    invoke-super {p0}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->onResume()V

    .line 551
    new-instance v0, Lcom/android/settings/SettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$5;-><init>(Lcom/android/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    .line 557
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mDevelopmentSettingsListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settingslib.development.DevelopmentSettingsEnabler.SETTINGS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 560
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 562
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateTilesList()V

    .line 563
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;->updateDeviceIndex()V

    .line 564
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 533
    invoke-super {p0, p1}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 534
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity;->saveState(Landroid/os/Bundle;)V

    .line 535
    return-void
.end method

.method saveState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 543
    const-string v0, ":settings:categories"

    iget-object v1, p0, Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 545
    :cond_0
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 1
    .param p1, "taskDescription"    # Landroid/app/ActivityManager$TaskDescription;

    .line 576
    const v0, 0x7f0f0002

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity;->getBitmapFromXmlResource(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 577
    .local v0, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/Bitmap;)V

    .line 578
    invoke-super {p0, p1}, Lcom/oneplus/setting/lib/SettingsDrawerActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 579
    return-void
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 9
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .line 733
    const/4 v0, 0x0

    .line 734
    .local v0, "title":Ljava/lang/String;
    if-gez p3, :cond_1

    .line 735
    if-eqz p4, :cond_0

    .line 736
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 739
    :cond_0
    const-string v0, ""

    .line 742
    :cond_1
    :goto_0
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move v5, p6

    move v6, p3

    move-object v7, v0

    invoke-static/range {v1 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 744
    return-void
.end method
