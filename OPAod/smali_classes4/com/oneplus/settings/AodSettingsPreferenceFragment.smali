.class public Lcom/oneplus/settings/AodSettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "AodSettingsPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DISPLAY_MODE:Ljava/lang/String; = "aod_mode"

.field private static final KEY_AUTO_WAKE_SCREEN:Ljava/lang/String; = "aod_auto_wake_screen"

.field public static final KEY_BLACK_SCREEN_GESTURE:Ljava/lang/String; = "oem_acc_blackscreen_gestrue_enable"

.field private static final KEY_CLOCK_STYLE:Ljava/lang/String; = "aod_clock_style"

.field private static final KEY_DISPLAY_MODE:Ljava/lang/String; = "aod_display_mode"

.field private static final KEY_DISPLAY_PERIOD:Ljava/lang/String; = "aod_display_period"

.field private static final KEY_DISPLAY_TEXT:Ljava/lang/String; = "aod_display_text"

.field private static final KEY_MAIN_SCREEN:Ljava/lang/String; = "main_screen"

.field private static final KEY_SHAKE_UP_PREFERENCE:Ljava/lang/String; = "aod_shake_up_switch"

.field private static final KEY_SHOW_CLOCK_SWITCH_PREFERENCE:Ljava/lang/String; = "aod_display_mode_switch"

.field private static final KEY_SINGLE_TAP_PREFERENCE:Ljava/lang/String; = "aod_single_tap_switch"


# instance fields
.field private final KEY_AOD_ENABLED:Ljava/lang/String;

.field private final KEY_NOTIFICATION_WAKE_ENABLED:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAodEnabled:Z

.field private mAutoWakeScreenPreference:Landroid/preference/SwitchPreference;

.field private mClockStyle:I

.field private mClockStylePreference:Landroid/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mDisplayMode:I

.field private mDisplayModePreference:Landroid/preference/ListPreference;

.field private mDisplayPeriodPreference:Landroid/preference/Preference;

.field private mDisplayTextPreference:Landroid/preference/Preference;

.field private mDozeEnalbe:Z

.field private mNotificationWakeEnabled:Z

.field private mRootPreference:Landroid/preference/PreferenceScreen;

.field private mShakeUpPreference:Landroid/preference/SwitchPreference;

.field private mSingleTapEnabled:Z

.field private mSingleTapSwitch:Landroid/preference/SwitchPreference;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const-string v0, "AodSettingsPreferenceFragment"

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v0, "prox_wake_enabled"

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->KEY_AOD_ENABLED:Ljava/lang/String;

    const-string v0, "notification_wake_enabled"

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->KEY_NOTIFICATION_WAKE_ENABLED:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStyle:I

    return-void
.end method

.method private setClockStyleSummary()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/AodChooseClockStyleActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStyle:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    const-string v1, "AOD"

    const-string v2, "Clock"

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setClockStyleSummary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStyle:I

    return-void
.end method

.method private setDisplayModeSummary()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_display_mode"

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayModeSummary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100141

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Landroid/preference/ListPreference;

    iget v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setDisplayPeriodSummary()V
    .locals 8

    new-instance v0, Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v2, "display_from"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/oneplus/settings/TextTime;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v3, "display_to"

    invoke-direct {v1, v2, v3}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_time_start"

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_time_end"

    iget v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100157

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100159

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDozeSettings()V
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDozeSettings: dozeEnalbed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", displayModeEnalbed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", autoWakeupEnalbed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mSingleTapEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "doze_enabled"

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "prox_wake_enabled"

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "notification_wake_enabled"

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_acc_blackscreen_gestrue_enable"

    iget v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    if-eqz v1, :cond_3

    or-int/lit16 v1, v0, 0x800

    goto :goto_2

    :cond_3
    const v1, 0xf7ff

    and-int/2addr v1, v0

    :goto_2
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_blackscreen_gestrue_enable"

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private updatePreference()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Landroid/preference/ListPreference;

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Landroid/preference/Preference;

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Landroid/preference/Preference;

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Landroid/preference/Preference;

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    goto :goto_4

    :cond_7
    :goto_3
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_8
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f140001

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "main_screen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Landroid/preference/PreferenceScreen;

    const-string v0, "aod_single_tap_switch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Landroid/preference/SwitchPreference;

    const-string v0, "aod_shake_up_switch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Landroid/preference/SwitchPreference;

    const-string v0, "aod_display_mode_switch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const-string v0, "aod_display_mode"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Landroid/preference/ListPreference;

    const-string v0, "aod_display_period"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Landroid/preference/Preference;

    const-string v0, "aod_clock_style"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Landroid/preference/Preference;

    const-string v0, "aod_display_text"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Landroid/preference/Preference;

    const-string v0, "aod_auto_wake_screen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Landroid/preference/SwitchPreference;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v2, 0x7f100144

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "doze_enabled"

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "prox_wake_enabled"

    iget v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v2, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v1, v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "notification_wake_enabled"

    iget v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v2, v4, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    iput v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v1, v2}, Lcom/oneplus/aod/Utils;->isSingleTapEnabled(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/oneplus/aod/Utils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/oneplus/aod/Utils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/oneplus/aod/Utils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_5

    :cond_8
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Landroid/preference/ListPreference;

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Landroid/preference/ListPreference;

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    :goto_6
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_7

    :cond_c
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    :goto_7
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Landroid/preference/Preference;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_e
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Landroid/preference/ListPreference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_f
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oneplus/settings/AodDisplayTextSettings;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    iget v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_10
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Landroid/preference/SwitchPreference;

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_11
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_display_mode_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "AOD"

    const-string v2, "AOD"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDozeSettings()V

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_display_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    const-string v0, "AOD"

    const-string v1, "When"

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_display_mode"

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->setDisplayModeSummary()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_auto_wake_screen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "AOD"

    const-string v2, "Notification"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDozeSettings()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_single_tap_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "AOD"

    const-string v2, "SingleTap "

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDozeSettings()V

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_shake_up_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "AOD"

    const-string v2, "ShakeUp"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDozeSettings()V

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    :cond_4
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_clock_style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/oneplus/settings/AodChooseClockStyleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_display_text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/oneplus/settings/AodDisplayTextSettings;->show(Landroid/app/Fragment;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_display_period"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/oneplus/settings/AodDisplayDurationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->setClockStyleSummary()V

    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->setDisplayModeSummary()V

    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->setDisplayPeriodSummary()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateDisplayText(Ljava/lang/String;)V
    .locals 3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AOD"

    const-string v1, "Sign"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "AOD"

    const-string v1, "Sign"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
