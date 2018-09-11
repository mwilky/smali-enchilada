.class public Lcom/android/settings/datetime/DatePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DatePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;
    }
.end annotation


# static fields
.field public static final DIALOG_DATEPICKER:I = 0x0

.field private static final KEY_DATE:Ljava/lang/String; = "date"


# instance fields
.field private final mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

.field private final mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;
    .param p3, "autoTimePreferenceController"    # Lcom/android/settings/datetime/AutoTimePreferenceController;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/android/settings/datetime/DatePreferenceController;->mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

    .line 53
    iput-object p3, p0, Lcom/android/settings/datetime/DatePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    .line 54
    return-void
.end method


# virtual methods
.method public buildDatePicker(Landroid/app/Activity;)Lcom/oneplus/lib/app/DatePickerDialog;
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 96
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v8, Lcom/oneplus/lib/app/DatePickerDialog;

    .line 100
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 101
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 102
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const v3, 0x7f130139

    move-object v1, v8

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/lib/app/DatePickerDialog;-><init>(Landroid/content/Context;ILcom/oneplus/lib/app/DatePickerDialog$OnDateSetListener;III)V

    .line 105
    .local v1, "d":Lcom/oneplus/lib/app/DatePickerDialog;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 106
    const/16 v2, 0x7d7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v9}, Ljava/util/Calendar;->set(III)V

    .line 107
    invoke-virtual {v1}, Lcom/oneplus/lib/app/DatePickerDialog;->getDatePicker()Lcom/oneplus/lib/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/lib/widget/DatePicker;->setMinDate(J)V

    .line 108
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 109
    const/16 v2, 0x7f5

    const/16 v3, 0xb

    const/16 v4, 0x1f

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 110
    invoke-virtual {v1}, Lcom/oneplus/lib/app/DatePickerDialog;->getDatePicker()Lcom/oneplus/lib/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/lib/widget/DatePicker;->setMaxDate(J)V

    .line 111
    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "date"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 75
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "date"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/DatePreferenceController;->mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

    invoke-interface {v0}, Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;->showDatePicker()V

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public onDateSet(Lcom/oneplus/lib/widget/DatePicker;III)V
    .locals 2
    .param p1, "view"    # Lcom/oneplus/lib/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .line 89
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/settings/datetime/DatePreferenceController;->setDate(III)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/datetime/DatePreferenceController;->mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

    iget-object v1, p0, Lcom/android/settings/datetime/DatePreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method setDate(III)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 116
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 118
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 119
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 120
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 121
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide v3, 0x1160d1b4800L

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 123
    .local v1, "when":J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/settings/datetime/DatePreferenceController;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-virtual {v3, v1, v2}, Landroid/app/AlarmManager;->setTime(J)V

    .line 126
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 63
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    .line 64
    return-void

    .line 66
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 67
    .local v0, "now":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/settings/datetime/DatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    move-object v1, p1

    check-cast v1, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/android/settings/datetime/DatePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 71
    :cond_1
    return-void
.end method
