.class public Lcom/oneplus/settings/OPButtonsAndGesturesSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPButtonsAndGesturesSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPButtonsAndGesturesSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final FINGERPRINT_GESTURE_SWIPE_DOWN_UP_KEY:Ljava/lang/String; = "op_fingerprint_gesture_swipe_down_up"

.field private static final FINGERPRINT_LONG_PRESS_CAMERA_SHOT_KEY:Ljava/lang/String; = "op_fingerprint_long_press_camera_shot"

.field private static final KEY_ALERTSLIDER_SETTINGS_SOC_TRI_STATE:Ljava/lang/String; = "op_alertslider_settings_soc_tri_state"

.field private static final KEY_BUTTONS_AND_FULLSCREEN_GESTURES:Ljava/lang/String; = "op_buttons_and_fullscreen_gestures"

.field private static final KEY_BUTTONS_SETTINGS:Ljava/lang/String; = "buttons_settings"

.field private static final KEY_CAMERA_DOUBLE_TAP_POWER_GESTURE:Ljava/lang/String; = "camera_double_tap_power_gesture"

.field private static final ONEPLUS_EMERGENCY_TAP_POWER_GESTURE_FIVE_TIMES:I = 0x5

.field private static final ONEPLUS_EMERGENCY_TAP_POWER_GESTURE_NO_TIMES:I = -0x1

.field private static final ONEPLUS_EMERGENCY_TAP_POWER_GESTURE_THREE_TIMES:I = 0x3

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "OPOthersSettings"


# instance fields
.field private mAlertsliderSettingsPreference:Landroid/support/v7/preference/Preference;

.field private mButtonsAndFullscreenGesturesPreference:Landroid/support/v7/preference/Preference;

.field private mButtonsSettingsPreference:Landroid/support/v7/preference/Preference;

.field private mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mFingerprintGestureLongpressCamera:Landroid/support/v14/preference/SwitchPreference;

.field private mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    new-instance v0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$2;

    invoke-direct {v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->isSupportHardwareKeys()Z

    move-result v0

    return v0
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x112002c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isFingerprintLongpressCameraShotEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_fingerprint_long_press_camera_shot"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
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

.method private static isSystemUINavigationEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "system_navigation_keys_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private loadPreferenceScreen()V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_affordance_needed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oneplus_emergency_tap_power_gesture_times"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x5

    :cond_2
    :goto_1
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    const v5, 0x7f120afb

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    const v5, 0x7f120386

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    :goto_2
    iget-object v4, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_5

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "camera_double_tap_power_gesture_disabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {v5, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->isFingerprintLongpressCameraShotEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->isSystemUINavigationEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_7
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;

    invoke-direct {v1, p1}, Lcom/oneplus/settings/gestures/OPAssistantAPPSwitchPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "OPOthersSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160075

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->removePreference(Ljava/lang/String;)Z

    :goto_0
    const-string v0, "op_fingerprint_long_press_camera_shot"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "op_fingerprint_gesture_swipe_down_up"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGesturePullNotificationBar()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGesturePullNotificationBar()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    :cond_2
    :goto_1
    const-string v0, "op_alertslider_settings_soc_tri_state"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mAlertsliderSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mAlertsliderSettingsPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mAlertsliderSettingsPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f1200ee

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    :cond_3
    const-string v0, "op_buttons_and_fullscreen_gestures"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mButtonsAndFullscreenGesturesPreference:Landroid/support/v7/preference/Preference;

    const-string v0, "buttons_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mButtonsSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-static {}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->isSupportHardwareKeys()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mButtonsAndFullscreenGesturesPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mButtonsSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    :goto_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p2, Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

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

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_4

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "camera_double_tap_power_gesture_disabled"

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    nop

    move v2, v3

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_5

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "op_fingerprint_long_press_camera_shot"

    nop

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_6

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "system_navigation_keys_enabled"

    nop

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    :cond_6
    return v2
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->loadPreferenceScreen()V

    return-void
.end method
