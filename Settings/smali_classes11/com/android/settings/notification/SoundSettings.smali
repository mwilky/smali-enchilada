.class public Lcom/android/settings/notification/SoundSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SoundSettings.java"

# interfaces
.implements Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;,
        Lcom/android/settings/notification/SoundSettings$SummaryProvider;,
        Lcom/android/settings/notification/SoundSettings$Receiver;,
        Lcom/android/settings/notification/SoundSettings$H;,
        Lcom/android/settings/notification/SoundSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_ON:I = 0x0

.field private static final KEY_ALARM_RINGTONE:Ljava/lang/String; = "alarm_ringtone"

.field private static final KEY_ALARM_VOLUME:Ljava/lang/String; = "alarm_volume"

.field private static final KEY_CELL_BROADCAST_SETTINGS:Ljava/lang/String; = "cell_broadcast_settings"

.field private static final KEY_CHARGING_SOUNDS:Ljava/lang/String; = "charging_sounds"

.field private static final KEY_DIAL_PAD_TONES:Ljava/lang/String; = "dial_pad_tones"

.field private static final KEY_DO_NOT_DISTURB_SETTINGS:Ljava/lang/String; = "do_not_disturb_settings"

.field private static final KEY_EARPHONE:Ljava/lang/String; = "earphone"

.field private static final KEY_EARPHONE_MODE:Ljava/lang/String; = "earphone_mode"

.field private static final KEY_INCOMING_CALL_VIBRATE:Ljava/lang/String; = "incoming_call_vibrate_mode"

.field private static final KEY_MEDIA_VOLUME:Ljava/lang/String; = "media_volume"

.field private static final KEY_MMS_RINGTONE:Ljava/lang/String; = "message_ringtone"

.field private static final KEY_NOTIFICATION_RINGTONE:Ljava/lang/String; = "notification_ringtone"

.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"

.field private static final KEY_OP_SOUND_DIRECT:Ljava/lang/String; = "op_sound_direct"

.field private static final KEY_PHONE_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final KEY_SCREENSHOT_SOUNDS:Ljava/lang/String; = "screenshot_sounds"

.field private static final KEY_SCREEN_LOCKING_SOUNDS:Ljava/lang/String; = "screen_locking_sounds"

.field private static final KEY_SOUND:Ljava/lang/String; = "sound"

.field private static final KEY_SOUND_DIRECT:Ljava/lang/String; = "sound_direct"

.field private static final KEY_SYSTEM:Ljava/lang/String; = "other_sounds_and_vibrations_category"

.field private static final KEY_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final KEY_VIBRATE_INTENSITY:Ljava/lang/String; = "vibrate_intensity"

.field private static final KEY_VIBRATE_ON_TOUCH:Ljava/lang/String; = "vibrate_on_touch"

.field private static final KEY_VIBRATE_ON_TOUCH_FOR_VIBRATE:Ljava/lang/String; = "vibrate_on_touch_for_vibrate"

.field private static final KEY_VIBRATE_WHEN_RINGING:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final KEY_VIBRATE_WHEN_RINGING_FOR_VIBRATE:Ljava/lang/String; = "vibrate_when_ringing_for_vibrate"

.field private static final KEY_VOLUME_KEYS_ADJUST:Ljava/lang/String; = "volume_keys_adjust"

.field private static final KEY_VOLUME_KEYS_ADJUST_VALUE:Ljava/lang/String; = "volume_keys_adjust_value"

.field private static final KEY_ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field private static final PREFS:[Lcom/android/settings/notification/SettingPref;

.field private static final PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SCREENSHOT_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH:Lcom/android/settings/notification/SettingPref;

.field private static final PREF_VIBRATE_ON_TOUCH_FOR_VIBRATE:Lcom/android/settings/notification/SettingPref;

.field private static final REQUEST_CODE:I = 0xc8

.field private static final RESTRICTED_KEYS:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final SAMPLE_CUTOFF:I = 0x7d0

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final SELECTED_PREFERENCE_KEY:Ljava/lang/String; = "selected_preference"

.field static final STOP_SAMPLE:I = 0x3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String; = "SoundSettings"

.field private static final THREE_KEY_SILENT_VALUE:I = 0x1

.field public static final TYPE_MMS_NOTIFICATION:I = 0x8

.field private static isSupportAptxHdSupport:Z

.field private static isSupportLinearMotor:Z


# instance fields
.field private mAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mEarPhoneCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mEarphoneModePreference:Landroid/support/v7/preference/Preference;

.field private final mHandler:Lcom/android/settings/notification/SoundSettings$H;

.field private mIncomingCallVibrateModePreference:Landroid/support/v7/preference/Preference;

.field private final mLookupRingtoneNames:Ljava/lang/Runnable;

.field private mMediaVolumePreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

.field private mOPSoundDirectPreference:Landroid/support/v7/preference/Preference;

.field private mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

.field private mRequestPreference:Lcom/android/settings/RingtonePreference;

.field private mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field private mRingerMode:I

.field private final mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsRingtonePreference:Landroid/support/v7/preference/Preference;

.field private mSuppressor:Landroid/content/ComponentName;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

.field private mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

.field private mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

.field private final mVibrateWhenRingingRunnable:Ljava/lang/Runnable;

.field private mVibrateWhenRingingValue:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceCapable:Z

.field final mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mVolumeKeysAdjust:Landroid/support/v7/preference/ListPreference;

.field private final mVolumePrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/notification/VolumeSeekBarPreference;",
            ">;"
        }
    .end annotation
.end field

.field private sVibratePatternrhythm:[[J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 171
    const-string v0, "media_volume"

    const-string v1, "alarm_volume"

    const-string v2, "ring_volume"

    const-string v3, "notification_volume"

    const-string v4, "zen_mode"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    .line 199
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string v3, "screen_locking_sounds"

    const-string v4, "lockscreen_sounds_enabled"

    const/4 v7, 0x0

    new-array v6, v7, [I

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 202
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string v10, "charging_sounds"

    const-string v11, "charging_sounds_enabled"

    new-array v13, v7, [I

    const/4 v9, 0x1

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 204
    new-instance v0, Lcom/android/settings/notification/SettingPref;

    const-string v3, "screenshot_sounds"

    const-string v4, "oem_screenshot_sound_enable"

    new-array v6, v7, [I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->PREF_SCREENSHOT_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 209
    new-instance v0, Lcom/android/settings/notification/SoundSettings$1;

    const-string v10, "dial_pad_tones"

    const-string v11, "dtmf_tone"

    new-array v13, v7, [I

    const/4 v9, 0x2

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/notification/SoundSettings$1;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    .line 216
    new-instance v0, Lcom/android/settings/notification/SoundSettings$2;

    const-string v3, "vibrate_on_touch"

    const-string v4, "haptic_feedback_enabled"

    new-array v6, v7, [I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/SoundSettings$2;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings/notification/SettingPref;

    .line 225
    new-instance v0, Lcom/android/settings/notification/SoundSettings$3;

    const-string v10, "vibrate_on_touch_for_vibrate"

    const-string v11, "haptic_feedback_enabled"

    new-array v13, v7, [I

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/notification/SoundSettings$3;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->PREF_VIBRATE_ON_TOUCH_FOR_VIBRATE:Lcom/android/settings/notification/SettingPref;

    .line 234
    new-instance v0, Lcom/android/settings/notification/SoundSettings$4;

    const-string v3, "touch_sounds"

    const-string v4, "sound_effects_enabled"

    new-array v6, v7, [I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/SoundSettings$4;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    .line 247
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/notification/SettingPref;

    sget-object v1, Lcom/android/settings/notification/SoundSettings;->PREF_DIAL_PAD_TONES:Lcom/android/settings/notification/SettingPref;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/settings/notification/SoundSettings;->PREF_SCREEN_LOCKING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/notification/SoundSettings;->PREF_SCREENSHOT_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/notification/SoundSettings;->PREF_CHARGING_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/notification/SoundSettings;->PREF_TOUCH_SOUNDS:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/notification/SoundSettings;->PREF_VIBRATE_ON_TOUCH:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/notification/SoundSettings;->PREF_VIBRATE_ON_TOUCH_FOR_VIBRATE:Lcom/android/settings/notification/SettingPref;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    .line 928
    new-instance v0, Lcom/android/settings/notification/SoundSettings$11;

    invoke-direct {v0}, Lcom/android/settings/notification/SoundSettings$11;-><init>()V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 1280
    new-instance v0, Lcom/android/settings/notification/SoundSettings$12;

    invoke-direct {v0}, Lcom/android/settings/notification/SoundSettings$12;-><init>()V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 102
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    .line 158
    new-instance v0, Lcom/android/settings/notification/SoundSettings$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/SoundSettings$Receiver;-><init>(Lcom/android/settings/notification/SoundSettings;Lcom/android/settings/notification/SoundSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

    .line 159
    new-instance v0, Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    .line 160
    const/4 v0, 0x5

    new-array v2, v0, [[J

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const/16 v0, 0xd

    new-array v4, v0, [J

    fill-array-data v4, :array_2

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const/16 v4, 0x11

    new-array v4, v4, [J

    fill-array-data v4, :array_3

    const/4 v5, 0x3

    aput-object v4, v2, v5

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    const/4 v4, 0x4

    aput-object v0, v2, v4

    iput-object v2, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    .line 167
    new-instance v0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    .line 169
    new-instance v0, Lcom/android/settings/notification/SoundSettings$H;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/SoundSettings$H;-><init>(Lcom/android/settings/notification/SoundSettings;Lcom/android/settings/notification/SoundSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHandler:Lcom/android/settings/notification/SoundSettings$H;

    .line 181
    iput v3, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingValue:I

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    .line 445
    new-instance v0, Lcom/android/settings/notification/SoundSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundSettings$7;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 485
    new-instance v0, Lcom/android/settings/notification/SoundSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundSettings$8;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    .line 710
    new-instance v0, Lcom/android/settings/notification/-$$Lambda$SoundSettings$3WFktXqTAuUwKBOCajSDKQ9QhQc;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$SoundSettings$3WFktXqTAuUwKBOCajSDKQ9QhQc;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingRunnable:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 8
        -0x2
        0x0
        0x3e8
        0x3e8
        0x3e8
    .end array-data

    :array_1
    .array-data 8
        -0x2
        0x0
        0x1f4
        0xfa
        0xa
        0x3e8
        0x1f4
        0xfa
        0xa
    .end array-data

    :array_2
    .array-data 8
        -0x2
        0x0
        0x12c
        0x190
        0x12c
        0x190
        0x12c
        0x3e8
        0x12c
        0x190
        0x12c
        0x190
        0x12c
    .end array-data

    :array_3
    .array-data 8
        -0x2
        0x0
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
        0x3e8
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
    .end array-data

    :array_4
    .array-data 8
        -0x2
        0x0
        0x50
        0xc8
        0x258
        0x96
        0xa
        0x3e8
        0x50
        0xc8
        0x258
        0x96
        0xa
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSmsRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/notification/SoundSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;
    .param p1, "x1"    # I

    .line 102
    iput p1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingValue:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/SoundSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/SoundSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/notification/SoundSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateVibrateWhenRinging()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateVibrateWhenRingingForVibrate()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingOrNotificationPreference()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateEffectsSuppressor()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 102
    invoke-static {p0}, Lcom/android/settings/notification/SoundSettings;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/settings/notification/SoundSettings;
    .param p2, "x2"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 102
    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/SoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100()Z
    .locals 1

    .line 102
    sget-boolean v0, Lcom/android/settings/notification/SoundSettings;->isSupportLinearMotor:Z

    return v0
.end method

.method static synthetic access$2102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 102
    sput-boolean p0, Lcom/android/settings/notification/SoundSettings;->isSupportLinearMotor:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;

    .line 102
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/SoundSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/SoundSettings;Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/SoundSettings;->updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/SoundSettings;)Lcom/android/settings/notification/SoundSettings$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHandler:Lcom/android/settings/notification/SoundSettings$H;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/SoundSettings;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SoundSettings;

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragment"    # Lcom/android/settings/notification/SoundSettings;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/notification/SoundSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1214
    move-object/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1215
    .local v3, "controllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v4, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;

    invoke-direct {v4, v0}, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1219
    .local v4, "doNotDisturbControllers":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/core/AbstractPreferenceController;>;"
    new-instance v5, Lcom/android/settings/notification/ZenModePreferenceController;

    const-string v6, "zen_mode"

    invoke-direct {v5, v0, v2, v6}, Lcom/android/settings/notification/ZenModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1220
    new-instance v5, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v6, "do_not_disturb"

    invoke-direct {v5, v0, v6}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v5, v4}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v5

    .line 1220
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1222
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1227
    new-instance v5, Lcom/android/settings/notification/PhoneRingtonePreferenceController;

    invoke-direct {v5, v0}, Lcom/android/settings/notification/PhoneRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1228
    new-instance v5, Lcom/android/settings/notification/AlarmRingtonePreferenceController;

    invoke-direct {v5, v0}, Lcom/android/settings/notification/AlarmRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    new-instance v5, Lcom/android/settings/notification/NotificationRingtonePreferenceController;

    invoke-direct {v5, v0}, Lcom/android/settings/notification/NotificationRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    new-instance v5, Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/settings/notification/WorkSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    new-instance v5, Lcom/android/settings/notification/DialPadTonePreferenceController;

    invoke-direct {v5, v0, v1, v2}, Lcom/android/settings/notification/DialPadTonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 1237
    .local v5, "dialPadTonePreferenceController":Lcom/android/settings/notification/DialPadTonePreferenceController;
    new-instance v6, Lcom/android/settings/notification/ScreenLockSoundPreferenceController;

    invoke-direct {v6, v0, v1, v2}, Lcom/android/settings/notification/ScreenLockSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 1239
    .local v6, "screenLockSoundPreferenceController":Lcom/android/settings/notification/ScreenLockSoundPreferenceController;
    new-instance v7, Lcom/android/settings/notification/ChargingSoundPreferenceController;

    invoke-direct {v7, v0, v1, v2}, Lcom/android/settings/notification/ChargingSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 1241
    .local v7, "chargingSoundPreferenceController":Lcom/android/settings/notification/ChargingSoundPreferenceController;
    new-instance v8, Lcom/android/settings/notification/DockingSoundPreferenceController;

    invoke-direct {v8, v0, v1, v2}, Lcom/android/settings/notification/DockingSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 1243
    .local v8, "dockingSoundPreferenceController":Lcom/android/settings/notification/DockingSoundPreferenceController;
    new-instance v9, Lcom/android/settings/notification/TouchSoundPreferenceController;

    invoke-direct {v9, v0, v1, v2}, Lcom/android/settings/notification/TouchSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 1245
    .local v9, "touchSoundPreferenceController":Lcom/android/settings/notification/TouchSoundPreferenceController;
    new-instance v10, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;

    invoke-direct {v10, v0, v1, v2}, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 1247
    .local v10, "vibrateOnTouchPreferenceController":Lcom/android/settings/notification/VibrateOnTouchPreferenceController;
    new-instance v11, Lcom/android/settings/notification/DockAudioMediaPreferenceController;

    invoke-direct {v11, v0, v1, v2}, Lcom/android/settings/notification/DockAudioMediaPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 1249
    .local v11, "dockAudioMediaPreferenceController":Lcom/android/settings/notification/DockAudioMediaPreferenceController;
    new-instance v12, Lcom/android/settings/notification/BootSoundPreferenceController;

    invoke-direct {v12, v0}, Lcom/android/settings/notification/BootSoundPreferenceController;-><init>(Landroid/content/Context;)V

    .line 1251
    .local v12, "bootSoundPreferenceController":Lcom/android/settings/notification/BootSoundPreferenceController;
    new-instance v13, Lcom/android/settings/notification/EmergencyTonePreferenceController;

    invoke-direct {v13, v0, v1, v2}, Lcom/android/settings/notification/EmergencyTonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 1254
    .local v13, "emergencyTonePreferenceController":Lcom/android/settings/notification/EmergencyTonePreferenceController;
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1257
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1258
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1259
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1260
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1263
    new-instance v14, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string v15, "other_sounds_and_vibrations_category"

    invoke-direct {v14, v0, v15}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v15, 0x9

    new-array v15, v15, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    const/16 v16, 0x1

    aput-object v6, v15, v16

    const/16 v16, 0x2

    aput-object v7, v15, v16

    const/16 v16, 0x3

    aput-object v8, v15, v16

    const/16 v16, 0x4

    aput-object v9, v15, v16

    const/16 v16, 0x5

    aput-object v10, v15, v16

    const/16 v16, 0x6

    aput-object v11, v15, v16

    const/16 v16, 0x7

    aput-object v12, v15, v16

    const/16 v16, 0x8

    aput-object v13, v15, v16

    .line 1265
    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 1264
    invoke-virtual {v14, v15}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object v14

    .line 1263
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    return-object v3
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .line 662
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 664
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 665
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 666
    invoke-virtual {v1, v0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 667
    .local v2, "seq":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 668
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v4, :cond_0

    .line 670
    return-object v3

    .line 676
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v2    # "seq":Ljava/lang/CharSequence;
    .end local v3    # "str":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 674
    :catch_0
    move-exception v1

    .line 675
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "SoundSettings"

    const-string v3, "Error loading suppressor caption"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 677
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 259
    const-string v0, "vibrator"

    .line 260
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 261
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private initRingtones()V
    .locals 2

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 469
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mPhoneRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 473
    :cond_0
    nop

    .line 474
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "notification_ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mNotificationRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "alarm_ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mAlarmRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "message_ringtone"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSmsRingtonePreference:Landroid/support/v7/preference/Preference;

    .line 479
    return-void
.end method

.method private initVibrateWhenRinging()V
    .locals 2

    .line 682
    nop

    .line 683
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "vibrate_when_ringing"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    .line 684
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 685
    const-string v0, "SoundSettings"

    const-string v1, "Preference not found: vibrate_when_ringing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-void

    .line 688
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 689
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 690
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    .line 691
    return-void

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setPersistent(Z)V

    .line 694
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateVibrateWhenRinging()V

    .line 695
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/SoundSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/SoundSettings$9;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 707
    return-void
.end method

.method private initVibrateWhenRingingForVibrate()V
    .locals 2

    .line 724
    nop

    .line 725
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "vibrate_when_ringing_for_vibrate"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    .line 726
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    .line 727
    return-void

    .line 729
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-nez v0, :cond_1

    .line 730
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    .line 732
    return-void

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setPersistent(Z)V

    .line 735
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateVibrateWhenRingingForVibrate()V

    .line 736
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    new-instance v1, Lcom/android/settings/notification/SoundSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/SoundSettings$10;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 745
    return-void
.end method

.method private initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "stream"    # I
    .param p3, "muteIcon"    # I

    .line 456
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 457
    .local v0, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 458
    invoke-virtual {v0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 459
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {v0, p3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    .line 461
    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/notification/SoundSettings;)V
    .locals 3

    .line 711
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_when_ringing"

    iget v2, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingValue:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 713
    return-void
.end method

.method private lookupRingtoneNames()V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mLookupRingtoneNames:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 483
    return-void
.end method

.method private updateEffectsSuppressor()V
    .locals 6

    .line 649
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 650
    .local v0, "suppressor":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 651
    :cond_0
    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSuppressor:Landroid/content/ComponentName;

    .line 652
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v1, :cond_2

    .line 653
    if-eqz v0, :cond_1

    .line 654
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const v2, 0x10403e6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 655
    invoke-direct {p0, v0}, Lcom/android/settings/notification/SoundSettings;->getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 654
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 655
    :cond_1
    const/4 v1, 0x0

    .line 656
    .local v1, "text":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    .line 658
    .end local v1    # "text":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingOrNotificationPreference()V

    .line 659
    return-void
.end method

.method private updateRingOrNotificationPreference()V
    .locals 7

    .line 583
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v0

    const v1, 0x7f080345

    const v2, 0x7f080346

    const v3, 0x7f080347

    if-nez v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "oem_vibrate_under_silent"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 586
    .local v0, "value":I
    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 587
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->isZenMuted()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_0

    .line 590
    :cond_0
    nop

    .line 587
    move v1, v2

    goto :goto_0

    .line 592
    :cond_1
    nop

    .line 587
    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    .line 593
    .end local v0    # "value":I
    goto :goto_2

    .line 595
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "three_Key_mode"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 596
    .restart local v0    # "value":I
    const-string v4, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "three key mode change value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 600
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    goto :goto_1

    .line 602
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 605
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    goto :goto_1

    .line 607
    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 608
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    .end local v0    # "value":I
    :cond_5
    :goto_1
    goto :goto_2

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 616
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_2
    return-void
.end method

.method private updateRingerMode()V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    .line 643
    .local v0, "ringerMode":I
    iget v1, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    if-ne v1, v0, :cond_0

    return-void

    .line 644
    :cond_0
    iput v0, p0, Lcom/android/settings/notification/SoundSettings;->mRingerMode:I

    .line 645
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingOrNotificationPreference()V

    .line 646
    return-void
.end method

.method private updateRingtoneName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .line 522
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 523
    const-string v1, "SoundSettings"

    const-string v2, "Unable to update ringtone name, no context provided"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-object v0

    .line 528
    :cond_0
    const/4 v1, 0x1

    if-ne v1, p2, :cond_1

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/SoundSettings;->getDefaultPhoneRingUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "ringtoneUri":Landroid/net/Uri;
    goto :goto_0

    .line 531
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    :cond_1
    invoke-static {p1, p2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 534
    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    :goto_0
    const v2, 0x10405c1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 536
    .local v8, "summary":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 537
    const v0, 0x10405c0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 572
    .end local v8    # "summary":Ljava/lang/String;
    .local v0, "summary":Ljava/lang/String;
    move-object v8, v0

    goto/16 :goto_3

    .line 539
    .end local v0    # "summary":Ljava/lang/String;
    .restart local v8    # "summary":Ljava/lang/String;
    :cond_2
    nop

    .line 541
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "media"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 543
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "internal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 544
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "title"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 547
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "_display_name"

    const-string v4, "title"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    goto :goto_1

    .line 550
    :cond_4
    const-string v2, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 551
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "_display_name"

    const-string v4, "title"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 554
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 555
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 556
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 557
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 558
    const-string v2, "title"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v2

    .line 567
    :cond_6
    if-eqz v0, :cond_8

    .line 568
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 567
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_7

    .line 568
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 564
    :catch_0
    move-exception v2

    .line 567
    if-eqz v0, :cond_8

    goto :goto_2

    .line 562
    :catch_1
    move-exception v2

    .line 567
    if-eqz v0, :cond_8

    goto :goto_2

    .line 572
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_8
    :goto_3
    return-object v8
.end method

.method private updateVibratePreferenceDescription(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 1035
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1036
    .local v0, "incomingCallVibrateModePreference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1039
    .local v1, "entries":[Ljava/lang/String;
    aget-object v2, v1, p2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1041
    .end local v1    # "entries":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateVibrateWhenRinging()V
    .locals 4

    .line 717
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRinging:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 720
    return-void
.end method

.method private updateVibrateWhenRingingForVibrate()V
    .locals 4

    .line 748
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    if-nez v0, :cond_0

    return-void

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingForVibrate:Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 751
    return-void
.end method

.method private updateVolumeKeysAdjustSummary(I)V
    .locals 4
    .param p1, "value"    # I

    .line 1028
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeKeysAdjust:Landroid/support/v7/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1030
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0300be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, "entries":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeKeysAdjust:Landroid/support/v7/preference/ListPreference;

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1032
    return-void
.end method


# virtual methods
.method public OnDialogListCancelClick()V
    .locals 1

    .line 1134
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 1137
    :cond_0
    return-void
.end method

.method public OnDialogListConfirmClick(I)V
    .locals 2
    .param p1, "index"    # I

    .line 1125
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_vibrate_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1127
    const-string v0, "incoming_call_vibrate_mode"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/notification/SoundSettings;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 1128
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 1131
    :cond_0
    return-void
.end method

.method public OnDialogListItemClick(I)V
    .locals 6
    .param p1, "index"    # I

    .line 1109
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_3

    .line 1110
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_vibrate_intensity"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1112
    .local v0, "intensityvalue":I
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 1113
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1114
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v3, p1

    const-wide/16 v4, -0x1

    aput-wide v4, v3, v1

    goto :goto_0

    .line 1115
    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1116
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v3, p1

    const-wide/16 v4, -0x2

    aput-wide v4, v3, v1

    goto :goto_0

    .line 1117
    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 1118
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v3, p1

    const-wide/16 v4, -0x3

    aput-wide v4, v3, v1

    .line 1120
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v3, v3, p1

    invoke-virtual {v1, v3, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 1122
    .end local v0    # "intensityvalue":I
    :cond_3
    return-void
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
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

    .line 1142
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/settings/notification/SoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method enableWorkSync()V
    .locals 1

    .line 1358
    const-class v0, Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/WorkSoundPreferenceController;

    .line 1359
    .local v0, "workSoundController":Lcom/android/settings/notification/WorkSoundPreferenceController;
    if-eqz v0, :cond_0

    .line 1360
    invoke-virtual {v0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->enableWorkSync()V

    .line 1362
    :cond_0
    return-void
.end method

.method public getDefaultPhoneRingUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 418
    invoke-static {p1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->isRingSimSwitchOn(Landroid/content/Context;)Z

    move-result v0

    .line 420
    .local v0, "isRingSimSwitchOn":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getSim1Enable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getSim2Enable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 425
    invoke-static {p1, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 426
    .local v1, "ringtoneUri":Landroid/net/Uri;
    return-object v1

    .line 429
    .end local v1    # "ringtoneUri":Landroid/net/Uri;
    :cond_0
    invoke-static {p1, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 430
    .restart local v1    # "ringtoneUri":Landroid/net/Uri;
    return-object v1
.end method

.method public getHelpResource()I
    .locals 1

    .line 941
    const v0, 0x7f120729

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 1100
    const-string v0, "SoundSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 266
    const/16 v0, 0x150

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 1105
    const v0, 0x7f1600bc

    return v0
.end method

.method public getSim1Enable()Z
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public getSim2Enable()Z
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public getThreeKeyStatus(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, "threeKeyStatus":I
    if-nez p1, :cond_0

    .line 625
    const-string v1, "SoundSettings"

    const-string v2, "getThreeKeyStatus error, context is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return v0

    .line 629
    :cond_0
    const-string v1, "threekey"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/three_key/ThreeKeyManager;

    .line 630
    .local v1, "threeKeyManager":Lcom/oneplus/three_key/ThreeKeyManager;
    if-eqz v1, :cond_1

    .line 632
    :try_start_0
    invoke-virtual {v1}, Lcom/oneplus/three_key/ThreeKeyManager;->getThreeKeyStatus()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 636
    goto :goto_0

    .line 633
    :catch_0
    move-exception v2

    .line 634
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SoundSettings"

    const-string v4, "Exception occurs, Three Key Service may not ready"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 635
    return v0

    .line 638
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method public isZenMuted()Z
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->getThreeKeyStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1147
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    .line 1149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 1151
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 1164
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 1166
    const-class v0, Lcom/android/settings/notification/AlarmVolumePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/AlarmVolumePreferenceController;

    .line 1167
    .local v0, "alarm":Lcom/android/settings/notification/AlarmVolumePreferenceController;
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AlarmVolumePreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 1168
    const-class v1, Lcom/android/settings/notification/MediaVolumePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/MediaVolumePreferenceController;

    .line 1169
    .local v1, "media":Lcom/android/settings/notification/MediaVolumePreferenceController;
    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/MediaVolumePreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 1170
    const-class v2, Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/RingVolumePreferenceController;

    .line 1171
    .local v2, "ring":Lcom/android/settings/notification/RingVolumePreferenceController;
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/RingVolumePreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 1172
    const-class v3, Lcom/oneplus/settings/notification/SoundVolumePreferenceCategoryController;

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/notification/SoundVolumePreferenceCategoryController;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 1173
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1172
    invoke-virtual {v3, v4}, Lcom/oneplus/settings/notification/SoundVolumePreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    .line 1174
    const-class v3, Lcom/android/settings/notification/NotificationVolumePreferenceController;

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/NotificationVolumePreferenceController;

    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 1176
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 271
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 272
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 273
    const-string v1, "selected_preference"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "selectedPreference":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/RingtonePreference;

    iput-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 279
    .end local v1    # "selectedPreference":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mUserManager:Landroid/os/UserManager;

    .line 282
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 286
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 288
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    .line 289
    const-string v1, "volume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVoiceCapable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.linear.motor.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/notification/SoundSettings;->isSupportLinearMotor:Z

    .line 293
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    .line 299
    :cond_1
    const-string v0, "sound"

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 300
    .local v0, "sound":Landroid/support/v7/preference/PreferenceCategory;
    const-string v1, "volume_keys_adjust"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeKeysAdjust:Landroid/support/v7/preference/ListPreference;

    .line 301
    const-string v1, "incoming_call_vibrate_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mIncomingCallVibrateModePreference:Landroid/support/v7/preference/Preference;

    .line 302
    const-string v1, "op_sound_direct"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mOPSoundDirectPreference:Landroid/support/v7/preference/Preference;

    .line 303
    const-string v1, "earphone_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mEarphoneModePreference:Landroid/support/v7/preference/Preference;

    .line 304
    const-string v1, "earphone"

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    .line 305
    .local v1, "earphoneCategory":Landroid/support/v7/preference/PreferenceCategory;
    const-string v2, "other_sounds_and_vibrations_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceCategory;

    .line 306
    .local v2, "system":Landroid/support/v7/preference/PreferenceCategory;
    const-string v3, "vibrate"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceCategory;

    .line 307
    .local v3, "mVibrateCategory":Landroid/support/v7/preference/PreferenceCategory;
    const-string v4, "vibrate_when_ringing"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

    .line 309
    const-string v4, "media_volume"

    const/4 v5, 0x3

    const v6, 0x7f080344

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mMediaVolumePreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 314
    const-string v4, "alarm_volume"

    const/4 v5, 0x4

    const v6, 0x7f080342

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 319
    iget-boolean v4, p0, Lcom/android/settings/notification/SoundSettings;->mVoiceCapable:Z

    if-eqz v4, :cond_2

    .line 320
    const-string v4, "ring_volume"

    const/4 v5, 0x2

    const v6, 0x7f080346

    .line 321
    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 328
    const-string v4, "notification_volume"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 331
    :cond_2
    const-string v4, "notification_volume"

    const/4 v5, 0x5

    const v6, 0x7f080345

    .line 332
    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/notification/SoundSettings;->initVolumePreference(Ljava/lang/String;II)Lcom/android/settings/notification/VolumeSeekBarPreference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mRingOrNotificationPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 336
    const-string v4, "ring_volume"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 340
    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeKeysAdjust:Landroid/support/v7/preference/ListPreference;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 341
    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeKeysAdjust:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 343
    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeKeysAdjust:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    .line 347
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "incoming_call_vibrate_mode"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 349
    .local v4, "value":I
    const-string v5, "incoming_call_vibrate_mode"

    invoke-direct {p0, v5, v4}, Lcom/android/settings/notification/SoundSettings;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 351
    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mOPSoundDirectPreference:Landroid/support/v7/preference/Preference;

    new-instance v6, Lcom/android/settings/notification/SoundSettings$5;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/SoundSettings$5;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    .line 352
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 365
    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mEarphoneModePreference:Landroid/support/v7/preference/Preference;

    new-instance v6, Lcom/android/settings/notification/SoundSettings$6;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/SoundSettings$6;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    .line 366
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.oneplus.dirac.simplemanager"

    invoke-static {v5, v6}, Lcom/oneplus/settings/utils/OPUtils;->isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 383
    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mOPSoundDirectPreference:Landroid/support/v7/preference/Preference;

    if-eqz v5, :cond_4

    .line 384
    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mOPSoundDirectPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 387
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 388
    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

    if-eqz v5, :cond_5

    .line 389
    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 391
    :cond_5
    const-string v5, "screen_locking_sounds"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 394
    :cond_6
    sget-boolean v5, Lcom/android/settings/notification/SoundSettings;->isSupportLinearMotor:Z

    if-eqz v5, :cond_8

    .line 395
    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

    if-eqz v5, :cond_7

    .line 396
    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mVibrateWhenRingingPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 398
    :cond_7
    const-string v5, "vibrate_on_touch"

    invoke-virtual {p0, v5}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 400
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 402
    :goto_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 403
    if-eqz v3, :cond_9

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 407
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->initRingtones()V

    .line 408
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->initVibrateWhenRinging()V

    .line 410
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->initVibrateWhenRingingForVibrate()V

    .line 412
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingerMode()V

    .line 413
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateEffectsSuppressor()V

    .line 414
    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 415
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 965
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    .line 966
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mSettingsObserver:Lcom/android/settings/notification/SoundSettings$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SoundSettings$SettingsObserver;->register(Z)V

    .line 967
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 946
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    .line 947
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 948
    .local v1, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    invoke-virtual {v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityPause()V

    .line 949
    .end local v1    # "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    goto :goto_0

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 951
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SoundSettings$Receiver;->register(Z)V

    .line 952
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .line 1071
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "key":Ljava/lang/String;
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1073
    .local v1, "value":I
    const-string v2, "incoming_call_vibrate_mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_3

    .line 1074
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "incoming_call_vibrate_mode"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1076
    const-string v2, "incoming_call_vibrate_mode"

    invoke-direct {p0, v2, v1}, Lcom/android/settings/notification/SoundSettings;->updateVibratePreferenceDescription(Ljava/lang/String;I)V

    .line 1077
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "incoming_call_vibrate_intensity"

    const/4 v5, -0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1079
    .local v2, "intensityvalue":I
    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v4}, Landroid/os/Vibrator;->cancel()V

    .line 1080
    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 1081
    iget-object v6, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v6, v6, v1

    const-wide/16 v7, -0x1

    aput-wide v7, v6, v4

    goto :goto_0

    .line 1082
    :cond_0
    if-ne v2, v3, :cond_1

    .line 1083
    iget-object v6, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v6, v6, v1

    const-wide/16 v7, -0x2

    aput-wide v7, v6, v4

    goto :goto_0

    .line 1084
    :cond_1
    const/4 v6, 0x2

    if-ne v2, v6, :cond_2

    .line 1085
    iget-object v6, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v6, v6, v1

    const-wide/16 v7, -0x3

    aput-wide v7, v6, v4

    .line 1087
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mVibrator:Landroid/os/Vibrator;

    iget-object v6, p0, Lcom/android/settings/notification/SoundSettings;->sVibratePatternrhythm:[[J

    aget-object v6, v6, v1

    invoke-virtual {v4, v6, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 1089
    .end local v2    # "intensityvalue":I
    goto :goto_1

    :cond_3
    const-string v2, "volume_keys_adjust"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1090
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1091
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "volume_keys_adjust_value"

    const/4 v5, -0x2

    .line 1090
    invoke-static {v2, v4, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1093
    invoke-direct {p0, v1}, Lcom/android/settings/notification/SoundSettings;->updateVolumeKeysAdjustSummary(I)V

    .line 1095
    :cond_4
    :goto_1
    return v3
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 1045
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, "key":Ljava/lang/String;
    const-string v1, "incoming_call_vibrate_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f030063

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1048
    .local v1, "entriesValue":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1049
    .local v3, "entries":[Ljava/lang/String;
    new-instance v4, Lcom/oneplus/settings/ui/OPListDialog;

    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v4, v5, v6, v1, v3}, Lcom/oneplus/settings/ui/OPListDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    .line 1050
    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v4, p0}, Lcom/oneplus/settings/ui/OPListDialog;->setOnDialogListItemClickListener(Lcom/oneplus/settings/ui/OPListDialog$OnDialogListItemClickListener;)V

    .line 1051
    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    const-string v5, "incoming_call_vibrate_mode"

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/ui/OPListDialog;->setVibrateKey(Ljava/lang/String;)V

    .line 1052
    iget-object v4, p0, Lcom/android/settings/notification/SoundSettings;->mOPListDialog:Lcom/oneplus/settings/ui/OPListDialog;

    invoke-virtual {v4}, Lcom/oneplus/settings/ui/OPListDialog;->show()V

    .line 1053
    return v2

    .line 1055
    .end local v1    # "entriesValue":[Ljava/lang/String;
    .end local v3    # "entries":[Ljava/lang/String;
    :cond_0
    instance-of v1, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v1, :cond_2

    .line 1056
    move-object v1, p1

    check-cast v1, Lcom/android/settings/RingtonePreference;

    iput-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 1057
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 1058
    invoke-virtual {v3}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1057
    invoke-virtual {v1, v3}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 1059
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1060
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/16 v3, 0xc8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 1062
    invoke-virtual {v5}, Lcom/android/settings/RingtonePreference;->getUserId()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 1060
    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/settings/notification/SoundSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1064
    :cond_1
    return v2

    .line 1066
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 9

    .line 980
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 981
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->lookupRingtoneNames()V

    .line 982
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mReceiver:Lcom/android/settings/notification/SoundSettings$Receiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SoundSettings$Receiver;->register(Z)V

    .line 983
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateRingOrNotificationPreference()V

    .line 984
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateEffectsSuppressor()V

    .line 985
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumePrefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 986
    .local v1, "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    invoke-virtual {v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityResume()V

    .line 987
    .end local v1    # "volumePref":Lcom/android/settings/notification/VolumeSeekBarPreference;
    goto :goto_0

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string v1, "no_adjust_volume"

    .line 990
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 989
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 991
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mContext:Landroid/content/Context;

    const-string v2, "no_adjust_volume"

    .line 992
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 991
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    .line 993
    .local v1, "hasBaseRestriction":Z
    sget-object v2, Lcom/android/settings/notification/SoundSettings;->RESTRICTED_KEYS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 994
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    .line 995
    .local v7, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v7, :cond_1

    .line 996
    xor-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 998
    :cond_1
    instance-of v8, v7, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v8, :cond_2

    if-nez v1, :cond_2

    .line 999
    move-object v8, v7

    check-cast v8, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v8, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 993
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "pref":Landroid/support/v7/preference/Preference;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1002
    :cond_3
    const-string v2, "cell_broadcast_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/RestrictedPreference;

    .line 1004
    .local v2, "broadcastSettingsPref":Lcom/android/settingslib/RestrictedPreference;
    if-eqz v2, :cond_4

    .line 1005
    const-string v3, "no_config_cell_broadcasts"

    invoke-virtual {v2, v3}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 1009
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/notification/SoundSettings;->updateVibrateWhenRinging()V

    .line 1010
    sget-object v3, Lcom/android/settings/notification/SoundSettings;->PREFS:[Lcom/android/settings/notification/SettingPref;

    array-length v5, v3

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_6

    aget-object v7, v3, v6

    .line 1011
    .local v7, "pref":Lcom/android/settings/notification/SettingPref;
    if-eqz v7, :cond_5

    .line 1012
    invoke-virtual {v7, p0}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;

    .line 1010
    .end local v7    # "pref":Lcom/android/settings/notification/SettingPref;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1017
    :cond_6
    iget-object v3, p0, Lcom/android/settings/notification/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 1018
    .local v3, "volume":I
    iget-object v5, p0, Lcom/android/settings/notification/SoundSettings;->mMediaVolumePreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {v5, v3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setSeekbar(I)V

    .line 1021
    nop

    .line 1022
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "volume_keys_adjust_value"

    const/4 v7, -0x2

    .line 1021
    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 1024
    .local v4, "keysAdustValue":I
    invoke-direct {p0, v4}, Lcom/android/settings/notification/SoundSettings;->updateVolumeKeysAdjustSummary(I)V

    .line 1025
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 1155
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1156
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 1157
    const-string v0, "selected_preference"

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 1158
    invoke-virtual {v1}, Lcom/android/settings/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1157
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 971
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 972
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 974
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 976
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 957
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 960
    :cond_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 961
    return-void
.end method
