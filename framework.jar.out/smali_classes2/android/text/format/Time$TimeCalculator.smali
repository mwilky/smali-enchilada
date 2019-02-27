.class Landroid/text/format/Time$TimeCalculator;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Time;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeCalculator"
.end annotation


# instance fields
.field public timezone:Ljava/lang/String;

.field public final wallTime:Llibcore/util/ZoneInfo$WallTime;

.field private zoneInfo:Llibcore/util/ZoneInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfo(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    new-instance v0, Llibcore/util/ZoneInfo$WallTime;

    invoke-direct {v0}, Llibcore/util/ZoneInfo$WallTime;-><init>()V

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    return-void
.end method

.method public static compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I
    .locals 10

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    iget-object v1, p1, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v0

    iget-object v2, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v2

    iget-object v3, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v2, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v0

    iget-object v3, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v3

    sub-int/2addr v0, v3

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v2

    iget-object v3, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v2, :cond_3

    return v2

    :cond_3
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v0

    iget-object v3, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v3

    sub-int/2addr v0, v3

    if-eqz v0, :cond_4

    return v0

    :cond_4
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v2

    iget-object v3, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v2, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    invoke-virtual {p0, v1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {p1, v1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v4

    sub-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_7

    const/4 v1, -0x1

    goto :goto_0

    :cond_7
    cmp-long v0, v6, v8

    if-lez v0, :cond_8

    const/4 v1, 0x1

    nop

    :cond_8
    :goto_0
    return v1
.end method

.method private static lookupZoneInfo(Ljava/lang/String;)Llibcore/util/ZoneInfo;
    .locals 4

    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v0

    invoke-virtual {v0, p0}, Llibcore/util/ZoneInfoDB$TzData;->makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v1

    const-string v2, "GMT"

    invoke-virtual {v1, v2}, Llibcore/util/ZoneInfoDB$TzData;->makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    move-result-object v1

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GMT not found: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading timezone: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private toChar(I)C
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    return v0
.end method

.method private updateZoneInfoFromTimeZone()V
    .locals 2

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfo(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method public copyFieldsFromTime(Landroid/text/format/Time;)V
    .locals 3

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->second:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setSecond(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->minute:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setMinute(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setHour(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setMonthDay(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->month:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setMonth(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->year:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setYear(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->weekDay:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setWeekDay(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->yearDay:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setYearDay(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->isDst:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setIsDst(I)V

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-wide v1, p1, Landroid/text/format/Time;->gmtoff:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setGmtOffset(I)V

    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/text/format/Time;->second:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/text/format/Time;->minute:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/text/format/Time;->hour:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "allDay is true but sec, min, hour are not 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    return-void
.end method

.method public copyFieldsToTime(Landroid/text/format/Time;)V
    .locals 2

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->second:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->minute:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->hour:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->monthDay:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->month:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->year:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->weekDay:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->yearDay:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->isDst:I

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    return-void
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "%c"

    :cond_0
    new-instance v0, Landroid/text/format/TimeFormatter;

    invoke-direct {v0}, Landroid/text/format/TimeFormatter;-><init>()V

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/format/TimeFormatter;->format(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format2445(Z)Ljava/lang/String;
    .locals 9

    const/16 v0, 0x10

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-array v2, v2, [C

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v3

    div-int/lit16 v4, v3, 0x3e8

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    const/4 v5, 0x0

    aput-char v4, v2, v5

    rem-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v4, v3, 0x64

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    const/4 v6, 0x1

    aput-char v4, v2, v6

    rem-int/lit8 v3, v3, 0x64

    const/4 v4, 0x2

    div-int/lit8 v7, v3, 0xa

    invoke-direct {p0, v7}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v7

    aput-char v7, v2, v4

    const/16 v4, 0xa

    rem-int/2addr v3, v4

    const/4 v7, 0x3

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v8

    aput-char v8, v2, v7

    iget-object v7, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v7}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v7

    add-int/2addr v7, v6

    const/4 v3, 0x4

    div-int/lit8 v6, v7, 0xa

    invoke-direct {p0, v6}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v6

    aput-char v6, v2, v3

    const/4 v3, 0x5

    rem-int/lit8 v6, v7, 0xa

    invoke-direct {p0, v6}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v6

    aput-char v6, v2, v3

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v3

    const/4 v6, 0x6

    div-int/lit8 v7, v3, 0xa

    invoke-direct {p0, v7}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v7

    aput-char v7, v2, v6

    const/4 v6, 0x7

    rem-int/lit8 v7, v3, 0xa

    invoke-direct {p0, v7}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v7

    aput-char v7, v2, v6

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v5, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_1
    const/16 v6, 0x54

    aput-char v6, v2, v1

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v1}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v1

    const/16 v3, 0x9

    div-int/lit8 v6, v1, 0xa

    invoke-direct {p0, v6}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v6

    aput-char v6, v2, v3

    rem-int/lit8 v3, v1, 0xa

    invoke-direct {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v3

    aput-char v3, v2, v4

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v1

    const/16 v3, 0xb

    div-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    aput-char v4, v2, v3

    const/16 v3, 0xc

    rem-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    aput-char v4, v2, v3

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v1

    const/16 v3, 0xd

    div-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    aput-char v4, v2, v3

    const/16 v3, 0xe

    rem-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    aput-char v4, v2, v3

    const-string v3, "UTC"

    iget-object v4, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0xf

    if-eqz v3, :cond_2

    const/16 v3, 0x5a

    aput-char v3, v2, v4

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v5, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v3

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2, v5, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public setTimeInMillis(J)V
    .locals 3

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    long-to-int v0, v0

    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v1, v0, v2}, Llibcore/util/ZoneInfo$WallTime;->localtime(ILlibcore/util/ZoneInfo;)V

    return-void
.end method

.method public switchTimeZone(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    move-result v0

    iput-object p1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v1, v0, v2}, Llibcore/util/ZoneInfo$WallTime;->localtime(ILlibcore/util/ZoneInfo;)V

    return-void
.end method

.method public toMillis(Z)J
    .locals 6

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v1, v0}, Llibcore/util/ZoneInfo$WallTime;->setIsDst(I)V

    :cond_0
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v1, v2}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    move-result v1

    if-ne v1, v0, :cond_1

    const-wide/16 v2, -0x1

    return-wide v2

    :cond_1
    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public toStringInternal()Ljava/lang/String;
    .locals 6

    const-string v0, "%04d%02d%02dT%02d%02d%02d%s(%d,%d,%d,%d,%d)"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x7

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x8

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x9

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xa

    aput-object v2, v1, v4

    invoke-virtual {p0, v3}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
