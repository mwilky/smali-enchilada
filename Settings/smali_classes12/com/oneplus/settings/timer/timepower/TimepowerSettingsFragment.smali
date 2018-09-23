.class public Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TimepowerSettingsFragment.java"

# interfaces
.implements Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

.field private static final ACTION_SET_POWEROFF_ALARM:Ljava/lang/String; = "org.codeaurora.poweroffalarm.action.SET_ALARM"

.field private static final EXTRA_DISPLAY_TIME:Ljava/lang/String; = "display_time"

.field private static final EXTRA_HOUR:Ljava/lang/String; = "hour"

.field private static final EXTRA_IS_24HOUR:Ljava/lang/String; = "24hour"

.field private static final EXTRA_MINUTE:Ljava/lang/String; = "minute"

.field private static final EXTRA_POWER_STATE:Ljava/lang/String; = "power_state"

.field private static final EXTRA_POWER_TYPE:Ljava/lang/String; = "power_type"

.field private static final ITEM_COUNT:I = 0x2

.field private static final KEY_POWER_OFF_SETTINGS:Ljava/lang/String; = "oneplus_power_off_settings"

.field private static final KEY_POWER_ON_SETTINGS:Ljava/lang/String; = "oneplus_power_on_settings"

.field private static final POWER_OFF_ALARM_PACKAGE:Ljava/lang/String; = "com.qualcomm.qti.poweroffalarm"

.field private static final POWER_OFF_TYPE:I = 0x1

.field private static final POWER_ON_TYPE:I = 0x0

.field private static final PREFERENCE_POWER_OFF_SETTINGS:Ljava/lang/String; = "power_off_settings"

.field private static final PREFERENCE_POWER_OFF_STATE:Ljava/lang/String; = "power_off_switch"

.field private static final PREFERENCE_POWER_ON_SETTINGS:Ljava/lang/String; = "power_on_settings"

.field private static final PREFERENCE_POWER_ON_STATE:Ljava/lang/String; = "power_on_switch"

.field private static final REQUEST_CODE_POWER_OFF:I = 0x1

.field private static final REQUEST_CODE_POWER_ON:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TimepowerSettingsFragment"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static misCheckedPoweroff:Z

.field private static misCheckedPoweron:Z


# instance fields
.field private mCode:I

.field private mDlgVisible:Z

.field private mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

.field private mPowerOffPreference:Landroid/support/v7/preference/Preference;

.field private mPowerOffStatePref:Landroid/support/v14/preference/SwitchPreference;

.field private mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

.field private mPowerOnPreference:Landroid/support/v7/preference/Preference;

.field private mPowerOnStatePref:Landroid/support/v14/preference/SwitchPreference;

.field private mPowerState:Z

.field private mStateArray:[[Z

.field private mTimeArray:[[I

.field private mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

.field onDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweron:Z

    sput-boolean v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x2

    filled-new-array {v0, v0}, [I

    move-result-object v1

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v1, Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    new-instance v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$5;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method private ReturnData(II)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "power_state"

    iget-boolean v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerState:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "hour"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "minute"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    invoke-direct {p0, v2, v1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->returnNewTimeSetResult(ILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return v0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;I)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getTimeSettingsIntent(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->startDialogForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static boolToInt(Z)I
    .locals 0

    return p0
.end method

.method private cancleNewPlanLastPowerOn()V
    .locals 6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [J

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "def_timepower_config"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "time"

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "com.qualcomm.qti.poweroffalarm"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x11000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private formatTime(II)Ljava/lang/String;
    .locals 7

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->is24Hour()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%1$02d"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%1$02d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const v0, 0x7f120107

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xc

    if-lt p1, v3, :cond_1

    const v4, 0x7f12010e

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-le p1, v3, :cond_2

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/16 p1, 0xc

    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%1$02d"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%1$02d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private getEditIntent(IIIZLjava/lang/String;)Landroid/content/Intent;
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "24hour"

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->is24Hour()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "power_state"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "display_time"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "hour"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "minute"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "power_type"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getPowerOnOffStatus(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "PowerOnFlag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweron:Z

    return v0

    :cond_0
    const-string v0, "PowerOffFlag"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getTimeSettingsIntent(I)Landroid/content/Intent;
    .locals 12

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-boolean v1, v1, v2

    const-string v3, "TIMER"

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v4, v4, v2

    aget v4, v4, v2

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v5, v5, v2

    aget v5, v5, v0

    if-ne p1, v0, :cond_1

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v6, v6, v0

    aget-boolean v1, v6, v2

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v6}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "TIMER"

    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v7}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v0

    aget v4, v6, v2

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v2, v2, v0

    aget v5, v2, v0

    :cond_1
    move-object v6, p0

    move v7, p1

    move v8, v4

    move v9, v5

    move v10, v1

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getEditIntent(IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 6

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->readData()V

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v3, v3, v1

    aget v3, v3, v1

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v4, v4, v1

    aget v4, v4, v2

    invoke-direct {p0, v3, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v2

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v5, v5, v2

    aget v1, v5, v1

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v5, v5, v2

    aget v2, v5, v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "power_on_switch"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "power_off_switch"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "power_on_settings"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    iput-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    new-instance v5, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$1;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$1;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v2, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setViewClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "oneplus_power_on_settings"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/support/v7/preference/Preference;

    new-instance v5, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string v2, "power_off_settings"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    iput-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    new-instance v5, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$3;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$3;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v2, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setViewClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "oneplus_power_off_settings"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/support/v7/preference/Preference;

    new-instance v5, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const-string v2, "power_on_settings"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->removePreference(Ljava/lang/String;)Z

    const-string v2, "power_off_settings"

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->removePreference(Ljava/lang/String;)Z

    return-void
.end method

.method private static intToBool(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private is24Hour()Z
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private readData()V
    .locals 10

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "def_timepower_config"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    const/4 v4, 0x6

    if-gt v3, v4, :cond_1

    add-int/lit8 v5, v3, 0x6

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v1

    const/4 v7, 0x2

    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v2

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v1

    const/4 v8, 0x4

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x1

    aput v7, v6, v9

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v6, v6, v1

    const/4 v7, 0x5

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->intToBool(I)Z

    move-result v8

    aput-boolean v8, v6, v2

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v6, v6, v1

    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->intToBool(I)Z

    move-result v4

    aput-boolean v4, v6, v9

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private returnNewTimeSetResult(ILandroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "hour"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "minute"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :cond_0
    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v4

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v1, v6, :cond_1

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v4

    aget v6, v6, v5

    if-ne v2, v6, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f1211bd

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v3

    const-string v8, "hour"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v3

    const-string v8, "minute"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v5

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v3

    aget v6, v6, v7

    iget-object v8, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v8, v8, v3

    aget v8, v8, v5

    invoke-direct {p0, v6, v8}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v8, v8, v3

    const-string v9, "power_state"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    aput-boolean v9, v8, v7

    iget-object v8, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v8, v8, v3

    aget-boolean v8, v8, v5

    if-nez p1, :cond_2

    iget-object v9, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v9, v6}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-ne p1, v5, :cond_3

    iget-object v9, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v9, v6}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v9, v6}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    if-nez v8, :cond_5

    if-nez p1, :cond_4

    invoke-direct {p0, v7, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v5, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    :cond_5
    iget v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    const/high16 v9, 0x11000000

    if-nez v7, :cond_6

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->cancleNewPlanLastPowerOn()V

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.android.settings.POWER_OP_ON"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->setPowerOn()V

    goto :goto_1

    :cond_6
    iget v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    if-ne v7, v5, :cond_7

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.android.settings.action.REQUEST_POWER_OFF"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    :cond_8
    :goto_1
    return-void
.end method

.method private setPowerOn()V
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [J

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "def_timepower_config"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v0

    const-string v2, "TimepowerSettingsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPowerOn writeData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-wide v5, v0, v4

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.POWER_OP_ON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, "alarm"

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/high16 v6, 0x8000000

    invoke-static {v5, v4, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    aget-wide v6, v0, v4

    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private startDialogForResult(Landroid/content/Intent;I)V
    .locals 18

    move-object/from16 v7, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    move/from16 v8, p2

    iput v8, v7, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    new-instance v0, Lcom/oneplus/lib/widget/TimePicker;

    new-instance v1, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f13043e

    invoke-direct {v1, v2, v3}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    const v0, 0x7f1211b7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v1, "power_state"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v7, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerState:Z

    const-string v1, "24hour"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v1, "hour"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v1, "minute"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    const-string v1, "power_type"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-nez v13, :cond_2

    const v0, 0x7f1211bb

    :cond_1
    :goto_0
    move v15, v0

    goto :goto_1

    :cond_2
    if-ne v13, v14, :cond_1

    const v0, 0x7f1211b9

    goto :goto_0

    :goto_1
    iget-object v0, v7, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    iget-object v0, v7, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, v7, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Lcom/oneplus/lib/widget/TimePicker;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    new-instance v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;

    invoke-direct {v0, v7}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$TimeSetDialogListener;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    move-object/from16 v16, v0

    new-instance v17, Lcom/oneplus/lib/app/TimePickerDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f130139

    move-object/from16 v0, v17

    move-object v3, v7

    move v4, v11

    move v5, v12

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/app/TimePickerDialog;-><init>(Landroid/content/Context;ILcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iget-object v1, v7, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/TimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/oneplus/lib/app/TimePickerDialog;->show()V

    iput-boolean v14, v7, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return-void
.end method

.method private updateState(IZ)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v1, v1, p1

    aput-boolean p2, v1, v0

    const/high16 v1, 0x11000000

    if-nez p1, :cond_2

    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->cancleNewPlanLastPowerOn()V

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    sput-boolean v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweron:Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.POWER_OP_ON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->setPowerOn()V

    :cond_1
    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v0, :cond_3

    if-ne p2, v0, :cond_3

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    new-array v2, v2, [J

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "trigger_time"

    aget-wide v5, v2, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sput-boolean v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.settings.action.REQUEST_POWER_OFF"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    if-ne p1, v0, :cond_4

    if-nez p2, :cond_4

    sput-boolean v3, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweroff:Z

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.POWER_CANCEL_OP_OFF"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    sput-boolean v3, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->misCheckedPoweron:Z

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.settings.POWER_OP_ON"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result v4

    if-eqz v4, :cond_5

    new-array v2, v2, [J

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "def_timepower_config"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v2

    new-instance v5, Landroid/content/Intent;

    const-string v6, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "time"

    aget-wide v7, v2, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "com.qualcomm.qti.poweroffalarm"

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private writeData()V
    .locals 8

    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%1$02d"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v0

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%1$02d"

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v0

    aget v7, v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%1$01d"

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v7, v7, v0

    aget-boolean v7, v7, v1

    invoke-static {v7}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->boolToInt(Z)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%1$01d"

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v7, v7, v0

    aget-boolean v5, v7, v5

    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->boolToInt(Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    const-string v0, "TimepowerSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeData: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "def_timepower_config"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

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

    const v0, 0x7f160097

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->init()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "power_on_switch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-direct {p0, v3, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    return v4

    :cond_1
    const-string v2, "power_off_switch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v4, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    return v4

    :cond_2
    return v3
.end method

.method public onTimeSet(Lcom/oneplus/lib/widget/TimePicker;II)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->ReturnData(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return-void
.end method
