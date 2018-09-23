.class public Lcom/oneplus/settings/better/OPNightMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPNightMode.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;


# static fields
.field private static final AUTO_ACTIVATE_CUSTOMIZED_VALUE:I = 0x2

.field private static final DIALOG_TURN_OFF_TIME:I = 0x1

.field private static final DIALOG_TURN_ON_TIME:I = 0x0

.field private static final KEY_AUTO_ACTIVATE:Ljava/lang/String; = "auto_activate"

.field private static final KEY_NIGHT_MODE_ENABLED_OP:Ljava/lang/String; = "night_mode_enabled"

.field private static final KEY_NIGHT_MODE_LEVEL_OP:Ljava/lang/String; = "night_mode_level_op"

.field private static final KEY_NIGHT_MODE_SUMMARY:Ljava/lang/String; = "night_mode_summary"

.field private static final KEY_SET_TIME:Ljava/lang/String; = "set_time"

.field private static final KEY_TURN_OFF_TIME:Ljava/lang/String; = "turn_off_time"

.field private static final KEY_TURN_ON_TIME:Ljava/lang/String; = "turn_on_time"

.field private static final NEVER_AUTO_VALUE:I = 0x0

.field private static final NIGHT_MODE_ENABLED:Ljava/lang/String; = "night_mode_enabled"

.field private static final SUNRISE_SUNSET_VALUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OPNightMode"


# instance fields
.field private isSupportReadingMode:Z

.field private mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

.field private mCM:Lcom/oneplus/settings/OneplusColorManager;

.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mNightModSummary:Lcom/android/settings/fuelgauge/WallOfTextPreference;

.field private mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

.field private mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

.field private mSetTimePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mTimeFormatter:Ljava/text/DateFormat;

.field private mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

.field private mTurnOnTimePreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/oneplus/settings/better/OPNightMode$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPNightMode$2;-><init>(Lcom/oneplus/settings/better/OPNightMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPNightMode;)Lcom/android/internal/app/ColorDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private convertAutoMode(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    return v0
.end method

.method private getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateAutoActivateModePreferenceDescription(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onActivated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160086

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.read_mode.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    new-instance v1, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {v1, v0}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    const-string v1, "night_mode_enabled"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string v1, "auto_activate"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    const-string v1, "set_time"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mSetTimePreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string v1, "turn_on_time"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    const-string v1, "turn_off_time"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    const-string v1, "night_mode_summary"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/WallOfTextPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModSummary:Lcom/android/settings/fuelgauge/WallOfTextPreference;

    const-string v1, "night_mode_level_op"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v1, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setOPNightModeLevelSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->updateAutoActivateModePreferenceDescription(I)V

    new-instance v1, Lcom/oneplus/settings/OneplusColorManager;

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reading_mode_status"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    move v1, v2

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    iget-boolean v2, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModSummary:Lcom/android/settings/fuelgauge/WallOfTextPreference;

    sget-object v3, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v4, 0x7f120bb1

    invoke-virtual {v3, v4}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/WallOfTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContext()Landroid/content/Context;

    move-result-object v7

    nop

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    new-instance v9, Lcom/oneplus/lib/app/TimePickerDialog;

    new-instance v3, Lcom/oneplus/settings/better/OPNightMode$1;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/settings/better/OPNightMode$1;-><init>(Lcom/oneplus/settings/better/OPNightMode;I)V

    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    move-object v1, v9

    move-object v2, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/lib/app/TimePickerDialog;-><init>(Landroid/content/Context;Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v9
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "night_mode_enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    goto :goto_0

    :cond_0
    const-string v1, "auto_activate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2, v1}, Lcom/android/internal/app/ColorDisplayController;->setAutoMode(I)Z

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->updateAutoActivateModePreferenceDescription(I)V

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "turn_on_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->showDialog(I)V

    return v2

    :cond_0
    const-string v1, "turn_off_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->showDialog(I)V

    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int v1, p2, 0x84

    add-int/lit8 v1, v1, -0x5a

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int v1, p2, 0x84

    add-int/lit8 v1, v1, -0x38

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_progress_status"

    const/4 v2, -0x2

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onActivated(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onAutoModeChanged(I)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_progress_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_activated"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_progress_status"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    const/16 v1, -0x200

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    return-void
.end method
