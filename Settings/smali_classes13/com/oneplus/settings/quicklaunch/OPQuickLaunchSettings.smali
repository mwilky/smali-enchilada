.class public Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPQuickLaunchSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;


# static fields
.field public static final CODE_REQUEST_FINGERPRINT:I = 0x1

.field private static final MY_USER_ID:I

.field public static final OP_HOME_LONG_ACTION_QUICKPAY:I = 0xb

.field public static final OP_QUICKPAY_DEFAULT_WAY:Ljava/lang/String; = "op_quickpay_default_way"

.field public static final OP_QUICKPAY_ENABLE:Ljava/lang/String; = "op_quickpay_enable"

.field public static final OP_QUICKPAY_SHOW:Ljava/lang/String; = "op_quickpay_show"


# instance fields
.field private final KEY_ENABLE_QUICK_LAUNCH:Ljava/lang/String;

.field private final KEY_FINGERPRINT_LONGPRESS_ACTION_FOR_QUICKPAY:Ljava/lang/String;

.field private final KEY_OP_QUICK_LAUNCHER_SETTINGS:Ljava/lang/String;

.field private final KEY_QUICKLAUNCH_INSTRUCTIONS:Ljava/lang/String;

.field private final OP_FINGERPRINT_LONG_PRESS_ACTION:Ljava/lang/String;

.field private mActivity:Lcom/android/settings/SettingsActivity;

.field private mDefaultQuickLaunchAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableQuickLaunch:Landroid/support/v14/preference/SwitchPreference;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHasFingerprint:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPayWaysName:[Ljava/lang/String;

.field private mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

.field private mQuickLaunchPreferece:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "key_quick_launch_instructions"

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->KEY_QUICKLAUNCH_INSTRUCTIONS:Ljava/lang/String;

    const-string v0, "op_fingerprint_long_press_action"

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->OP_FINGERPRINT_LONG_PRESS_ACTION:Ljava/lang/String;

    const-string v0, "op_fingerprint_longpress_action_for_quickpay"

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->KEY_FINGERPRINT_LONGPRESS_ACTION_FOR_QUICKPAY:Ljava/lang/String;

    const-string v0, "key_enable_quick_launch"

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->KEY_ENABLE_QUICK_LAUNCH:Ljava/lang/String;

    const-string v0, "op_quick_launcher_settings"

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->KEY_OP_QUICK_LAUNCHER_SETTINGS:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    return-void
.end method

.method private checkFingerPrint()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mHasFingerprint:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mHasFingerprint:Z

    :goto_0
    return-void
.end method

.method private createDefaultData()V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v3, "net.one97.paytm"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    const-string v4, "net.one97.paytm"

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v6, v3, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v0

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v4, "net.one97.paytm"

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v3, "com.google.android.googlequicksearchbox"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v3, "com.google.android.googlequicksearchbox"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v5, "com.google.android.googlequicksearchbox"

    const-string v6, "voice_shortcut"

    invoke-static {v4, v5, v6, v3}, Lcom/oneplus/settings/utils/OPUtils;->loadShortcutByPackageNameAndShortcutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v3, "com.oneplus.note"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v3, "com.oneplus.note"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v5, "com.oneplus.note"

    const-string v6, "new_note"

    invoke-static {v4, v5, v6, v3}, Lcom/oneplus/settings/utils/OPUtils;->loadShortcutByPackageNameAndShortcutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v3, "com.google.android.music"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v3, "com.google.android.music"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v5, "com.google.android.music"

    const-string v6, "music-mylibrary"

    invoke-static {v4, v5, v6, v3}, Lcom/oneplus/settings/utils/OPUtils;->loadShortcutByPackageNameAndShortcutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v3, "com.google.android.calendar"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v3, "com.google.android.calendar"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v5, "com.google.android.calendar"

    const-string v6, "launcher_shortcuts_shortcut_new_event"

    invoke-static {v4, v5, v6, v3}, Lcom/oneplus/settings/utils/OPUtils;->loadShortcutByPackageNameAndShortcutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/better/OPAppModel;

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v6

    if-ne v6, v1, :cond_6

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchShortcutsString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v6

    if-ne v6, v2, :cond_7

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v5

    :cond_7
    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/settings/utils/OPUtils;->saveQuickLaunchStrings(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v3, "com.tencent.mm"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    const-string v4, "com.tencent.mm"

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v5, v3, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v3, v9}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Lcom/oneplus/settings/better/OPAppModel;

    const-string v5, "com.tencent.mm"

    iget-object v4, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v6, v4, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v4, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v4, v1}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    const-string v4, "com.eg.android.AlipayGphone"

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v5, v1, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/oneplus/settings/better/OPAppModel;

    const-string v4, "com.eg.android.AlipayGphone"

    iget-object v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v5, v3, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v2, v9}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/settings/utils/OPUtils;->saveQuickLaunchStrings(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    :goto_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickLaunch()V

    return-void
.end method

.method private initDefaultData()V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quick_launcher_edited"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    nop

    :cond_0
    move v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->createDefaultData()V

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_quick_launcher_edited"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private initPreference()V
    .locals 3

    const v0, 0x7f16008e

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->addPreferencesFromResource(I)V

    const-string v0, "op_quick_launcher_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchPreferece:Landroid/support/v7/preference/Preference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportQuickLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchPreferece:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string v0, "key_enable_quick_launch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_quick_launch_instructions"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const-string v1, "op_quick_launch_guide_active_white.json"

    const-string v2, "op_quick_launch_guide_exit_white.json"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setAnimationWhiteResources([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const-string v1, "op_quick_launch_guide_active_dark.json"

    const-string v2, "op_quick_launch_guide_exit_dark.json"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setAnimationDarkResources([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setTitleResources([I)V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setDescriptionIdResources([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f120c43
        0x7f120c41
    .end array-data

    :array_1
    .array-data 4
        0x7f120c42
        0x7f120c40
    .end array-data
.end method

.method private updatePreferenceState()V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quickpay_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mHasFingerprint:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "op_quickpay_enable"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public gotoFingerprintEnrollIntroduction(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->checkFingerPrint()V

    iget-boolean v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mHasFingerprint:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_quickpay_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    nop

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->initPreference()V

    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->initDefaultData()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->releaseAnim()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->stopAnim()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mHasFingerprint:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->gotoFingerprintEnrollIntroduction(I)V

    return v1

    :cond_0
    move v1, v0

    invoke-virtual {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "op_quickpay_enable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    return v2

    :cond_1
    return v1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceViewClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->checkFingerPrint()V

    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->updatePreferenceState()V

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->startAnim()V

    :cond_0
    return-void
.end method
