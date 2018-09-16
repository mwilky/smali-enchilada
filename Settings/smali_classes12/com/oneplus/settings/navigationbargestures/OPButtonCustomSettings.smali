.class public Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPButtonCustomSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final GSM_PACKAGE:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final KEY_BACK_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_back_double_tap"

.field private static final KEY_BACK_LONG_PRESS:Ljava/lang/String; = "hardware_keys_back_long_press"

.field private static final KEY_BUTTONS_SWAP_NAVKEYS:Ljava/lang/String; = "buttons_swap_navkeys"

.field private static final KEY_HIDE_NAVKEYS:Ljava/lang/String; = "hide_navkeys"

.field private static final KEY_HOME_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_home_double_tap"

.field private static final KEY_HOME_LONG_PRESS:Ljava/lang/String; = "hardware_keys_home_long_press"

.field private static final KEY_MENU_DOUBLE_TAP:Ljava/lang/String; = "hardware_keys_menu_double_tap"

.field private static final KEY_MENU_LONG_PRESS:Ljava/lang/String; = "hardware_keys_menu_long_press"

.field private static final KEY_OP_NAVIGATION_BAR_TYPE:Ljava/lang/String; = "op_navigation_bar_type"

.field public static final QUICKPAY_VALUE:Ljava/lang/String; = "11"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TYPE_BACK_HOME:I = 0x2


# instance fields
.field private mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

.field private mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

.field private mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

.field private mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

.field private mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

.field private mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 343
    new-instance v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static checkGMS(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 99
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x1

    return v1

    .line 102
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method private getBackHomeEnabled()Z
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "swipe_up_to_switch_apps_enabled"

    iget-object v2, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

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

.method private handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "pref"    # Ljava/lang/Object;
    .param p2, "newValue"    # Ljava/lang/Object;
    .param p3, "setting"    # Ljava/lang/String;

    .line 266
    instance-of v0, p1, Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 267
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 268
    .local v0, "listPref":Landroid/support/v7/preference/ListPreference;
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 269
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 270
    .local v2, "index":I
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, p3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    .end local v0    # "listPref":Landroid/support/v7/preference/ListPreference;
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "index":I
    goto :goto_2

    :cond_0
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_5

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, "state":Z
    instance-of v1, p2, Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 275
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 276
    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 277
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

    .line 279
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v0, :cond_4

    move v2, v3

    nop

    :cond_4
    invoke-static {v1, p3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 281
    .end local v0    # "state":Z
    :cond_5
    :goto_2
    return-void
.end method

.method private initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 258
    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 259
    .local v0, "list":Landroid/support/v7/preference/ListPreference;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 262
    return-object v0
.end method

.method private initListViewPrefs()V
    .locals 17

    .line 186
    move-object/from16 v0, p0

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 187
    .local v1, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 189
    .local v2, "defaultLongPressOnHomeBehavior":I
    const-string v3, "key_home_long_press_action"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 192
    .local v3, "longPressOnHomeBehavior":I
    const-string v4, "hardware_keys_home_long_press"

    invoke-direct {v0, v4, v3}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 195
    .local v4, "defaultDoubleTapOnHomeBehavior":I
    const-string v5, "key_home_double_tap_action"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 198
    .local v5, "doubleTapOnHomeBehavior":I
    const-string v6, "hardware_keys_home_double_tap"

    invoke-direct {v0, v6, v5}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v6

    iput-object v6, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x5080007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 202
    .local v6, "defaultLongPressOnAppSwitchBehavior":I
    const-string v7, "key_app_switch_long_press_action"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 205
    .local v7, "longPressOnAppSwitchBehavior":I
    const-string v8, "hardware_keys_menu_long_press"

    invoke-direct {v0, v8, v7}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x5080003

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 209
    .local v8, "defaultDoubleTapOnAppSwitchBehavior":I
    const-string v9, "key_app_switch_double_tap_action"

    invoke-static {v1, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 212
    .local v9, "doubleTapOnAppSwitchBehavior":I
    const-string v10, "hardware_keys_menu_double_tap"

    invoke-direct {v0, v10, v9}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v10

    iput-object v10, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x5080008

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 217
    .local v10, "defaultLongPressOnBackBehavior":I
    const-string v11, "key_back_long_press_action"

    invoke-static {v1, v11, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 220
    .local v11, "longPressOnBackBehavior":I
    const-string v12, "hardware_keys_back_long_press"

    invoke-direct {v0, v12, v11}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v12

    iput-object v12, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x5080004

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 225
    .local v12, "defaultDoubleTapOnBackBehavior":I
    const-string v13, "key_back_double_tap_action"

    invoke-static {v1, v13, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 228
    .local v13, "doubleTapOnBackBehavior":I
    const-string v14, "hardware_keys_back_double_tap"

    invoke-direct {v0, v14, v13}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initActionList(Ljava/lang/String;I)Landroid/support/v7/preference/ListPreference;

    move-result-object v14

    iput-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    .line 229
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v14

    if-nez v14, :cond_5

    .line 230
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f03006c

    if-eqz v14, :cond_0

    .line 231
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 232
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f030070

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 234
    :cond_0
    const v15, 0x7f030070

    :goto_0
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v14, :cond_1

    .line 235
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f03006c

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 236
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f030070

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 238
    :cond_1
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v14, :cond_2

    .line 239
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f03006c

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 240
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f030070

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 242
    :cond_2
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v14, :cond_3

    .line 243
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f03006c

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 244
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f030070

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 246
    :cond_3
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v14, :cond_4

    .line 247
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f03006c

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 248
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f030070

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 250
    :cond_4
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-eqz v14, :cond_5

    .line 251
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f03006c

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 252
    iget-object v14, v0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const v15, 0x7f030070

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 255
    :cond_5
    return-void
.end method

.method private initListViewPrefsnogms()V
    .locals 6

    .line 135
    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f03005c

    const v2, 0x7f030058

    const v3, 0x7f030071

    const v4, 0x7f03006d

    if-nez v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v5, 0x7f030059

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v5, 0x7f03005d

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v5, 0x7f03006e

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 149
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v5, 0x7f030072

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 152
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 154
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 160
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 161
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_1

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 165
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 166
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 167
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 168
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 169
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 170
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 173
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 174
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 175
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 178
    :goto_1
    return-void
.end method

.method private initPrefs()V
    .locals 2

    .line 108
    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initListViewPrefs()V

    .line 109
    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->checkGMS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initListViewPrefsnogms()V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f030057

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f03005b

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f03006c

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f030070

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f03005a

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 123
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f03005e

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    goto :goto_0

    .line 125
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f03006f

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f030073

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 131
    :goto_0
    return-void
.end method

.method private isSupportHardwareKeys()Z
    .locals 2

    .line 181
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 182
    .local v0, "SupportHardwareKeysValue":Z
    xor-int/lit8 v1, v0, 0x1

    return v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 364
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f160073

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->addPreferencesFromResource(I)V

    .line 63
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    .line 64
    const-string v0, "buttons_swap_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 65
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 66
    const-string v0, "hide_navkeys"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    .line 67
    iget-object v0, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "state":Z
    instance-of v1, p2, Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 287
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 288
    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 289
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

    .line 291
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_3

    .line 292
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    const-string v2, "oem_acc_key_define"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    return v3

    .line 296
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_4

    .line 297
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    const-string v2, "op_gesture_button_enabled"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    return v3

    .line 301
    :cond_4
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 302
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    .line 303
    :cond_5
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 304
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    move v0, v1

    .line 306
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_9

    .line 307
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeLongPressAction:Landroid/support/v7/preference/ListPreference;

    const-string v2, "key_home_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 309
    .local v1, "value":Ljava/lang/String;
    const-string v2, "11"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 310
    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    .line 312
    :cond_8
    return v3

    .line 313
    .end local v1    # "value":Ljava/lang/String;
    :cond_9
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_a

    .line 314
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHomeDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const-string v2, "key_home_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    return v3

    .line 318
    :cond_a
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_b

    .line 319
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    const-string v2, "key_app_switch_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    return v3

    .line 324
    :cond_b
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_c

    .line 325
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const-string v2, "key_app_switch_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    return v3

    .line 329
    :cond_c
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_d

    .line 330
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackLongPressAction:Landroid/support/v7/preference/ListPreference;

    const-string v2, "key_back_long_press_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    return v3

    .line 334
    :cond_d
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v1, :cond_e

    .line 335
    iget-object v1, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mBackDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    const-string v2, "key_back_double_tap_action"

    invoke-direct {p0, v1, p2, v2}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->handleChange(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    return v3

    .line 340
    :cond_e
    return v2
.end method

.method public onResume()V
    .locals 6

    .line 76
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 77
    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->initPrefs()V

    .line 78
    invoke-virtual {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_key_define"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 80
    .local v0, "swapNavkeysEnabled":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mSwapNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 81
    iget-object v3, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "op_navigation_bar_type"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 82
    .local v3, "value":I
    invoke-direct {p0}, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->getBackHomeEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 84
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 85
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    goto :goto_1

    .line 87
    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 88
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuLongPressAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 89
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mMenuDoubleTapAction:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 91
    :goto_1
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "op_gesture_button_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 92
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_3

    .line 93
    iget-object v4, p0, Lcom/oneplus/settings/navigationbargestures/OPButtonCustomSettings;->mHideNavkeys:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 95
    :cond_3
    return-void
.end method
