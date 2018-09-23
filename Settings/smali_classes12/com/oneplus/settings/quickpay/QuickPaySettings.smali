.class public Lcom/oneplus/settings/quickpay/QuickPaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "QuickPaySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;
    }
.end annotation


# static fields
.field public static final CODE_REQUEST_FINGERPRINT:I = 0x1

.field private static final MY_USER_ID:I

.field public static final OP_HOME_LONG_ACTION_QUICKPAY:I = 0xb

.field public static final OP_QUICKPAY_DEFAULT_WAY:Ljava/lang/String; = "op_quickpay_default_way"

.field public static final OP_QUICKPAY_ENABLE:Ljava/lang/String; = "op_quickpay_enable"

.field public static final OP_QUICKPAY_SHOW:Ljava/lang/String; = "op_quickpay_show"

.field public static final sPayWaysKey:[Ljava/lang/String;

.field public static final sPayWaysValue:[I


# instance fields
.field private final KEY_FINGERPRINT_LONGPRESS_ACTION_FOR_QUICKPAY:Ljava/lang/String;

.field private final KEY_PREFERENCE_DIVIDER_LINE2:Ljava/lang/String;

.field private final KEY_QUICKPAY_INSTRUCTIONS:Ljava/lang/String;

.field private final KEY_QUICKPAY_SELECT_DEFAULT_WAY_CATEGORY:Ljava/lang/String;

.field private final KEY_QUICKPAY_UNINSTALL_APP_CATEGORY:Ljava/lang/String;

.field private final KEY_SWITCH_LOCKSCREEN:Ljava/lang/String;

.field private final KEY_SWITCH_UNLOCKSCREEN:Ljava/lang/String;

.field private final OP_FINGERPRINT_LONG_PRESS_ACTION:Ljava/lang/String;

.field private mActivity:Lcom/android/settings/SettingsActivity;

.field private mAllPayWaysPreference:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/location/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultLongPressOnHomeBehavior:I

.field private mFingerprintLongpressQuickpay:Landroid/support/v14/preference/SwitchPreference;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHasFingerprint:Z

.field private mHomeKeyActionName:[Ljava/lang/String;

.field private mHomeKeyActionValue:[Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPayWaysKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPayWaysName:[Ljava/lang/String;

.field private mPayWaysNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPayWaysValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

.field private preference_divider_line2:Lcom/oneplus/settings/ui/OPPreferenceDivider;

.field private quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

.field private quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

.field private quickpay_uninstall_app_category:Landroid/support/v7/preference/PreferenceCategory;

.field private quickpay_way_alipay_qrcode:Lcom/android/settings/location/RadioButtonPreference;

.field private quickpay_way_alipay_scanning:Lcom/android/settings/location/RadioButtonPreference;

.field private quickpay_way_paytm:Lcom/android/settings/location/RadioButtonPreference;

.field private quickpay_way_wecaht_qrcode:Lcom/android/settings/location/RadioButtonPreference;

.field private quickpay_way_wecaht_scanning:Lcom/android/settings/location/RadioButtonPreference;

.field private switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

.field private switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->MY_USER_ID:I

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "op_fingerprint_long_press_action"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->OP_FINGERPRINT_LONG_PRESS_ACTION:Ljava/lang/String;

    const-string v0, "op_fingerprint_longpress_action_for_quickpay"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_FINGERPRINT_LONGPRESS_ACTION_FOR_QUICKPAY:Ljava/lang/String;

    const-string v0, "key_switch_lockscreen"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_SWITCH_LOCKSCREEN:Ljava/lang/String;

    const-string v0, "key_switch_unlockscreen"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_SWITCH_UNLOCKSCREEN:Ljava/lang/String;

    const-string v0, "key_quickpay_uninstall_app_category"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_QUICKPAY_UNINSTALL_APP_CATEGORY:Ljava/lang/String;

    const-string v0, "key_quickpay_select_default_way_category"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_QUICKPAY_SELECT_DEFAULT_WAY_CATEGORY:Ljava/lang/String;

    const-string v0, "key_quickpay_instructions"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_QUICKPAY_INSTRUCTIONS:Ljava/lang/String;

    const-string v0, "preference_divider_line2"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_PREFERENCE_DIVIDER_LINE2:Ljava/lang/String;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/quickpay/QuickPaySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateUnLockHomeAction(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/quickpay/QuickPaySettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updatePreferenceState()V

    return-void
.end method

.method public static canShowQuickPay(Landroid/content/Context;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quickpay_show"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const-string v3, "com.tencent.mm"

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "com.eg.android.AlipayGphone"

    invoke-static {p0, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    const-string v5, "net.one97.paytm"

    invoke-static {p0, v5}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "op_quickpay_show"

    invoke-static {v2, v6, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private checkFingerPrint()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    :goto_0
    return-void
.end method

.method private getLongPressHomeActionIndexByValue(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static gotoQuickPaySettingsPage(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oneplus.action.QUICKPAY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "QuickPaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initHomeActionName()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->checkGMS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private initPayWayData()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v1, "com.tencent.mm"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_wecaht_qrcode:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_wecaht_scanning:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_wecaht_qrcode:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_wecaht_scanning:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v3, "com.eg.android.AlipayGphone"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_alipay_qrcode:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_alipay_scanning:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_alipay_qrcode:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_alipay_scanning:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v3, "net.one97.paytm"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v2, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v2, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_paytm:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_paytm:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    :goto_2
    return-void
.end method

.method private initPreference()V
    .locals 2

    const v0, 0x7f16008b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->addPreferencesFromResource(I)V

    const-string v0, "key_switch_lockscreen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_switch_unlockscreen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f120b16

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    const-string v0, "key_switch_unlockscreen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)Z

    :cond_0
    const-string v0, "key_quickpay_uninstall_app_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_uninstall_app_category:Landroid/support/v7/preference/PreferenceCategory;

    const-string v0, "key_quickpay_select_default_way_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    const-string v0, "key_quickpay_instructions"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setViewOnClick(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;)V

    const-string v0, "preference_divider_line2"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->preference_divider_line2:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    const-string v0, "key_quickpay_way_wecaht_qrcode"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_wecaht_qrcode:Lcom/android/settings/location/RadioButtonPreference;

    const-string v0, "key_quickpay_way_wecaht_scanning"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_wecaht_scanning:Lcom/android/settings/location/RadioButtonPreference;

    const-string v0, "key_quickpay_way_alipay_qrcode"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_alipay_qrcode:Lcom/android/settings/location/RadioButtonPreference;

    const-string v0, "key_quickpay_way_alipay_scanning"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_alipay_scanning:Lcom/android/settings/location/RadioButtonPreference;

    const-string v0, "key_quickpay_way_paytm"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_paytm:Lcom/android/settings/location/RadioButtonPreference;

    return-void
.end method

.method private refreshQuickPayEnableUI(Z)V
    .locals 2

    const-string v0, "preference_divider_line2"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)Z

    if-nez p1, :cond_0

    const-string v0, "key_quickpay_select_default_way_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)Z

    const-string v0, "key_quickpay_uninstall_app_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->preference_divider_line2:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_uninstall_app_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private showConfirmChangeHomeAction(ZI)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    const-string v0, "QuickPaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longPressHomeActionIndex is out of max length.longPressHomeActionIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    aget-object v0, v0, p2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const v3, 0x7f120c17

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const v3, 0x7f120cc9

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const v3, 0x7f120cc8

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/settings/quickpay/QuickPaySettings$2;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings$2;-><init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateLockHomeAction(Z)V
    .locals 4

    move v0, p1

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_quickpay_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_2
    move v2, p1

    :goto_2
    invoke-direct {p0, v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    return-void
.end method

.method private updatePreferenceState()V
    .locals 11

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initPayWayData()V

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quickpay_default_way"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "key_home_long_press_action"

    iget v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    invoke-static {v1, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "op_fingerprint_long_press_action"

    iget v6, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    invoke-static {v4, v5, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_3

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_uninstall_app_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    const/4 v5, 0x0

    move v7, v5

    move v5, v3

    :goto_0
    iget-object v8, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    iget-object v8, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/location/RadioButtonPreference;

    iget-object v9, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v0, v9, :cond_0

    invoke-virtual {v8, v6}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    const/4 v7, 0x1

    :cond_0
    invoke-virtual {v8, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v9, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    if-nez v7, :cond_2

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, v6}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "op_quickpay_default_way"

    iget-object v8, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v2, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_uninstall_app_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "op_quickpay_enable"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_5

    iget-boolean v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "op_quickpay_enable"

    invoke-static {v5, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "buttons_show_on_screen_navkeys"

    invoke-static {v5, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    goto :goto_3

    :cond_6
    move v5, v3

    :goto_3
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "buttons_force_home_enabled"

    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v7, v6

    goto :goto_4

    :cond_7
    move v7, v3

    :goto_4
    if-eqz v5, :cond_9

    if-eqz v5, :cond_8

    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    move v8, v3

    goto :goto_6

    :cond_9
    :goto_5
    move v8, v6

    :goto_6
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v10, :cond_e

    sget-object v10, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v10}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_e

    const/16 v10, 0xb

    if-ne v1, v10, :cond_a

    if-eqz v8, :cond_a

    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    :cond_a
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    if-nez v8, :cond_b

    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_b
    :goto_7
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_d

    if-ne v2, v6, :cond_c

    goto :goto_8

    :cond_c
    move v10, v3

    goto :goto_9

    :cond_d
    :goto_8
    move v10, v6

    :goto_9
    move v9, v10

    :cond_e
    sget-object v10, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v10}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_10

    if-ne v2, v6, :cond_f

    move v3, v6

    nop

    :cond_f
    move v9, v3

    :cond_10
    invoke-direct {p0, v9}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    return-void
.end method

.method private updateUnLockFingerprintLongpressAction(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_fingerprint_long_press_action"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    return-void
.end method

.method private updateUnLockHomeAction(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_home_long_press_action"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

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

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initHomeActionName()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->checkFingerPrint()V

    iget-boolean v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_quickpay_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    nop

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initHomeActionName()V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v0, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;-><init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initPreference()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->stopAnim()V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoFingerprintEnrollIntroduction(I)V

    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateLockHomeAction(Z)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_home_long_press_action"

    iget v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    invoke-static {v3, v4, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getLongPressHomeActionIndexByValue(I)I

    move-result v4

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    invoke-direct {p0, v0, v4}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->showConfirmChangeHomeAction(ZI)V

    return v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateUnLockHomeAction(Z)V

    return v2

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintLongpressQuickpay:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateUnLockFingerprintLongpressAction(Z)V

    return v2

    :cond_4
    return v1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "op_quickpay_default_way"

    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/settings/location/RadioButtonPreference;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public onPreferenceViewClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->playOrStopAnim()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->checkFingerPrint()V

    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updatePreferenceState()V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
