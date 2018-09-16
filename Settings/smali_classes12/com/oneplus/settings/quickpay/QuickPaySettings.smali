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

    .line 59
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->MY_USER_ID:I

    .line 70
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    .line 71
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

    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 61
    const-string v0, "op_fingerprint_long_press_action"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->OP_FINGERPRINT_LONG_PRESS_ACTION:Ljava/lang/String;

    .line 62
    const-string v0, "op_fingerprint_longpress_action_for_quickpay"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_FINGERPRINT_LONGPRESS_ACTION_FOR_QUICKPAY:Ljava/lang/String;

    .line 63
    const-string v0, "key_switch_lockscreen"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_SWITCH_LOCKSCREEN:Ljava/lang/String;

    .line 64
    const-string v0, "key_switch_unlockscreen"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_SWITCH_UNLOCKSCREEN:Ljava/lang/String;

    .line 65
    const-string v0, "key_quickpay_uninstall_app_category"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_QUICKPAY_UNINSTALL_APP_CATEGORY:Ljava/lang/String;

    .line 66
    const-string v0, "key_quickpay_select_default_way_category"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_QUICKPAY_SELECT_DEFAULT_WAY_CATEGORY:Ljava/lang/String;

    .line 67
    const-string v0, "key_quickpay_instructions"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_QUICKPAY_INSTRUCTIONS:Ljava/lang/String;

    .line 68
    const-string v0, "preference_divider_line2"

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->KEY_PREFERENCE_DIVIDER_LINE2:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    .line 95
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    .line 96
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    .line 97
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/quickpay/QuickPaySettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/quickpay/QuickPaySettings;
    .param p1, "x1"    # Z

    .line 52
    invoke-direct {p0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateUnLockHomeAction(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/quickpay/QuickPaySettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/quickpay/QuickPaySettings;

    .line 52
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/quickpay/QuickPaySettings;

    .line 52
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updatePreferenceState()V

    return-void
.end method

.method public static canShowQuickPay(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 481
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quickpay_show"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 482
    .local v0, "quickPayShow":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 483
    return v1

    .line 485
    :cond_0
    const-string v3, "com.tencent.mm"

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 486
    .local v3, "installedWechat":Z
    const-string v4, "com.eg.android.AlipayGphone"

    invoke-static {p0, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 487
    .local v4, "installedAlipay":Z
    const-string v5, "net.one97.paytm"

    invoke-static {p0, v5}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 488
    .local v5, "installedPaytm":Z
    if-nez v4, :cond_2

    if-nez v3, :cond_2

    if-eqz v5, :cond_1

    goto :goto_0

    .line 492
    :cond_1
    return v2

    .line 489
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "op_quickpay_show"

    invoke-static {v2, v6, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 490
    .local v1, "ret":Z
    return v1
.end method

.method private checkFingerPrint()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/oneplus/settings/quickpay/QuickPaySettings;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 160
    .local v1, "fingerprintCount":I
    if-lez v1, :cond_0

    .line 161
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    goto :goto_0

    .line 163
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    .line 165
    :goto_0
    return-void
.end method

.method private getLongPressHomeActionIndexByValue(I)I
    .locals 3
    .param p1, "value"    # I

    .line 141
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 143
    return v1

    .line 141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static gotoQuickPaySettingsPage(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 502
    const/4 v0, 0x0

    .line 504
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oneplus.action.QUICKPAY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 505
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    goto :goto_0

    .line 506
    :catch_0
    move-exception v1

    .line 507
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "QuickPaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method private initHomeActionName()V
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsSettings;->checkGMS(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionValue:[Ljava/lang/String;

    .line 138
    :goto_0
    return-void
.end method

.method private initPayWayData()V
    .locals 5

    .line 293
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 294
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 295
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 296
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v1, "com.tencent.mm"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_wecaht_qrcode:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    .line 305
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_wecaht_scanning:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_wecaht_qrcode:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    .line 308
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_wecaht_scanning:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    .line 310
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v3, "com.eg.android.AlipayGphone"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_alipay_qrcode:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    .line 319
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_alipay_scanning:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    goto :goto_1

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_alipay_qrcode:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    .line 322
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_alipay_scanning:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    .line 324
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v3, "net.one97.paytm"

    invoke-static {v0, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    sget-object v2, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysKey:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    sget-object v2, Lcom/oneplus/settings/quickpay/QuickPaySettings;->sPayWaysValue:[I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_paytm:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    goto :goto_2

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_paytm:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/location/RadioButtonPreference;->setVisible(Z)V

    .line 333
    :goto_2
    return-void
.end method

.method private initPreference()V
    .locals 2

    .line 175
    const v0, 0x7f16008b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->addPreferencesFromResource(I)V

    .line 177
    const-string v0, "key_switch_lockscreen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    .line 178
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 179
    const-string v0, "key_switch_unlockscreen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    .line 180
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f120b19

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 186
    const-string v0, "key_switch_unlockscreen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)Z

    .line 192
    :cond_0
    const-string v0, "key_quickpay_uninstall_app_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_uninstall_app_category:Landroid/support/v7/preference/PreferenceCategory;

    .line 193
    const-string v0, "key_quickpay_select_default_way_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    .line 194
    const-string v0, "key_quickpay_instructions"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    .line 195
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->setViewOnClick(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;)V

    .line 196
    const-string v0, "preference_divider_line2"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->preference_divider_line2:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    .line 198
    const-string v0, "key_quickpay_way_wecaht_qrcode"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_wecaht_qrcode:Lcom/android/settings/location/RadioButtonPreference;

    .line 199
    const-string v0, "key_quickpay_way_wecaht_scanning"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_wecaht_scanning:Lcom/android/settings/location/RadioButtonPreference;

    .line 200
    const-string v0, "key_quickpay_way_alipay_qrcode"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_alipay_qrcode:Lcom/android/settings/location/RadioButtonPreference;

    .line 201
    const-string v0, "key_quickpay_way_alipay_scanning"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_alipay_scanning:Lcom/android/settings/location/RadioButtonPreference;

    .line 202
    const-string v0, "key_quickpay_way_paytm"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_way_paytm:Lcom/android/settings/location/RadioButtonPreference;

    .line 204
    return-void
.end method

.method private refreshQuickPayEnableUI(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 336
    const-string v0, "preference_divider_line2"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)Z

    .line 337
    if-nez p1, :cond_0

    .line 338
    const-string v0, "key_quickpay_select_default_way_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)Z

    .line 339
    const-string v0, "key_quickpay_uninstall_app_category"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 342
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 343
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->preference_divider_line2:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_uninstall_app_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 348
    :goto_0
    return-void
.end method

.method private showConfirmChangeHomeAction(ZI)V
    .locals 6
    .param p1, "state"    # Z
    .param p2, "longPressHomeActionIndex"    # I

    .line 397
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    .line 398
    const-string v0, "QuickPaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "longPressHomeActionIndex is out of max length.longPressHomeActionIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHomeKeyActionName:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 402
    .local v0, "longPressHomeActionName":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const v3, 0x7f120c19

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 404
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const v3, 0x7f120cd0

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings$1;-><init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 412
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const v3, 0x7f120ccf

    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/settings/quickpay/QuickPaySettings$2;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings$2;-><init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 418
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 419
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 420
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 421
    return-void
.end method

.method private updateLockHomeAction(Z)V
    .locals 4
    .param p1, "state"    # Z

    .line 438
    move v0, p1

    .line 439
    .local v0, "value":I
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_quickpay_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 440
    .local v1, "ret":Z
    const/4 v2, 0x0

    .line 441
    .local v2, "enable":Z
    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 442
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

    .line 447
    :cond_2
    move v2, p1

    .line 449
    :goto_2
    invoke-direct {p0, v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    .line 450
    return-void
.end method

.method private updatePreferenceState()V
    .locals 11

    .line 207
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initPayWayData()V

    .line 208
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    .line 209
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quickpay_default_way"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 210
    .local v0, "defaultQuickPayWay":I
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "key_home_long_press_action"

    iget v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    invoke-static {v1, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 212
    .local v1, "longPressHomeAction":I
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "op_fingerprint_long_press_action"

    iget v6, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    invoke-static {v4, v5, v6, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 214
    .local v4, "longPressFingerprintAction":I
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 215
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 216
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lez v5, :cond_3

    .line 218
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_uninstall_app_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 220
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 221
    const/4 v5, 0x0

    .line 222
    .local v5, "isChecked":Z
    move v7, v5

    move v5, v3

    .local v5, "i":I
    .local v7, "isChecked":Z
    :goto_0
    iget-object v8, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysNameList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 226
    iget-object v8, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/location/RadioButtonPreference;

    .line 228
    .local v8, "p":Lcom/android/settings/location/RadioButtonPreference;
    iget-object v9, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysValueList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v0, v9, :cond_0

    .line 229
    invoke-virtual {v8, v6}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 230
    const/4 v7, 0x1

    .line 232
    :cond_0
    invoke-virtual {v8, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 233
    iget-object v9, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v8    # "p":Lcom/android/settings/location/RadioButtonPreference;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 236
    .end local v5    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    if-nez v7, :cond_2

    .line 237
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mAllPayWaysPreference:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, v6}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 238
    if-ne v0, v2, :cond_2

    .line 239
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

    .line 242
    .end local v7    # "isChecked":Z
    :cond_2
    goto :goto_1

    .line 244
    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_select_default_way_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 246
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_uninstall_app_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v6}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 248
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "op_quickpay_enable"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 249
    .local v2, "quickPayState":I
    if-ne v2, v6, :cond_5

    .line 250
    iget-boolean v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    if-nez v5, :cond_4

    .line 251
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "op_quickpay_enable"

    invoke-static {v5, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 254
    const/4 v2, 0x0

    goto :goto_2

    .line 256
    :cond_4
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    .line 259
    :cond_5
    iget-object v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v5, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 262
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

    .line 264
    .local v5, "onScreenNavKeysEnabled":Z
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

    .line 266
    .local v7, "forceHomeEnabled":Z
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

    .line 267
    .local v8, "solidHomeButtonEnabled":Z
    :goto_6
    const/4 v9, 0x0

    .line 268
    .local v9, "enable":Z
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v10, :cond_e

    sget-object v10, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v10}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 269
    const/16 v10, 0xb

    if-ne v1, v10, :cond_a

    if-eqz v8, :cond_a

    .line 270
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 272
    :cond_a
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 273
    if-nez v8, :cond_b

    .line 274
    iget-object v10, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v10, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 277
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

    .line 279
    :cond_e
    sget-object v10, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v10}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 286
    if-ne v2, v6, :cond_f

    move v3, v6

    nop

    :cond_f
    move v9, v3

    .line 288
    :cond_10
    invoke-direct {p0, v9}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    .line 290
    return-void
.end method

.method private updateUnLockFingerprintLongpressAction(Z)V
    .locals 4
    .param p1, "state"    # Z

    .line 424
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :cond_0
    move v1, v0

    .line 425
    .local v1, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_fingerprint_long_press_action"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 426
    .local v2, "ret":Z
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

    .line 427
    .local v0, "enable":Z
    :goto_2
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    .line 428
    return-void
.end method

.method private updateUnLockHomeAction(Z)V
    .locals 4
    .param p1, "state"    # Z

    .line 431
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :cond_0
    move v1, v0

    .line 432
    .local v1, "value":I
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_home_long_press_action"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 433
    .local v2, "ret":Z
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

    .line 434
    .local v0, "enable":Z
    :goto_2
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    .line 435
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 513
    const/16 v0, 0x270f

    return v0
.end method

.method public gotoFingerprintEnrollIntroduction(I)V
    .locals 3
    .param p1, "requstCode"    # I

    .line 453
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 454
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    invoke-virtual {p0, v0, p1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 456
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 127
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initHomeActionName()V

    .line 128
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .line 460
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->checkFingerPrint()V

    .line 463
    iget-boolean v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    if-eqz v1, :cond_1

    .line 464
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_quickpay_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 465
    .local v0, "ret":Z
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->refreshQuickPayEnableUI(Z)V

    .line 466
    .end local v0    # "ret":Z
    nop

    .line 472
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 473
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 107
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysName:[Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initHomeActionName()V

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;-><init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    .line 120
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->initPreference()V

    .line 121
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->stopAnim()V

    .line 170
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 172
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 369
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_lockscreen:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    .line 370
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 371
    .local v0, "state":Z
    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mHasFingerprint:Z

    if-nez v3, :cond_0

    .line 372
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoFingerprintEnrollIntroduction(I)V

    .line 373
    return v1

    .line 375
    :cond_0
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateLockHomeAction(Z)V

    .line 376
    return v2

    .line 377
    .end local v0    # "state":Z
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->switch_unlockscreen:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    .line 378
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 379
    .restart local v0    # "state":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_home_long_press_action"

    iget v5, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mDefaultLongPressOnHomeBehavior:I

    invoke-static {v3, v4, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 380
    .local v3, "longPressHomeAction":I
    invoke-direct {p0, v3}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->getLongPressHomeActionIndexByValue(I)I

    move-result v4

    .line 381
    .local v4, "index":I
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 382
    invoke-direct {p0, v0, v4}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->showConfirmChangeHomeAction(ZI)V

    .line 383
    return v1

    .line 385
    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateUnLockHomeAction(Z)V

    .line 386
    return v2

    .line 388
    .end local v0    # "state":Z
    .end local v3    # "longPressHomeAction":I
    .end local v4    # "index":I
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mFingerprintLongpressQuickpay:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_4

    .line 389
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 390
    .restart local v0    # "state":Z
    invoke-direct {p0, v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updateUnLockFingerprintLongpressAction(Z)V

    .line 391
    return v2

    .line 393
    .end local v0    # "state":Z
    :cond_4
    return v1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 352
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 354
    iget-object v3, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mPayWaysKeyList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
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

    .line 356
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

    .line 357
    .local v4, "p":Lcom/android/settings/location/RadioButtonPreference;
    invoke-virtual {v4, v1}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 358
    .end local v4    # "p":Lcom/android/settings/location/RadioButtonPreference;
    goto :goto_1

    .line 359
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/settings/location/RadioButtonPreference;

    .line 360
    .local v1, "rbp":Lcom/android/settings/location/RadioButtonPreference;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/settings/location/RadioButtonPreference;->setChecked(Z)V

    .line 361
    return v3

    .line 353
    .end local v1    # "rbp":Lcom/android/settings/location/RadioButtonPreference;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public onPreferenceViewClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 518
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->quickpay_instructions:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->playOrStopAnim()V

    .line 519
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 151
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 152
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->checkFingerPrint()V

    .line 153
    invoke-direct {p0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->updatePreferenceState()V

    .line 154
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mQuickPayAppsAddOrRemovedReceiver:Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    return-void
.end method
