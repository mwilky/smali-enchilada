.class public Lcom/oneplus/settings/OPButtonsAndGesturesSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
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

.field private static final KEY_CAMERA_DOUBLE_TAP_POWER_GESTURE:Ljava/lang/String; = "camera_double_tap_power_gesture"

.field private static final KEY_QUICK_TURN_ON_VOICE_ASSISTANT:Ljava/lang/String; = "quick_turn_on_voice_assistant"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "OPOthersSettings"


# instance fields
.field private mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mFingerprintGestureLongpressCamera:Landroid/support/v14/preference/SwitchPreference;

.field private mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

.field private mQuickTurnOnVoiceAssistant:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    new-instance v0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    .line 233
    new-instance v0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$2;

    invoke-direct {v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 95
    const v0, 0x112002c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isFingerprintLongpressCameraShotEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 130
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
    .param p0, "context"    # Landroid/content/Context;

    .line 126
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

    .line 100
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

    .line 102
    .local v0, "inEmergencyCall":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 103
    const-string v3, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->removePreference(Ljava/lang/String;)Z

    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 108
    :goto_1
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_3

    .line 109
    nop

    .line 110
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "camera_double_tap_power_gesture_disabled"

    .line 109
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 111
    .local v3, "value":I
    iget-object v4, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-nez v3, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 113
    .end local v3    # "value":I
    :cond_3
    iget-object v3, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mQuickTurnOnVoiceAssistant:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_5

    .line 114
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "quick_turn_on_voice_assistant"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 115
    .restart local v3    # "value":I
    iget-object v4, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mQuickTurnOnVoiceAssistant:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 117
    .end local v3    # "value":I
    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_6

    .line 118
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->isFingerprintLongpressCameraShotEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 120
    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_7

    .line 121
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->isSystemUINavigationEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 123
    :cond_7
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 183
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f160074

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->addPreferencesFromResource(I)V

    .line 64
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "camera_double_tap_power_gesture"

    .line 67
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 68
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 70
    :cond_0
    const-string v0, "camera_double_tap_power_gesture"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->removePreference(Ljava/lang/String;)Z

    .line 72
    :goto_0
    const-string v0, "quick_turn_on_voice_assistant"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mQuickTurnOnVoiceAssistant:Landroid/support/v14/preference/SwitchPreference;

    .line 73
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mQuickTurnOnVoiceAssistant:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mQuickTurnOnVoiceAssistant:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 77
    const-string v0, "op_fingerprint_long_press_camera_shot"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroid/support/v14/preference/SwitchPreference;

    .line 78
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    const-string v0, "op_fingerprint_gesture_swipe_down_up"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGesturePullNotificationBar()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    goto :goto_1

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 87
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGesturePullNotificationBar()Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 92
    :cond_2
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 178
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 179
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "state":Z
    instance-of v1, p2, Ljava/lang/Boolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 143
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 144
    :cond_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 145
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

    .line 147
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mCameraDoubleTapPowerGesturePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_4

    .line 148
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 149
    .local v1, "value":Z
    nop

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "camera_double_tap_power_gesture_disabled"

    .line 151
    if-eqz v1, :cond_3

    goto :goto_2

    .line 152
    :cond_3
    nop

    .line 150
    move v2, v3

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 156
    return v3

    .line 157
    .end local v1    # "value":Z
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mQuickTurnOnVoiceAssistant:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_5

    .line 158
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 159
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "quick_turn_on_voice_assistant"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    return v3

    .line 161
    .end local v1    # "value":Z
    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_6

    .line 162
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 163
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "op_fingerprint_long_press_camera_shot"

    .line 164
    nop

    .line 163
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    return v3

    .line 166
    .end local v1    # "value":Z
    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_7

    .line 167
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 168
    .restart local v1    # "value":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "system_navigation_keys_enabled"

    .line 169
    nop

    .line 168
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    return v3

    .line 172
    .end local v1    # "value":Z
    :cond_7
    return v2
.end method

.method public onResume()V
    .locals 0

    .line 135
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 136
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->loadPreferenceScreen()V

    .line 137
    return-void
.end method
