.class public Landroid/text/format/Time;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Time$TimeCalculator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DAYS_PER_MONTH:[I

.field public static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final FRIDAY:I = 0x5

.field public static final HOUR:I = 0x3

.field public static final MINUTE:I = 0x2

.field public static final MONDAY:I = 0x1

.field public static final MONDAY_BEFORE_JULIAN_EPOCH:I = 0x253d89

.field public static final MONTH:I = 0x5

.field public static final MONTH_DAY:I = 0x4

.field public static final SATURDAY:I = 0x6

.field public static final SECOND:I = 0x1

.field public static final SUNDAY:I = 0x0

.field public static final THURSDAY:I = 0x4

.field public static final TIMEZONE_UTC:Ljava/lang/String; = "UTC"

.field public static final TUESDAY:I = 0x2

.field public static final WEDNESDAY:I = 0x3

.field public static final WEEK_DAY:I = 0x7

.field public static final WEEK_NUM:I = 0x9

.field public static final YEAR:I = 0x6

.field public static final YEAR_DAY:I = 0x8

.field private static final Y_M_D:Ljava/lang/String; = "%Y-%m-%d"

.field private static final Y_M_D_T_H_M_S_000:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000"

.field private static final Y_M_D_T_H_M_S_000_Z:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000Z"

.field private static final sThursdayOffset:[I


# instance fields
.field public allDay:Z

.field private calculator:Landroid/text/format/Time$TimeCalculator;

.field public gmtoff:J

.field public hour:I

.field public isDst:I

.field public minute:I

.field public month:I

.field public monthDay:I

.field public second:I

.field public timezone:Ljava/lang/String;

.field public weekDay:I

.field public year:I

.field public yearDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/Time;->sThursdayOffset:[I

    return-void

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_1
    .array-data 4
        -0x3
        0x3
        0x2
        0x1
        0x0
        -0x1
        -0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/text/format/Time;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timezoneId is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkChar(Ljava/lang/String;IC)V
    .locals 5

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/util/TimeFormatException;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unexpected character 0x%02d at pos=%d.  Expected 0x%02d (\'%c\')."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static compare(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    iget-object v0, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-static {v0, v1}, Landroid/text/format/Time$TimeCalculator;->compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "b == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "a == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getChar(Ljava/lang/String;II)I
    .locals 4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    mul-int/2addr v1, p2

    return v1

    :cond_0
    new-instance v1, Landroid/util/TimeFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error at pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getCurrentTimezone()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getJulianDay(JJ)I
    .locals 6

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    add-long v2, p0, v0

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v4, v2

    const v5, 0x253d8c    # 3.419992E-39f

    add-int/2addr v4, v5

    return v4
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .locals 2

    mul-int/lit8 v0, p0, 0x7

    const v1, 0x253d89

    add-int/2addr v1, v0

    return v1
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 3

    rsub-int/lit8 v0, p1, 0x4

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    const v1, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v1, v0

    sub-int v2, p0, v1

    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/16 v0, 0x7b2

    iput v0, p0, Landroid/text/format/Time;->year:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    invoke-direct {v0, p1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    return-void
.end method

.method public static isEpoch(Landroid/text/format/Time;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    const v4, 0x253d8c    # 3.419992E-39f

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parse3339Internal(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_9

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    invoke-static {v1, v6, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    const/16 v7, 0x64

    const/4 v8, 0x1

    invoke-static {v1, v8, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v7

    add-int/2addr v5, v7

    const/4 v7, 0x2

    invoke-static {v1, v7, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v9

    add-int/2addr v5, v9

    const/4 v9, 0x3

    invoke-static {v1, v9, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v9

    add-int/2addr v5, v9

    iput v5, v0, Landroid/text/format/Time;->year:I

    const/4 v9, 0x4

    const/16 v10, 0x2d

    invoke-direct {v0, v1, v9, v10}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    const/4 v9, 0x5

    invoke-static {v1, v9, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    const/4 v9, 0x6

    invoke-static {v1, v9, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v9

    add-int/2addr v5, v9

    const/4 v9, -0x1

    add-int/2addr v5, v9

    iput v5, v0, Landroid/text/format/Time;->month:I

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v10}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    const/16 v11, 0x8

    invoke-static {v1, v11, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    const/16 v11, 0x9

    invoke-static {v1, v11, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v11

    add-int/2addr v5, v11

    iput v5, v0, Landroid/text/format/Time;->monthDay:I

    const/16 v11, 0x13

    if-lt v2, v11, :cond_8

    const/16 v11, 0x54

    invoke-direct {v0, v1, v3, v11}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    iput-boolean v6, v0, Landroid/text/format/Time;->allDay:Z

    const/16 v11, 0xb

    invoke-static {v1, v11, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    const/16 v11, 0xc

    invoke-static {v1, v11, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v11

    add-int/2addr v5, v11

    move v11, v5

    const/16 v12, 0xd

    const/16 v13, 0x3a

    invoke-direct {v0, v1, v12, v13}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    const/16 v12, 0xe

    invoke-static {v1, v12, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    const/16 v12, 0xf

    invoke-static {v1, v12, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v12

    add-int/2addr v5, v12

    move v12, v5

    const/16 v14, 0x10

    invoke-direct {v0, v1, v14, v13}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    const/16 v13, 0x11

    invoke-static {v1, v13, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    const/16 v13, 0x12

    invoke-static {v1, v13, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v13

    add-int/2addr v5, v13

    iput v5, v0, Landroid/text/format/Time;->second:I

    const/16 v13, 0x13

    if-ge v13, v2, :cond_1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-ne v14, v15, :cond_1

    :cond_0
    add-int/2addr v13, v8

    if-ge v13, v2, :cond_1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14}, Ljava/lang/Character;->isDigit(C)Z

    move-result v14

    if-nez v14, :cond_0

    :cond_1
    const/4 v14, 0x0

    if-le v2, v13, :cond_6

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v9, 0x2b

    if-eq v15, v9, :cond_4

    if-eq v15, v10, :cond_3

    const/16 v9, 0x5a

    if-ne v15, v9, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/util/TimeFormatException;

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v8

    const-string v6, "Unexpected character 0x%02d at position %d.  Expected + or -"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, -0x1

    nop

    :goto_0
    move v14, v7

    const/4 v4, 0x1

    if-eqz v14, :cond_6

    add-int/lit8 v7, v13, 0x6

    if-lt v2, v7, :cond_5

    add-int/lit8 v7, v13, 0x1

    invoke-static {v1, v7, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/lit8 v7, v13, 0x2

    invoke-static {v1, v7, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v7

    add-int/2addr v5, v7

    mul-int/2addr v5, v14

    add-int/2addr v11, v5

    add-int/lit8 v7, v13, 0x4

    invoke-static {v1, v7, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/lit8 v5, v13, 0x5

    invoke-static {v1, v5, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    mul-int/2addr v3, v14

    add-int/2addr v12, v3

    move v5, v3

    goto :goto_1

    :cond_5
    new-instance v3, Landroid/util/TimeFormatException;

    new-array v7, v8, [Ljava/lang/Object;

    add-int/lit8 v8, v13, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v6, "Unexpected length; should be %d characters"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    :goto_1
    iput v11, v0, Landroid/text/format/Time;->hour:I

    iput v12, v0, Landroid/text/format/Time;->minute:I

    if-eqz v14, :cond_7

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->normalize(Z)J

    :cond_7
    goto :goto_2

    :cond_8
    iput-boolean v8, v0, Landroid/text/format/Time;->allDay:Z

    iput v6, v0, Landroid/text/format/Time;->hour:I

    iput v6, v0, Landroid/text/format/Time;->minute:I

    iput v6, v0, Landroid/text/format/Time;->second:I

    :goto_2
    iput v6, v0, Landroid/text/format/Time;->weekDay:I

    iput v6, v0, Landroid/text/format/Time;->yearDay:I

    const/4 v3, -0x1

    iput v3, v0, Landroid/text/format/Time;->isDst:I

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroid/text/format/Time;->gmtoff:J

    return v4

    :cond_9
    new-instance v3, Landroid/util/TimeFormatException;

    const-string v4, "String too short --- expected at least 10 characters."

    invoke-direct {v3, v4}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private parseInternal(Ljava/lang/String;)Z
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-static {p1, v4, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    const/16 v5, 0x64

    const/4 v6, 0x1

    invoke-static {p1, v6, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, 0x2

    const/16 v7, 0xa

    invoke-static {p1, v5, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, 0x3

    invoke-static {p1, v5, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Landroid/text/format/Time;->year:I

    const/4 v5, 0x4

    invoke-static {p1, v5, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    const/4 v5, 0x5

    invoke-static {p1, v5, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    const/4 v5, -0x1

    add-int/2addr v3, v5

    iput v3, p0, Landroid/text/format/Time;->month:I

    const/4 v8, 0x6

    invoke-static {p1, v8, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    const/4 v8, 0x7

    invoke-static {p1, v8, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v3, v8

    iput v3, p0, Landroid/text/format/Time;->monthDay:I

    if-le v0, v1, :cond_1

    const/16 v8, 0xf

    if-lt v0, v8, :cond_0

    const/16 v9, 0x54

    invoke-direct {p0, p1, v1, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    iput-boolean v4, p0, Landroid/text/format/Time;->allDay:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    invoke-static {p1, v7, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Landroid/text/format/Time;->hour:I

    const/16 v3, 0xb

    invoke-static {p1, v3, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    const/16 v3, 0xc

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Landroid/text/format/Time;->minute:I

    const/16 v3, 0xd

    invoke-static {p1, v3, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    const/16 v3, 0xe

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v3, v1

    iput v3, p0, Landroid/text/format/Time;->second:I

    if-le v0, v8, :cond_2

    const/16 v1, 0x5a

    invoke-direct {p0, p1, v8, v1}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/util/TimeFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String is too short: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" If there are more than 8 characters there must be at least 15."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput-boolean v6, p0, Landroid/text/format/Time;->allDay:Z

    iput v4, p0, Landroid/text/format/Time;->hour:I

    iput v4, p0, Landroid/text/format/Time;->minute:I

    iput v4, p0, Landroid/text/format/Time;->second:I

    :cond_2
    :goto_0
    iput v4, p0, Landroid/text/format/Time;->weekDay:I

    iput v4, p0, Landroid/text/format/Time;->yearDay:I

    iput v5, p0, Landroid/text/format/Time;->isDst:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/text/format/Time;->gmtoff:J

    return v2

    :cond_3
    new-instance v1, Landroid/util/TimeFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String is too short: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" Expected at least 8 characters."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public after(Landroid/text/format/Time;)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public before(Landroid/text/format/Time;)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clear(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    iput v0, p0, Landroid/text/format/Time;->second:I

    iput v0, p0, Landroid/text/format/Time;->minute:I

    iput v0, p0, Landroid/text/format/Time;->hour:I

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Landroid/text/format/Time;->month:I

    iput v0, p0, Landroid/text/format/Time;->year:I

    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timezone is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format2445()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-boolean v1, p0, Landroid/text/format/Time;->allDay:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time$TimeCalculator;->format2445(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format3339(Z)Ljava/lang/String;
    .locals 10

    if-eqz p1, :cond_0

    const-string v0, "%Y-%m-%d"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "UTC"

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "%Y-%m-%dT%H:%M:%S.000Z"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "%Y-%m-%dT%H:%M:%S.000"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    const-string v1, "-"

    goto :goto_0

    :cond_2
    const-string v1, "+"

    :goto_0
    iget-wide v2, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-int v2, v2

    rem-int/lit16 v3, v2, 0xe10

    div-int/lit8 v3, v3, 0x3c

    div-int/lit16 v4, v2, 0xe10

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s%s%02d:%02d"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getActualMaximum(I)I
    .locals 4

    const/16 v0, 0x3b

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad field="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "WEEK_NUM not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget v0, p0, Landroid/text/format/Time;->year:I

    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_1

    rem-int/lit8 v1, v0, 0x64

    if-nez v1, :cond_0

    rem-int/lit16 v1, v0, 0x190

    if-nez v1, :cond_1

    :cond_0
    const/16 v1, 0x16d

    goto :goto_0

    :cond_1
    const/16 v1, 0x16c

    :goto_0
    return v1

    :pswitch_2
    const/4 v0, 0x6

    return v0

    :pswitch_3
    const/16 v0, 0x7f5

    return v0

    :pswitch_4
    const/16 v0, 0xb

    return v0

    :pswitch_5
    sget-object v0, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    iget v1, p0, Landroid/text/format/Time;->month:I

    aget v0, v0, v1

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_2

    return v0

    :cond_2
    iget v2, p0, Landroid/text/format/Time;->year:I

    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_4

    rem-int/lit8 v3, v2, 0x64

    if-nez v3, :cond_3

    rem-int/lit16 v3, v2, 0x190

    if-nez v3, :cond_4

    :cond_3
    const/16 v1, 0x1d

    nop

    :cond_4
    return v1

    :pswitch_6
    const/16 v0, 0x17

    return v0

    :pswitch_7
    return v0

    :pswitch_8
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWeekNumber()I
    .locals 6

    iget v0, p0, Landroid/text/format/Time;->yearDay:I

    sget-object v1, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v2, p0, Landroid/text/format/Time;->weekDay:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    const/16 v2, 0x16c

    if-gt v0, v2, :cond_0

    div-int/lit8 v2, v0, 0x7

    add-int/2addr v2, v1

    return v2

    :cond_0
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    sget-object v4, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v5, p0, Landroid/text/format/Time;->weekDay:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->normalize(Z)J

    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    div-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v1

    return v3
.end method

.method public normalize(Z)J
    .locals 3

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    iget-object v2, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v2, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    return-wide v0
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/text/format/Time;->parseInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "time string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse3339(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/text/format/Time;->parse3339Internal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "time string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(III)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/format/Time;->second:I

    iput v0, p0, Landroid/text/format/Time;->minute:I

    iput v0, p0, Landroid/text/format/Time;->hour:I

    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    iput p2, p0, Landroid/text/format/Time;->month:I

    iput p3, p0, Landroid/text/format/Time;->year:I

    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    return-void
.end method

.method public set(IIIIII)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    iput p1, p0, Landroid/text/format/Time;->second:I

    iput p2, p0, Landroid/text/format/Time;->minute:I

    iput p3, p0, Landroid/text/format/Time;->hour:I

    iput p4, p0, Landroid/text/format/Time;->monthDay:I

    iput p5, p0, Landroid/text/format/Time;->month:I

    iput p6, p0, Landroid/text/format/Time;->year:I

    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    return-void
.end method

.method public set(J)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time$TimeCalculator;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    return-void
.end method

.method public set(Landroid/text/format/Time;)V
    .locals 2

    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    iget v0, p1, Landroid/text/format/Time;->second:I

    iput v0, p0, Landroid/text/format/Time;->second:I

    iget v0, p1, Landroid/text/format/Time;->minute:I

    iput v0, p0, Landroid/text/format/Time;->minute:I

    iget v0, p1, Landroid/text/format/Time;->hour:I

    iput v0, p0, Landroid/text/format/Time;->hour:I

    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    iget v0, p1, Landroid/text/format/Time;->month:I

    iput v0, p0, Landroid/text/format/Time;->month:I

    iget v0, p1, Landroid/text/format/Time;->year:I

    iput v0, p0, Landroid/text/format/Time;->year:I

    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    iget v0, p1, Landroid/text/format/Time;->isDst:I

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    iget-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    return-void
.end method

.method public setJulianDay(I)J
    .locals 5

    const v0, 0x253d8c    # 3.419992E-39f

    sub-int v0, p1, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    iget-wide v2, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    sub-int v3, p1, v2

    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/text/format/Time;->monthDay:I

    const/4 v4, 0x0

    iput v4, p0, Landroid/text/format/Time;->hour:I

    iput v4, p0, Landroid/text/format/Time;->minute:I

    iput v4, p0, Landroid/text/format/Time;->second:I

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public setToNow()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    return-void
.end method

.method public switchTimezone(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->switchTimeZone(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    return-void
.end method

.method public toMillis(Z)J
    .locals 2

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    invoke-virtual {v0}, Landroid/text/format/Time$TimeCalculator;->toStringInternal()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
