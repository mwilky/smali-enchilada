.class public Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilityTimerShutdownSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final ACC_TIMERDOWN_TIMESETTINGS_KEY:Ljava/lang/String; = "accessibility_timer_startup_device_settings"

.field private static final ACC_TIMERUP_TIMESETTINGS_KEY:Ljava/lang/String; = "accessibility_timer_startup_device_settings"

.field private static final ACC_TIMER_SHUTDOWN_KEY:Ljava/lang/String; = "accessibility_timer_shutdown_device"

.field private static final ACC_TIMER_STARTUP_KEY:Ljava/lang/String; = "accessibility_timer_startup_device"


# instance fields
.field private am:Landroid/app/AlarmManager;

.field private c:Ljava/util/Calendar;

.field private intent:Landroid/content/Intent;

.field private mShutdownPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mStartupPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mTimeDownSettingsPreference:Landroid/support/v7/preference/Preference;

.field private mTimeUpSettingsPreference:Landroid/support/v7/preference/Preference;

.field private pIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->intent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->pIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->pIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/AlarmManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->am:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->am:Landroid/app/AlarmManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mTimeUpSettingsPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 5

    const-string v0, "accessibility_timer_startup_device"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mStartupPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mStartupPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mStartupPreference:Landroid/support/v14/preference/SwitchPreference;

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_startup_timer"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    nop

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string v0, "accessibility_timer_shutdown_device"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mShutdownPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mShutdownPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mShutdownPreference:Landroid/support/v14/preference/SwitchPreference;

    nop

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "oem_shutdown_timer"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string v0, "accessibility_timer_startup_device_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mTimeUpSettingsPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mTimeUpSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "accessibility_timer_startup_device_settings"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mTimeDownSettingsPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mTimeDownSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160071

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessibility_timer_shutdown_device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_shutdown_timer"

    iget-object v2, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mStartupPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessibility_timer_startup_device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_startup_timer"

    iget-object v2, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mStartupPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessibility_timer_startup_device_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    const/16 v3, 0xb

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    new-instance v3, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;

    invoke-direct {v6, p0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;-><init>(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)V

    const/4 v9, 0x1

    move-object v4, v3

    move v7, v0

    move v8, v2

    invoke-direct/range {v4 .. v9}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v3}, Landroid/app/TimePickerDialog;->show()V

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "accessibility_timer_startup_device_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v3, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    new-instance v3, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;

    invoke-direct {v6, p0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;-><init>(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)V

    const/4 v9, 0x1

    move-object v4, v3

    move v7, v0

    move v8, v2

    invoke-direct/range {v4 .. v9}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v3}, Landroid/app/TimePickerDialog;->show()V

    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->initView()V

    return-void
.end method
