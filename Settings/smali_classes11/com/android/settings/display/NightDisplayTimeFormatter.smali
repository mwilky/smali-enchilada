.class public Lcom/android/settings/display/NightDisplayTimeFormatter;
.super Ljava/lang/Object;
.source "NightDisplayTimeFormatter.java"


# instance fields
.field private mTimeFormatter:Ljava/text/DateFormat;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayTimeFormatter;->mTimeFormatter:Ljava/text/DateFormat;

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayTimeFormatter;->mTimeFormatter:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private getAutoModeSummary(Landroid/content/Context;Lcom/android/internal/app/ColorDisplayController;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p2}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const v4, 0x7f1209ae

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const v4, 0x7f1209aa

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_2

    const v2, 0x7f1209b0

    goto :goto_0

    :cond_2
    const v2, 0x7f1209ac

    :goto_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    if-eqz v0, :cond_4

    const v2, 0x7f1209af

    goto :goto_1

    :cond_4
    const v2, 0x7f1209ab

    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getAutoModeTimeSummary(Landroid/content/Context;Lcom/android/internal/app/ColorDisplayController;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p2}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1209ad

    goto :goto_0

    :cond_0
    const v0, 0x7f1209a9

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getAutoModeSummary(Landroid/content/Context;Lcom/android/internal/app/ColorDisplayController;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/NightDisplayTimeFormatter;->mTimeFormatter:Ljava/text/DateFormat;

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

    iget-object v1, p0, Lcom/android/settings/display/NightDisplayTimeFormatter;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
