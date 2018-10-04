.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field public static final FORMAT_12HOUR:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_24HOUR:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_LONG:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_MEDIUM:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORT:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTER:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTEST:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static sNowTime:Landroid/text/format/Time;

.field private static sThenTime:Landroid/text/format/Time;

.field public static final sameMonthTable:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final sameYearTable:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroid/text/format/DateUtils;->sameYearTable:[I

    sput-object v0, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7

    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 6

    and-int/lit16 v0, p6, 0xc1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    or-int/2addr p6, v0

    :cond_1
    move-wide v0, p2

    move-wide v2, p4

    move v4, p6

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Llibcore/icu/DateIntervalFormat;->formatDateRange(JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object p1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(J)Ljava/lang/CharSequence;
    .locals 1

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Landroid/text/format/DateUtils;->formatDuration(JI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JI)Ljava/lang/CharSequence;
    .locals 6

    const/16 v0, 0xa

    if-eq p2, v0, :cond_2

    const/16 v0, 0x14

    if-eq p2, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p2, v0, :cond_1

    const/16 v0, 0x28

    if-eq p2, v0, :cond_1

    const/16 v0, 0x32

    if-eq p2, v0, :cond_0

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    nop

    :goto_0
    nop

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v1

    const-wide/32 v2, 0x36ee80

    cmp-long v4, p0, v2

    if-ltz v4, :cond_3

    const-wide/32 v4, 0x1b7740

    add-long/2addr v4, p0

    div-long/2addr v4, v2

    long-to-int v2, v4

    new-instance v3, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, v4, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v3}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3
    const-wide/32 v2, 0xea60

    cmp-long v4, p0, v2

    if-ltz v4, :cond_4

    const-wide/16 v4, 0x7530

    add-long/2addr v4, p0

    div-long/2addr v4, v2

    long-to-int v2, v4

    new-instance v3, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, v4, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v3}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_4
    const-wide/16 v2, 0x1f4

    add-long/2addr v2, p0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    new-instance v3, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, v4, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v3}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 16

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0xe10

    cmp-long v10, p1, v8

    if-ltz v10, :cond_0

    div-long v2, p1, v8

    mul-long/2addr v8, v2

    sub-long v0, p1, v8

    goto :goto_0

    :cond_0
    move-wide/from16 v0, p1

    :goto_0
    const-wide/16 v8, 0x3c

    cmp-long v10, v0, v8

    if-ltz v10, :cond_1

    div-long v4, v0, v8

    mul-long/2addr v8, v4

    sub-long/2addr v0, v8

    :cond_1
    move-wide v6, v0

    move-object/from16 v8, p0

    const/4 v9, 0x0

    if-nez v8, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x8

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v10

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_1
    new-instance v10, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v10, v8, v11}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    const-wide/16 v11, 0x0

    cmp-long v11, v2, v11

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-lez v11, :cond_3

    sget-object v11, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v14, v13

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v14, v12

    invoke-virtual {v10, v11, v14}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_3
    sget-object v11, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v12, v13

    invoke-virtual {v10, v11, v12}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .locals 5

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v2, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_0

    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    :goto_0
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    add-int/lit8 v1, p0, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_4

    const/16 v1, 0x14

    if-eq p1, v1, :cond_3

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x28

    if-eq p1, v1, :cond_1

    const/16 v1, 0x32

    if-eq p1, v1, :cond_0

    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    :goto_0
    nop

    aget-object v2, v1, p0

    return-object v2
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_4

    const/16 v1, 0x14

    if-eq p1, v1, :cond_3

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x28

    if-eq p1, v1, :cond_1

    const/16 v1, 0x32

    if-eq p1, v1, :cond_0

    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    :goto_0
    nop

    aget-object v2, v1, p0

    return-object v2
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 12

    move/from16 v0, p7

    and-int/lit16 v1, v0, 0xc1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    :goto_0
    or-int/2addr v0, v1

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-wide v3, p1

    move-wide v7, p3

    move-wide/from16 v9, p5

    move v11, v0

    invoke-static/range {v1 .. v11}, Llibcore/icu/RelativeDateTimeFormatter;->getRelativeDateTimeString(Ljava/util/Locale;Ljava/util/TimeZone;JJJJI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .locals 8

    const v7, 0x10014

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, v7

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-static/range {v0 .. v8}, Llibcore/icu/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 14

    move-wide v7, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v0, v9, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-class v13, Landroid/text/format/DateUtils;

    monitor-enter v13

    :try_start_0
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    :cond_0
    sget-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v0, :cond_1

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    :cond_1
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v0, v9, v10}, Landroid/text/format/Time;->set(J)V

    sget-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    const-wide/32 v0, 0x5265c00

    cmp-long v0, v11, v0

    if-gez v0, :cond_2

    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    move-object v1, p0

    move-wide v2, v7

    move-wide v4, v7

    move v6, v0

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    const v0, 0x104057f

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-eq v0, v1, :cond_3

    const v0, 0x20014

    move-object v1, p0

    move-wide v2, v7

    move-wide v4, v7

    move v6, v0

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    const v0, 0x104057e

    goto :goto_0

    :cond_3
    const v0, 0x10010

    move-object v1, p0

    move-wide v2, v7

    move-wide v4, v7

    move v6, v0

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    const v0, 0x104057e

    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v3, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    :cond_4
    monitor-exit v13

    move-object v0, v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static initFormatStrings()V
    .locals 2

    sget-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static initFormatStringsLocked()V
    .locals 3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sput-object v1, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    const v2, 0x10401df

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    const v2, 0x10401de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static isToday(J)Z
    .locals 6

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    iget v1, v0, Landroid/text/format/Time;->year:I

    iget v2, v0, Landroid/text/format/Time;->month:I

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    iget v4, v0, Landroid/text/format/Time;->year:I

    if-ne v1, v4, :cond_0

    iget v4, v0, Landroid/text/format/Time;->month:I

    if-ne v2, v4, :cond_0

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method
