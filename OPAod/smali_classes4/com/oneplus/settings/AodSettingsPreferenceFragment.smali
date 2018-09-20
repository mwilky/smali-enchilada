.class public Lcom/oneplus/settings/AodSettingsPreferenceFragment;
.super Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;
.source "AodSettingsPreferenceFragment.java"

# interfaces
.implements Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;


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

.field private mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

.field private mClockStyle:I

.field private mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

.field private mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mDisplayMode:I

.field private mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

.field private mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

.field private mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

.field private mDozeEnalbe:Z

.field private mNotificationWakeEnabled:Z

.field private mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

.field private mShakeUpPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

.field private mSingleTapEnabled:Z

.field private mSingleTapSwitch:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

.field private mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;-><init>()V

    .line 39
    const-string v0, "AodSettingsPreferenceFragment"

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    .line 54
    const-string v0, "prox_wake_enabled"

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->KEY_AOD_ENABLED:Ljava/lang/String;

    .line 55
    const-string v0, "notification_wake_enabled"

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->KEY_NOTIFICATION_WAKE_ENABLED:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    .line 58
    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    .line 59
    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    .line 60
    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    .line 61
    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStyle:I

    .line 79
    return-void
.end method

.method private setClockStyleSummary()V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/AodChooseClockStyleActivity;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 314
    .local v0, "clockStyle":I
    iget v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStyle:I

    if-ne v1, v0, :cond_0

    .line 315
    return-void

    .line 317
    :cond_0
    const-string v1, "AOD"

    const-string v2, "Clock"

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setClockStyleSummary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-nez v0, :cond_1

    .line 320
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 321
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 322
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100043

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 323
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 324
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 325
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 326
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    :cond_4
    :goto_0
    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStyle:I

    .line 329
    return-void
.end method

.method private setDisplayModeSummary()V
    .locals 4

    .line 298
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_display_mode"

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    .line 299
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

    .line 301
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    if-eqz v0, :cond_1

    .line 302
    iget v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100141

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    iget v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setValue(Ljava/lang/String;)V

    .line 309
    :cond_1
    return-void
.end method

.method private setDisplayPeriodSummary()V
    .locals 8

    .line 332
    new-instance v0, Lcom/oneplus/settings/TextTime;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v2, "display_from"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    .local v0, "fromTime":Lcom/oneplus/settings/TextTime;
    new-instance v1, Lcom/oneplus/settings/TextTime;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v3, "display_to"

    invoke-direct {v1, v2, v3}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    .local v1, "toTime":Lcom/oneplus/settings/TextTime;
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_time_start"

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "from":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_time_end"

    iget v5, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "to":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {v1, v3}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v3

    .line 341
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

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

    .line 344
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

    .line 341
    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 347
    return-void
.end method

.method private updateDozeSettings()V
    .locals 5

    .line 350
    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    if-nez v0, :cond_2

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    goto :goto_1

    .line 351
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    .line 355
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDozeSettings: dozeEnalbed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", displayModeEnalbed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", autoWakeupEnalbed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSingleTapEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_enabled"

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDozeEnalbe:Z

    iget v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 360
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prox_wake_enabled"

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    iget v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 361
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_wake_enabled"

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    iget v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 363
    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getBlackGesutreValue()I

    move-result v0

    .line 368
    .local v0, "gestureValue":I
    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    if-eqz v1, :cond_3

    or-int/lit16 v1, v0, 0x800

    const v2, 0xff7f

    and-int/2addr v1, v2

    goto :goto_2

    :cond_3
    const v1, 0xf7ff

    and-int/2addr v1, v0

    .line 369
    .local v1, "mul":I
    :goto_2
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_acc_blackscreen_gestrue_enable"

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 371
    return-void
.end method

.method private updatePreference()V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    iget-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setEnabled(Z)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    iget-boolean v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/preference/OPPreference;->setEnabled(Z)V

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    if-eqz v0, :cond_5

    .line 289
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

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
    invoke-virtual {v0, v3}, Lcom/oneplus/lib/widget/preference/OPPreference;->setEnabled(Z)V

    .line 292
    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    if-eqz v0, :cond_8

    .line 293
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

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
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPPreference;->setEnabled(Z)V

    .line 295
    :cond_8
    return-void
.end method


# virtual methods
.method public getBlackGesutreValue()I
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 83
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f140001

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 85
    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    .line 87
    const-string v0, "main_screen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    .line 88
    const-string v0, "aod_single_tap_switch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    .line 89
    const-string v0, "aod_shake_up_switch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    .line 90
    const-string v0, "aod_display_mode_switch"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    .line 91
    const-string v0, "aod_display_mode"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPListPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    .line 92
    const-string v0, "aod_display_period"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    .line 93
    const-string v0, "aod_clock_style"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    .line 94
    const-string v0, "aod_display_text"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    .line 95
    const-string v0, "aod_auto_wake_screen"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 99
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 101
    const v2, 0x7f100144

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 105
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

    .line 106
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

    .line 107
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

    .line 108
    iput v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    .line 109
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v1, v2}, Lcom/oneplus/aod/Utils;->isSingleTapEnabled(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    .line 111
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    if-eqz v1, :cond_5

    .line 112
    invoke-static {}, Lcom/oneplus/aod/Utils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 113
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/preference/PreferenceScreen;->removePreference(Lcom/oneplus/lib/preference/Preference;)Z

    goto :goto_3

    .line 115
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    .line 120
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    if-eqz v1, :cond_7

    .line 121
    invoke-static {}, Lcom/oneplus/aod/Utils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 122
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    goto :goto_4

    .line 125
    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/preference/PreferenceScreen;->removePreference(Lcom/oneplus/lib/preference/Preference;)Z

    .line 129
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    if-eqz v1, :cond_9

    .line 130
    invoke-static {}, Lcom/oneplus/aod/Utils;->isCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 131
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    goto :goto_5

    .line 134
    :cond_8
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/preference/PreferenceScreen;->removePreference(Lcom/oneplus/lib/preference/Preference;)Z

    .line 138
    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    if-eqz v1, :cond_b

    .line 139
    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 140
    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "entriesvalue":[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 143
    iget-object v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 144
    iget-object v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    iget v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setValueIndex(I)V

    .line 145
    .end local v1    # "entries":[Ljava/lang/CharSequence;
    .end local v2    # "entriesvalue":[Ljava/lang/CharSequence;
    goto :goto_6

    .line 146
    :cond_a
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/preference/PreferenceScreen;->removePreference(Lcom/oneplus/lib/preference/Preference;)Z

    .line 150
    :cond_b
    :goto_6
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    if-eqz v1, :cond_d

    .line 151
    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 152
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/preference/OPPreference;->setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_7

    .line 154
    :cond_c
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayPeriodPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/preference/PreferenceScreen;->removePreference(Lcom/oneplus/lib/preference/Preference;)Z

    .line 158
    :cond_d
    :goto_7
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    if-eqz v1, :cond_e

    .line 159
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mClockStylePreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/preference/OPPreference;->setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V

    .line 162
    :cond_e
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    if-eqz v1, :cond_f

    .line 163
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayModePreference:Lcom/oneplus/lib/widget/preference/OPListPreference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/preference/OPListPreference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    .line 166
    :cond_f
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    if-eqz v1, :cond_10

    .line 167
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/preference/OPPreference;->setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V

    .line 168
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oneplus/settings/AodDisplayTextSettings;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    iget v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_10

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 170
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    .end local v1    # "text":Ljava/lang/String;
    :cond_10
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    if-eqz v1, :cond_11

    .line 175
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    .line 179
    :cond_11
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    .line 180
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 203
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 204
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Lcom/oneplus/lib/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_display_mode_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 212
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 213
    .local v0, "value":Z
    const-string v2, "AOD"

    const-string v3, "AOD"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSwitchPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    .line 215
    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    .line 216
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDozeSettings()V

    .line 217
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    .line 218
    .end local v0    # "value":Z
    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "aod_display_mode"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    .line 220
    const-string v0, "AOD"

    const-string v2, "When"

    iget v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "aod_display_mode"

    iget v3, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayMode:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    .line 223
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->setDisplayModeSummary()V

    goto/16 :goto_0

    .line 224
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "aod_auto_wake_screen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 226
    .restart local v0    # "value":Z
    const-string v2, "AOD"

    const-string v3, "Notification"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAutoWakeScreenPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    .line 228
    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mNotificationWakeEnabled:Z

    .line 229
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDozeSettings()V

    .line 230
    .end local v0    # "value":Z
    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "aod_single_tap_switch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 232
    .restart local v0    # "value":Z
    const-string v2, "AOD"

    const-string v3, "SingleTap "

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapSwitch:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    .line 235
    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    .line 239
    iget-boolean v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mSingleTapEnabled:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/oneplus/aod/Utils;->isCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getBlackGesutreValue()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    shr-int/lit8 v2, v2, 0x7

    .line 241
    .local v2, "isDoubleClickEnable":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f100143

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f10015f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f1001ed

    .line 243
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const v5, 0x7f100160

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 245
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 250
    .end local v2    # "isDoubleClickEnable":I
    .end local v3    # "text":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDozeSettings()V

    .line 251
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    .line 252
    .end local v0    # "value":Z
    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "aod_shake_up_switch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 253
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 254
    .restart local v0    # "value":Z
    const-string v2, "AOD"

    const-string v3, "ShakeUp"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mShakeUpPreference:Lcom/oneplus/lib/widget/preference/OPSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/preference/OPSwitchPreference;->setChecked(Z)V

    .line 256
    iput-boolean v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mAodEnabled:Z

    .line 257
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updateDozeSettings()V

    .line 258
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->updatePreference()V

    .line 260
    .end local v0    # "value":Z
    :cond_5
    :goto_0
    return v1
.end method

.method public onPreferenceClick(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;

    .line 265
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_clock_style"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/oneplus/settings/AodChooseClockStyleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 269
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_display_text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    invoke-static {p0}, Lcom/oneplus/settings/AodDisplayTextSettings;->show(Landroid/app/Fragment;)V

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_display_period"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/oneplus/settings/AodDisplayDurationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 275
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .line 191
    invoke-super {p0}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onResume()V

    .line 192
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mCurrentUser:I

    .line 194
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->setClockStyleSummary()V

    .line 195
    invoke-static {}, Lcom/oneplus/aod/Utils;->isSupportAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->setDisplayModeSummary()V

    .line 197
    invoke-direct {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->setDisplayPeriodSummary()V

    .line 199
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 184
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 186
    .local v0, "list":Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 187
    return-void
.end method

.method public updateDisplayText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 379
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    const-string v0, "AOD"

    const-string v1, "Sign"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 383
    :cond_0
    const-string v0, "AOD"

    const-string v1, "Sign"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/aod/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mDisplayTextPreference:Lcom/oneplus/lib/widget/preference/OPPreference;

    iget-object v1, p0, Lcom/oneplus/settings/AodSettingsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10016b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/preference/OPPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 386
    :goto_0
    return-void
.end method
