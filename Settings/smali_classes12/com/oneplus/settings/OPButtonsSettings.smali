.class public Lcom/oneplus/settings/OPButtonsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPButtonsSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;,
        Lcom/oneplus/settings/OPButtonsSettings$Helper;,
        Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;
    }
.end annotation


# static fields
.field private static final BACKLIGHT_PREF:Ljava/lang/String; = "pre_navbar_button_backlight"

.field public static final GSM_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final KEY_BACK_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_back_double_tap"

.field private static final KEY_BACK_LONG_PRESS:Ljava/lang/String; = "hardware_keys_back_long_press"

.field private static final KEY_BUTTONS_BRIGHTNESS:Ljava/lang/String; = "buttons_brightness"

.field private static final KEY_BUTTONS_ENABLE_ON_SCREEN_NAVKEYS:Ljava/lang/String; = "buttons_enable_on_screen_navkeys"

.field private static final KEY_BUTTONS_FORCE_HOME:Ljava/lang/String; = "buttons_force_home"

.field private static final KEY_BUTTONS_SWAP_NAVKEYS:Ljava/lang/String; = "buttons_swap_navkeys"

.field private static final KEY_CAMERA_DOUBLE_TAP_POWER_GESTURE:Ljava/lang/String; = "camera_double_tap_power_gesture"

.field private static final KEY_CATEGORY_BACK:Ljava/lang/String; = "back_key"

.field private static final KEY_CATEGORY_HOME:Ljava/lang/String; = "home_key"

.field private static final KEY_CATEGORY_MENU:Ljava/lang/String; = "menu_key"

.field private static final KEY_HIDE_NAVKEYS:Ljava/lang/String; = "hide_navkeys"

.field private static final KEY_HOME_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_home_double_tap"

.field private static final KEY_HOME_LONG_PRESS:Ljava/lang/String; = "hardware_keys_home_long_press"

.field private static final KEY_LOCK_MODE_FOOT:I = 0x4

.field private static final KEY_LOCK_MODE_HOME:I = 0x3

.field private static final KEY_LOCK_MODE_POWER_HOME:I = 0x2

.field private static final KEY_MENU_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_menu_double_tap"

.field private static final KEY_MENU_LONG_PRESS:Ljava/lang/String; = "hardware_keys_menu_long_press"

.field private static final KEY_NAVIGATION_BAR_TYPE:Ljava/lang/String; = "key_navigation_bar_type"

.field public static final QUICKPAY_VALUE:Ljava/lang/String; = "11"

.field private static final REFRESH_PREPERENCE:I = 0x1

.field private static final REQUEST_CODE_FOR_GESTURE_GUIDE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SystemSettings"


# instance fields
.field private mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

.field private mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

.field private mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

.field private mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

.field private mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private final mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

.field private mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 756
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;-><init>(Lcom/oneplus/settings/OPButtonsSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPButtonsSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/OPButtonsSettings;

    .line 71
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPButtonsSettings;

    .line 71
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPButtonsSettings;

    .line 71
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPButtonsSettings;

    .line 71
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/OPButtonsSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/OPButtonsSettings;

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public static checkGMS(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 203
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x1

    return v1

    .line 206
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private delayEnableHideNavkey()V
    .locals 4

    .line 646
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 647
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPButtonsSettings$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPButtonsSettings$2;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 654
    return-void
.end method

.method private static getNonVisibleKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 862
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 863
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "buttons_enable_on_screen_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    const-string v1, "buttons_swap_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    const-string v1, "buttons_brightness"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    const-string v1, "buttons_force_home"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    const-string v1, "hardware_keys_home_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    const-string v1, "hardware_keys_home_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    const-string v1, "hardware_keys_menu_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    const-string v1, "hardware_keys_menu_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    const-string v1, "hardware_keys_back_long_press"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    const-string v1, "hardware_keys_back_double_tap"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    const-string v1, "home_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    const-string v1, "menu_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    const-string v1, "back_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    const-string v1, "pre_navbar_button_backlight"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    return-object v0
.end method

.method private handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "pref"    # Ljava/lang/Object;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .line 251
    instance-of v0, p1, Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 252
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 253
    .local v0, "listPref":Landroid/support/v7/preference/ListPreference;
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 254
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 255
    .local v2, "index":I
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 256
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, p3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    .end local v0    # "listPref":Landroid/support/v7/preference/ListPreference;
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "index":I
    goto :goto_2

    :cond_0
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_5

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "state":Z
    instance-of v1, p2, Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 260
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 261
    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 262
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    move v0, v1

    .line 264
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v0, :cond_4

    move v2, v3

    nop

    :cond_4
    invoke-static {v1, p3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    .end local v0    # "state":Z
    :cond_5
    :goto_2
    return-void
.end method

.method private initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 243
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 244
    .local v0, "list":Landroid/support/v7/preference/ListPreference;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 247
    return-object v0
.end method

.method private initListViewPrefs()V
    .locals 17

    .line 322
    move-object/from16 v0, p0

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 324
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 326
    .local v2, "defaultLongPressOnHomeBehavior":I
    const-string v3, "key_home_long_press_action"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 329
    .local v3, "longPressOnHomeBehavior":I
    const-string v4, "hardware_keys_home_long_press"

    invoke-direct {v0, v4, v3}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 333
    .local v4, "defaultDoubleTapOnHomeBehavior":I
    const-string v5, "key_home_double_tap_action"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 336
    .local v5, "doubleTapOnHomeBehavior":I
    const-string v6, "hardware_keys_home_double_tap"

    invoke-direct {v0, v6, v5}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v6

    iput-object v6, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x5080007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 356
    .local v6, "defaultLongPressOnAppSwitchBehavior":I
    const-string v7, "key_app_switch_long_press_action"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 359
    .local v7, "longPressOnAppSwitchBehavior":I
    const-string v8, "hardware_keys_menu_long_press"

    invoke-direct {v0, v8, v7}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x5080003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 379
    .local v8, "defaultDoubleTapOnAppSwitchBehavior":I
    const-string v9, "key_app_switch_double_tap_action"

    invoke-static {v1, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 382
    .local v9, "doubleTapOnAppSwitchBehavior":I
    const-string v10, "hardware_keys_menu_double_tap"

    invoke-direct {v0, v10, v9}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v10

    iput-object v10, v0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x5080008

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 387
    .local v10, "defaultLongPressOnBackBehavior":I
    const-string v11, "key_back_long_press_action"

    invoke-static {v1, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 390
    .local v11, "longPressOnBackBehavior":I
    const-string v12, "hardware_keys_back_long_press"

    invoke-direct {v0, v12, v11}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, v0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x5080004

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 395
    .local v12, "defaultDoubleTapOnBackBehavior":I
    const-string v13, "key_back_double_tap_action"

    invoke-static {v1, v13, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 398
    .local v13, "doubleTapOnBackBehavior":I
    const-string v14, "hardware_keys_back_double_tap"

    invoke-direct {v0, v14, v13}, Lcom/oneplus/settings/OPButtonsSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v14

    iput-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 399
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v14

    if-nez v14, :cond_5

    .line 400
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f03006c

    if-eqz v14, :cond_0

    .line 401
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 402
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f030070

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 404
    :cond_0
    const v15, 0x7f030070

    :goto_0
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v14, :cond_1

    .line 405
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f03006c

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 406
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f030070

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 408
    :cond_1
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v14, :cond_2

    .line 409
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f03006c

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 410
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f030070

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 412
    :cond_2
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v14, :cond_3

    .line 413
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f03006c

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 414
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f030070

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 416
    :cond_3
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v14, :cond_4

    .line 417
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f03006c

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 418
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f030070

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 420
    :cond_4
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v14, :cond_5

    .line 421
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f03006c

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 422
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f030070

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 425
    :cond_5
    return-void
.end method

.method private initListViewPrefsnogms()V
    .locals 6

    .line 275
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f03005c

    const v2, 0x7f030058

    const v3, 0x7f030071

    const v4, 0x7f03006d

    if-nez v0, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 278
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 281
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 284
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v5, 0x7f030059

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 286
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v5, 0x7f03005d

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v5, 0x7f03006e

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 289
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v5, 0x7f030072

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 293
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 295
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 296
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 297
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 298
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 299
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 300
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 301
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 302
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 303
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_1

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 306
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 307
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 308
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 309
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 310
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 311
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 312
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 313
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 314
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 315
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 316
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 319
    :goto_1
    return-void
.end method

.method private initPrefs()V
    .locals 2

    .line 174
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initListViewPrefs()V

    .line 175
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->checkGMS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initListViewPrefsnogms()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f030057

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 182
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f03005b

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f03006c

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 185
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f030070

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f03005a

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 190
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f03005e

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f03006f

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f030073

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 198
    :goto_0
    return-void
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 213
    const v0, 0x112002c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isSupportHardwareKeys()Z
    .locals 2

    .line 269
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 270
    .local v0, "SupportHardwareKeysValue":Z
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method private loadPreferenceScreen()V
    .locals 17

    .line 428
    move-object/from16 v0, p0

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    if-eqz v1, :cond_18

    .line 429
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 430
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 433
    .local v2, "defaultBrightness":I
    const-string v3, "buttons_brightness"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 436
    .local v3, "buttonsBrightnessEnabled":Z
    :goto_0
    const-string v6, "buttons_show_on_screen_navkeys"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    .line 439
    .local v6, "onScreenNavKeysEnabled":Z
    :goto_1
    const-string v7, "buttons_force_home_enabled"

    invoke-static {v1, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v5

    .line 442
    .local v7, "forceHomeEnabled":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "oem_acc_key_define"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v4

    goto :goto_3

    :cond_3
    move v8, v5

    .line 444
    .local v8, "swapNavkeysEnabled":Z
    :goto_3
    iget-object v9, v0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 447
    iget-object v9, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 450
    iget-object v9, v0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v9, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 452
    const-string v9, "oem_acc_key_lock_mode"

    sget-object v10, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->NORMAL:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    .line 453
    invoke-virtual {v10}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->ordinal()I

    move-result v10

    .line 452
    invoke-static {v1, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    sget-object v10, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->FOOT:Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;

    .line 453
    invoke-virtual {v10}, Lcom/oneplus/settings/OPButtonsSettings$KeyLockMode;->ordinal()I

    move-result v10

    if-ne v9, v10, :cond_4

    move v9, v5

    goto :goto_4

    :cond_4
    move v9, v4

    .line 454
    .local v9, "enableOnScreenNavkeys":Z
    :goto_4
    iget-object v10, v0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 457
    iget-object v10, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    .line 461
    .local v10, "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    const-string v11, "home_key"

    .line 462
    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v7/preference/PreferenceCategory;

    .line 463
    .local v11, "homeCategory":Landroid/support/v7/preference/PreferenceCategory;
    const-string v12, "menu_key"

    .line 464
    invoke-virtual {v10, v12}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/PreferenceCategory;

    .line 465
    .local v12, "menuCategory":Landroid/support/v7/preference/PreferenceCategory;
    const-string v13, "back_key"

    .line 466
    invoke-virtual {v10, v13}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/PreferenceCategory;

    .line 469
    .local v13, "backCategory":Landroid/support/v7/preference/PreferenceCategory;
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v14, :cond_6

    .line 470
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    if-nez v6, :cond_5

    move v15, v4

    goto :goto_5

    :cond_5
    move v15, v5

    :goto_5
    invoke-virtual {v14, v15}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 472
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->isSupportHardwareKeys()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 473
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v14, :cond_7

    .line 474
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v14, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 476
    :cond_7
    if-eqz v11, :cond_8

    .line 477
    if-nez v7, :cond_8

    .line 480
    :cond_8
    nop

    .line 483
    nop

    .line 486
    const-string v14, "hide_navkeys"

    invoke-virtual {v0, v14}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_b

    .line 488
    :cond_9
    const-string v14, "buttons_brightness"

    invoke-virtual {v0, v14}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    .line 489
    const-string v14, "buttons_enable_on_screen_navkeys"

    invoke-virtual {v0, v14}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    .line 490
    const-string v14, "buttons_force_home"

    invoke-virtual {v0, v14}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "op_navigation_bar_type"

    invoke-static {v14, v15, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 494
    .local v14, "value":I
    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v14, :cond_a

    goto :goto_6

    :cond_a
    move v4, v5

    :goto_6
    invoke-virtual {v15, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 495
    const/4 v4, 0x3

    if-ne v14, v4, :cond_b

    const/4 v4, 0x1

    goto :goto_7

    :cond_b
    move v4, v5

    .line 496
    .local v4, "isGestureEnabled":Z
    :goto_7
    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v15, :cond_d

    .line 497
    iget-object v15, v0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-nez v4, :cond_c

    const/4 v5, 0x1

    nop

    :cond_c
    invoke-virtual {v15, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 499
    :cond_d
    if-eqz v11, :cond_f

    .line 500
    if-nez v4, :cond_e

    const/4 v5, 0x1

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    :goto_8
    invoke-virtual {v11, v5}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 502
    :cond_f
    if-eqz v12, :cond_11

    .line 503
    if-nez v4, :cond_10

    const/4 v5, 0x1

    goto :goto_9

    :cond_10
    const/4 v5, 0x0

    :goto_9
    invoke-virtual {v12, v5}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 505
    :cond_11
    if-eqz v13, :cond_13

    .line 506
    if-nez v4, :cond_12

    const/4 v5, 0x1

    goto :goto_a

    :cond_12
    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v13, v5}, Landroid/support/v7/preference/PreferenceCategory;->setEnabled(Z)V

    .line 509
    .end local v4    # "isGestureEnabled":Z
    .end local v14    # "value":I
    :cond_13
    :goto_b
    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isSurportNavigationBarOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 510
    const-string v4, "buttons_enable_on_screen_navkeys"

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    .line 511
    const-string v4, "hide_navkeys"

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_c

    .line 513
    :cond_14
    const-string v4, "key_navigation_bar_type"

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    .line 516
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "emergency_affordance_needed"

    const/4 v14, 0x0

    invoke-static {v4, v5, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    goto :goto_d

    :cond_15
    const/4 v4, 0x0

    .line 518
    .local v4, "inEmergencyCall":Z
    :goto_d
    if-eqz v4, :cond_16

    .line 519
    const-string v5, "camera_double_tap_power_gesture"

    invoke-virtual {v0, v5}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_e

    .line 521
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v14}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 525
    :goto_e
    iget-object v5, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v5, :cond_18

    .line 526
    nop

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v14, "camera_double_tap_power_gesture_disabled"

    .line 526
    const/4 v15, 0x0

    invoke-static {v5, v14, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 528
    .local v5, "value":I
    iget-object v14, v0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-nez v5, :cond_17

    const/4 v15, 0x1

    nop

    :cond_17
    invoke-virtual {v14, v15}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 532
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "defaultBrightness":I
    .end local v3    # "buttonsBrightnessEnabled":Z
    .end local v4    # "inEmergencyCall":Z
    .end local v5    # "value":I
    .end local v6    # "onScreenNavKeysEnabled":Z
    .end local v7    # "forceHomeEnabled":Z
    .end local v8    # "swapNavkeysEnabled":Z
    .end local v9    # "enableOnScreenNavkeys":Z
    .end local v10    # "prefScreen":Landroid/support/v7/preference/PreferenceScreen;
    .end local v11    # "homeCategory":Landroid/support/v7/preference/PreferenceCategory;
    .end local v12    # "menuCategory":Landroid/support/v7/preference/PreferenceCategory;
    .end local v13    # "backCategory":Landroid/support/v7/preference/PreferenceCategory;
    :cond_18
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 135
    const/16 v0, 0x270f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 227
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_gesture_guide_completed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_gesture_button_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 230
    const-string v0, "op_fullscreen_gesture_enabled"

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    .line 231
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->delayEnableHideNavkey()V

    .line 234
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mWindow:Landroid/view/Window;

    .line 142
    const v0, 0x7f160075

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->addPreferencesFromResource(I)V

    .line 144
    new-instance v0, Lcom/oneplus/settings/OPButtonsSettings$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPButtonsSettings$1;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    .line 154
    const-string v0, "buttons_enable_on_screen_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    const-string v0, "buttons_swap_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    const-string v0, "buttons_brightness"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    const-string v0, "buttons_force_home"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    .line 161
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "camera_double_tap_power_gesture"

    .line 164
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 165
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 167
    :cond_0
    const-string v0, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->removePreference(Ljava/lang/String;)Z

    .line 169
    :goto_0
    const-string v0, "hide_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 170
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 238
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->setListening(Z)V

    .line 240
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "state":Z
    instance-of v1, p2, Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 538
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 539
    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 540
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    .line 542
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_3

    .line 543
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    const-string v2, "oem_acc_key_define"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    return v3

    .line 547
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_5

    .line 548
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const-string v2, "key_home_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 553
    .local v1, "value":Ljava/lang/String;
    const-string v2, "11"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 554
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    .line 557
    :cond_4
    return v3

    .line 558
    .end local v1    # "value":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_6

    .line 559
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const-string v2, "key_home_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    return v3

    .line 563
    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_7

    .line 564
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    const-string v2, "key_app_switch_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    return v3

    .line 578
    :cond_7
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_8

    .line 579
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const-string v2, "key_app_switch_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    return v3

    .line 593
    :cond_8
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_9

    .line 594
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    const-string v2, "key_back_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    return v3

    .line 598
    :cond_9
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_a

    .line 599
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const-string v2, "key_back_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    return v3

    .line 603
    :cond_a
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mDisableNavKeysBrightness:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_b

    .line 604
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->setHWButtonsLightsState(Landroid/content/Context;ZZ)V

    .line 605
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    .line 606
    return v3

    .line 607
    :cond_b
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_c

    .line 608
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/oneplus/settings/OPButtonsSettings$Helper;->updateSettings(Landroid/content/Context;Z)V

    .line 609
    const-string v1, "buttons_enable_on_screen_navkeys"

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    .line 610
    return v3

    .line 611
    :cond_c
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_d

    .line 612
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mForceHomeButtonEnabled:Landroid/support/v14/preference/SwitchPreference;

    const-string v2, "buttons_force_home_enabled"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/OPButtonsSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    .line 616
    return v3

    .line 617
    :cond_d
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_e

    .line 619
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 620
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "camera_double_tap_power_gesture_disabled"

    .line 621
    nop

    .line 620
    xor-int/lit8 v5, v1, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 622
    return v3

    .line 624
    .end local v1    # "value":Z
    :cond_e
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_10

    .line 625
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "op_gesture_guide_completed"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_f

    .line 627
    new-instance v1, Landroid/content/Intent;

    const-string v2, "oneplus.intent.action.ONEPLUS_FULLSCREEN_GESTURE_GUIDE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/settings/OPButtonsSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 629
    :cond_f
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 632
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "op_gesture_button_enabled"

    .line 633
    nop

    .line 632
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 634
    const-string v2, "op_fullscreen_gesture_enabled"

    invoke-static {v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Z)V

    .line 635
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->delayEnableHideNavkey()V

    .line 637
    .end local v1    # "value":Z
    :goto_2
    return v3

    .line 639
    :cond_10
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 658
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mWindow:Landroid/view/Window;

    const-string v1, "#FF000001"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mEnableOnScreenNavkeys:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 664
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPButtonsSettings$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPButtonsSettings$3;-><init>(Lcom/oneplus/settings/OPButtonsSettings;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 671
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 219
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 220
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->initPrefs()V

    .line 221
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsSettings;->mSettingsObserver:Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPButtonsSettings$SettingsObserver;->setListening(Z)V

    .line 222
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsSettings;->loadPreferenceScreen()V

    .line 223
    return-void
.end method
