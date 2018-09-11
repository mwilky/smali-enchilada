.class public Lcom/android/settings/datetime/TimePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TimePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;
    }
.end annotation


# static fields
.field public static final DIALOG_TIMEPICKER:I = 0x1

.field private static final KEY_TIME:Ljava/lang/String; = "time"


# instance fields
.field private final mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

.field private final mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;
    .param p3, "autoTimePreferenceController"    # Lcom/android/settings/datetime/AutoTimePreferenceController;

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p2, p0, Lcom/android/settings/datetime/TimePreferenceController;->mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;

    .line 54
    iput-object p3, p0, Lcom/android/settings/datetime/TimePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    .line 55
    return-void
.end method


# virtual methods
.method public buildTimePicker(Landroid/app/Activity;)Lcom/oneplus/lib/app/TimePickerDialog;
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 102
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v8, Lcom/oneplus/lib/app/TimePickerDialog;

    .line 106
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 107
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 108
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    const v3, 0x7f130139

    move-object v1, v8

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/lib/app/TimePickerDialog;-><init>(Landroid/content/Context;ILcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 102
    return-object v8
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 85
    const-string v0, "time"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 76
    const-string v0, "time"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/TimePreferenceController;->mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;

    invoke-interface {v0}, Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;->showTimePicker()V

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public onTimeSet(Lcom/oneplus/lib/widget/TimePicker;II)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/lib/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .line 90
    iget-object v0, p0, Lcom/android/settings/datetime/TimePreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/datetime/TimePreferenceController;->setTime(II)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/datetime/TimePreferenceController;->mHost:Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;

    iget-object v1, p0, Lcom/android/settings/datetime/TimePreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 97
    :cond_0
    return-void
.end method

.method setTime(II)V
    .locals 7
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 115
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 116
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 117
    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 118
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 119
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide v3, 0x1160d1b4800L

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 121
    .local v1, "when":J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/android/settings/datetime/TimePreferenceController;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/AlarmManager;->setTime(J)V

    .line 124
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 64
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 68
    .local v0, "now":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/settings/datetime/TimePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    move-object v1, p1

    check-cast v1, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/android/settings/datetime/TimePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 72
    :cond_1
    return-void
.end method
