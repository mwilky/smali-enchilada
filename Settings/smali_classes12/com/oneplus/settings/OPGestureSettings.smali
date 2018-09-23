.class public Lcom/oneplus/settings/OPGestureSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPGestureSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;
    }
.end annotation


# static fields
.field private static final ANTI_MISOPERATION_SCREEN_TOUCH:Ljava/lang/String; = "anti_misoperation_of_the_screen_touch_enable"

.field private static BLACK_SCREEN_GESTURES:Ljava/lang/String; = null

.field private static final BLACK_SCREEN_SETTINGS_KEY:Ljava/lang/String; = "black_screen_setting_key"

.field private static final DOUBLE_CLICK_LIGHT_SCREEN_KEY:Ljava/lang/String; = "double_click_light_screen_key"

.field private static final DRAW_O_START_CAMERA_KEY:Ljava/lang/String; = "draw_o_start_camera_key"

.field private static final FINGERPRINT_GESTURE_CONTROL_KEY:Ljava/lang/String; = "fingerprint_gesture_control"

.field private static final FINGERPRINT_GESTURE_SWIPE_DOWN_UP_KEY:Ljava/lang/String; = "op_fingerprint_gesture_swipe_down_up"

.field private static final FINGERPRINT_LONG_PRESS_CAMERA_SHOT_KEY:Ljava/lang/String; = "op_fingerprint_long_press_camera_shot"

.field private static final FLASH_LIGHT_KEY:Ljava/lang/String; = "open_light_device_key"

.field private static GESTURE_TO_ANSWER_CALL_KEY:Ljava/lang/String; = null

.field private static MOTION_SENSOR_CONTROL_KEY:Ljava/lang/String; = null

.field private static final MUSCI_CONTROL_KEY:Ljava/lang/String; = "music_control_key"

.field private static final MUSIC_CONTROL_NEXT_KEY:Ljava/lang/String; = "music_control_next_key"

.field private static final MUSIC_CONTROL_PAUSE_KEY:Ljava/lang/String; = "music_control_pause_key"

.field private static final MUSIC_CONTROL_PREV_KEY:Ljava/lang/String; = "music_control_prev_key"

.field private static final MUSIC_CONTROL_START_KEY:Ljava/lang/String; = "music_control_start_key"

.field private static MUSIC_ROOT_KEY:Ljava/lang/String; = null

.field private static final ROTATION_SILENT_KEY:Ljava/lang/String; = "rotation_silent_enable"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static STARTUP_ROOT_KEY:Ljava/lang/String; = null

.field private static final THREE_SCEENTSHOTS_KEY:Ljava/lang/String; = "three_screenshots_enable"


# instance fields
.field private isDoubleClickEnable:I

.field private isFlashlightEnable:I

.field private isMusicControlEnable:I

.field private isMusicNextEnable:I

.field private isMusicPauseEnable:I

.field private isMusicPlayEnable:I

.field private isMusicPrevEnable:I

.field private isStartUpCameraEnable:I

.field private isSupportThreeScrrenShot:Z

.field private mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

.field private mBlackSettingValues:I

.field private mCameraPerference:Landroid/support/v14/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mDoubleLightScreenPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mDrawMStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

.field private mDrawOStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

.field private mDrawSStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

.field private mDrawVStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

.field private mDrawWStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

.field private mFingerprintGestureCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mFingerprintGestureLongpressCamera:Landroid/support/v14/preference/SwitchPreference;

.field private mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

.field private mFlashLightPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mGestureToAnswerCall:Landroid/support/v7/preference/Preference;

.field private mMotionSensorControl:Landroid/support/v7/preference/PreferenceCategory;

.field private mMusicControlPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mMusicNextPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mMusicPausePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mMusicPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mMusicPrefererce:Landroid/support/v7/preference/PreferenceCategory;

.field private mMusicPrevPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mMusicStartPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mRotationSilent:Landroid/support/v14/preference/SwitchPreference;

.field private mStartUpPreferece:Landroid/support/v7/preference/PreferenceCategory;

.field private mThreeSwipeScreenShot:Landroid/support/v14/preference/SwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private root:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "quick_startup"

    sput-object v0, Lcom/oneplus/settings/OPGestureSettings;->STARTUP_ROOT_KEY:Ljava/lang/String;

    const-string v0, "music_control"

    sput-object v0, Lcom/oneplus/settings/OPGestureSettings;->MUSIC_ROOT_KEY:Ljava/lang/String;

    const-string v0, "black_screen_gestures"

    sput-object v0, Lcom/oneplus/settings/OPGestureSettings;->BLACK_SCREEN_GESTURES:Ljava/lang/String;

    const-string v0, "motion_sensor__control"

    sput-object v0, Lcom/oneplus/settings/OPGestureSettings;->MOTION_SENSOR_CONTROL_KEY:Ljava/lang/String;

    const-string v0, "gesture_to_answer_call"

    sput-object v0, Lcom/oneplus/settings/OPGestureSettings;->GESTURE_TO_ANSWER_CALL_KEY:Ljava/lang/String;

    new-instance v0, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/OPGestureSettings$OPGestureSearchIndexProvider;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isSupportThreeScrrenShot:Z

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/OPGestureSettings;->getNonVisibleKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getConfig()V
    .locals 4

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isFlashlightEnable:I

    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicPlayEnable:I

    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicPauseEnable:I

    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicNextEnable:I

    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicPrevEnable:I

    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicPlayEnable:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicControlEnable:I

    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isStartUpCameraEnable:I

    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isDoubleClickEnable:I

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "double_click_light_screen_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "music_control_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "rotation_silent_enable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "three_screenshots_enable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "anti_misoperation_of_the_screen_touch_enable"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "fingerprint_gesture_control"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private initBlackScreenView()V
    .locals 4

    sget-object v0, Lcom/oneplus/settings/OPGestureSettings;->MOTION_SENSOR_CONTROL_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMotionSensorControl:Landroid/support/v7/preference/PreferenceCategory;

    sget-object v0, Lcom/oneplus/settings/OPGestureSettings;->GESTURE_TO_ANSWER_CALL_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mGestureToAnswerCall:Landroid/support/v7/preference/Preference;

    sget-object v0, Lcom/oneplus/settings/OPGestureSettings;->STARTUP_ROOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mStartUpPreferece:Landroid/support/v7/preference/PreferenceCategory;

    sget-object v0, Lcom/oneplus/settings/OPGestureSettings;->MUSIC_ROOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    sget-object v0, Lcom/oneplus/settings/OPGestureSettings;->BLACK_SCREEN_GESTURES:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    const-string v0, "draw_o_start_camera_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mCameraPerference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mCameraPerference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mCameraPerference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    const-string v0, "double_click_light_screen_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDoubleLightScreenPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDoubleLightScreenPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "music_control_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicControlPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicControlPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "open_light_device_key"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mFlashLightPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mFlashLightPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mFlashLightPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->getConfig()V

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mCameraPerference:Landroid/support/v14/preference/SwitchPreference;

    iget v3, p0, Lcom/oneplus/settings/OPGestureSettings;->isStartUpCameraEnable:I

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDoubleLightScreenPreference:Landroid/support/v14/preference/SwitchPreference;

    iget v3, p0, Lcom/oneplus/settings/OPGestureSettings;->isDoubleClickEnable:I

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicControlPreference:Landroid/support/v14/preference/SwitchPreference;

    iget v3, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicControlEnable:I

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mFlashLightPreference:Landroid/support/v14/preference/SwitchPreference;

    iget v3, p0, Lcom/oneplus/settings/OPGestureSettings;->isFlashlightEnable:I

    if-nez v3, :cond_6

    move v1, v2

    nop

    :cond_6
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_7
    return-void
.end method

.method private initFingerprintGesture()V
    .locals 2

    const-string v0, "fingerprint_gesture_control"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mFingerprintGestureCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mFingerprintGestureCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preference_divider_line_1"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method private initGestureSummary()V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawOStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v2, "oneplus_draw_o_start_app"

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPGesturePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawVStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v2, "oneplus_draw_v_start_app"

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPGesturePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawSStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v2, "oneplus_draw_s_start_app"

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPGesturePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawMStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v2, "oneplus_draw_m_start_app"

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPGesturePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawWStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v2, "oneplus_draw_w_start_app"

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPGesturePreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initGestureViews()V
    .locals 2

    const-string v0, "oneplus_draw_o_start_app"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGesturePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawOStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v0, "oneplus_draw_v_start_app"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGesturePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawVStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v0, "oneplus_draw_s_start_app"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGesturePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawSStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v0, "oneplus_draw_m_start_app"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGesturePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawMStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v0, "oneplus_draw_w_start_app"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGesturePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawWStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawOStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawVStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawSStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawMStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawWStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private initSensorView()V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->root:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.threeScreenshot.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isSupportThreeScrrenShot:Z

    const-string v0, "three_screenshots_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "rotation_silent_enable"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mRotationSilent:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mRotationSilent:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_sensor_three_finger"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroid/support/v14/preference/SwitchPreference;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mRotationSilent:Landroid/support/v14/preference/SwitchPreference;

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_acc_sensor_rotate_silent"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/oneplus/settings/OPGestureSettings;->isSupportThreeScrrenShot:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->root:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    return-void
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

.method private toggleMusicController(Z)V
    .locals 5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    iget-object v3, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    iget-object v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    iget-object v3, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    iget-object v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_0
    return-void
.end method


# virtual methods
.method public checkIfNeedPasswordToPowerOn()Z
    .locals 3

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

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
    nop

    move v1, v2

    :goto_0
    return v1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mUm:Landroid/os/UserManager;

    const v0, 0x7f160082

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->initFingerprintGesture()V

    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->initBlackScreenView()V

    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->initGestureViews()V

    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->initSensorView()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "op_fingerprint_gesture_swipe_down_up"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "system_navigation_keys_enabled"

    nop

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const-string v2, "op_fingerprint_long_press_camera_shot"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_fingerprint_long_press_camera_shot"

    nop

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "draw_o_start_camera_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mCameraPerference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v2, 0x6

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "double_click_light_screen_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDoubleLightScreenPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v2, 0x7

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_1
    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "music_control_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicControlPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPGestureSettings;->toggleMusicController(Z)V

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "music_control_next_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicNextPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_2
    return v1

    :cond_6
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "music_control_prev_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicPrevPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_3
    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "open_light_device_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mFlashLightPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_4
    return v1

    :cond_a
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "music_control_start_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicStartPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_5
    return v1

    :cond_c
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "music_control_pause_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicPausePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_6
    return v1

    :cond_e
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "three_screenshots_enable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_acc_sensor_three_finger"

    iget-object v3, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "op_three_key_screenshots_enabled"

    iget-object v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mUm:Landroid/os/UserManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mUm:Landroid/os/UserManager;

    const/16 v2, 0x3e7

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "oem_acc_sensor_three_finger"

    iget-object v4, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-static {v0, v3, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_f
    return v1

    :cond_10
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "rotation_silent_enable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_acc_sensor_rotate_silent"

    iget-object v3, p0, Lcom/oneplus/settings/OPGestureSettings;->mRotationSilent:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    :cond_11
    return v2
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->initGestureSummary()V

    return-void
.end method
