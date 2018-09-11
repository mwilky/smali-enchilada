.class public Lcom/oneplus/settings/others/OPToolsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPToolsSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/others/OPToolsSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final ANTI_MISOPERATION_SCREEN_TOUCH:Ljava/lang/String; = "anti_misoperation_of_the_screen_touch_enable"

.field private static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x66

.field private static final GOTO_APPLOCKER_PAGE_REQUEST:I = 0x68

.field private static final KEY_APP_LOCKER:Ljava/lang/String; = "oneplus_app_locker"

.field private static final KEY_ONEPLUS_LABORATORY_SETTINGS:Ljava/lang/String; = "oneplus_laboratory_settings"

.field private static final KEY_ONEPLUS_MULTI_APP:Ljava/lang/String; = "oneplus_multi_app"

.field private static final KEY_ONEPLUS_QUICK_PAY:Ljava/lang/String; = "oneplus_quick_pay"

.field private static final KEY_OP_MULTITASKING_CLEAN_WAY:Ljava/lang/String; = "op_multitasking_clean_way"

.field private static final KEY_QUICK_CLIPBOARD:Ljava/lang/String; = "quick_clipboard"

.field private static final KEY_SWITCH:Ljava/lang/String; = "switch"

.field private static final PUSH_SWITCH_ACTION:Ljava/lang/String; = "net.oneplus.push.action.SWITCH_CHANGED"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "OPOthersSettings"

.field private static final TIMER_SHUTDOWN_STARTUP_KEY:Ljava/lang/String; = "timer_shutdown_startup_settings"


# instance fields
.field private mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

.field private mAppLocker:Landroid/support/v7/preference/Preference;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mGotoAppLockerClick:Z

.field private mMultiAppPreference:Landroid/support/v7/preference/Preference;

.field private mOPMultitaskingCleanWayPreference:Landroid/support/v7/preference/Preference;

.field private mOneplusLaboratorySettings:Landroid/support/v7/preference/Preference;

.field private mQuickClipboardSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mQuickPayPreference:Landroid/support/v7/preference/Preference;

.field private mSwitchPreference:Landroid/support/v7/preference/Preference;

.field private mTimerShutdownPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 295
    new-instance v0, Lcom/oneplus/settings/others/OPToolsSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/others/OPToolsSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/others/OPToolsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 358
    new-instance v0, Lcom/oneplus/settings/others/OPToolsSettings$2;

    invoke-direct {v0}, Lcom/oneplus/settings/others/OPToolsSettings$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/others/OPToolsSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGotoAppLockerClick:Z

    return-void
.end method

.method private launchChooseOrConfirmLock(I)V
    .locals 8
    .param p1, "requestCode"    # I

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 193
    .local v1, "helper":Lcom/android/settings/password/ChooseLockSettingsHelper;
    nop

    .line 194
    const v2, 0x7f120d7f

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/others/OPToolsSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mChallenge:J

    .line 193
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    const-string v2, "com.android.settings"

    const-class v3, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v2, "minimum_quality"

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const-string v2, "hide_disabled_prefs"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 201
    const-string v2, "has_challenge"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    const-string v2, "challenge"

    iget-wide v3, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mChallenge:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 203
    const/16 v2, 0x66

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/settings/others/OPToolsSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 205
    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 5

    .line 123
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 125
    .local v0, "root":Landroid/support/v7/preference/PreferenceScreen;
    const-string v1, "oneplus_multi_app"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mMultiAppPreference:Landroid/support/v7/preference/Preference;

    .line 126
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mMultiAppPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 128
    const-string v1, "oneplus_app_locker"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAppLocker:Landroid/support/v7/preference/Preference;

    .line 129
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAppLocker:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 131
    const-string v1, "oneplus_quick_pay"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickPayPreference:Landroid/support/v7/preference/Preference;

    .line 132
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickPayPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f120b14

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickPayPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f120c18

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 137
    :goto_0
    const-string v1, "anti_misoperation_of_the_screen_touch_enable"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    .line 138
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_anti_misoperation_screen"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 142
    new-array v1, v3, [I

    const/16 v2, 0x48

    aput v2, v1, v4

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f120bfa

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 147
    :cond_2
    const-string v1, "timer_shutdown_startup_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    .line 148
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->checkIfNeedPasswordToPowerOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 150
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f120cc8

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 155
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 156
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mQuickPayPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 159
    :cond_5
    const-string v1, "oneplus_laboratory_settings"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusLaboratorySettings:Landroid/support/v7/preference/Preference;

    .line 160
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusLaboratorySettings:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 161
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 162
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mTimerShutdownPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 163
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAntiMisOperationTouch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 164
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mAppLocker:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 165
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mMultiAppPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 166
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusLaboratorySettings:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 170
    :cond_6
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isLaboratoryFeatureExist()Z

    move-result v1

    if-nez v1, :cond_7

    .line 171
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mOneplusLaboratorySettings:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 181
    :cond_7
    const-string v1, "switch"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/others/OPToolsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mSwitchPreference:Landroid/support/v7/preference/Preference;

    .line 182
    iget-object v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mSwitchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.oneplus.backuprestore"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 184
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mSwitchPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 186
    :cond_8
    return-void
.end method


# virtual methods
.method public checkIfNeedPasswordToPowerOn()Z
    .locals 3

    .line 291
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "require_password_to_decrypt"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 287
    const/16 v0, 0x270f

    return v0
.end method

.method public gotoAppLockerPage()V
    .locals 5

    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v0, v1

    .line 225
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$OPAppLockerActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "OPOthersSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 210
    iget-boolean v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGotoAppLockerClick:Z

    if-eqz v0, :cond_3

    .line 211
    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x68

    if-ne p1, v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->gotoAppLockerPage()V

    .line 215
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGotoAppLockerClick:Z

    .line 217
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v0, 0x7f160098

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/others/OPToolsSettings;->addPreferencesFromResource(I)V

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mContext:Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->updateView()V

    .line 108
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 120
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 267
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "anti_misoperation_of_the_screen_touch_enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 269
    .local v0, "enable":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_acc_anti_misoperation_screen"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    const/4 v1, 0x1

    return v1

    .line 282
    .end local v0    # "enable":Z
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 234
    const-string v0, "oneplus_multi_app"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 236
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v0, "intents":Landroid/content/Intent;
    const-string v2, "oneplus.intent.action.ONEPLUS_MULTI_APP_LIST_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0    # "intents":Landroid/content/Intent;
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 242
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return v1

    .line 243
    :cond_0
    const-string v0, "switch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.oneplus.backuprestore"

    const-string v3, "com.oneplus.backuprestore.activity.BootActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0}, Lcom/oneplus/settings/others/OPToolsSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 250
    :catch_1
    move-exception v0

    .line 251
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 253
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return v1

    .line 255
    :cond_1
    const-string v0, "oneplus_app_locker"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    const-string v0, "OPOthersSettings"

    const-string v2, "App -> Locker"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput-boolean v1, p0, Lcom/oneplus/settings/others/OPToolsSettings;->mGotoAppLockerClick:Z

    .line 258
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lcom/oneplus/settings/others/OPToolsSettings;->launchChooseOrConfirmLock(I)V

    .line 259
    return v1

    .line 262
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    .line 112
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 113
    return-void
.end method
