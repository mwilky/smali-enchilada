.class public final Lcom/oneplus/settings/utils/OPFormatter;
.super Ljava/lang/Object;
.source "OPFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;,
        Lcom/oneplus/settings/utils/OPFormatter$BytesResult;
    }
.end annotation


# static fields
.field public static final FLAG_CALCULATE_ROUNDED:I = 0x2

.field public static final FLAG_DEFAULT:I = 0x0

.field public static final FLAG_SHORTER:I = 0x1

.field private static final MILLIS_PER_MINUTE:I = 0xea60

.field private static final PETABYTE:Landroid/icu/util/MeasureUnit;

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/icu/text/UnicodeSetSpanner;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    const-string v2, "[[:Zs:][:Cf:]]"

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSetSpanner;-><init>(Landroid/icu/text/UnicodeSet;)V

    sput-object v0, Lcom/oneplus/settings/utils/OPFormatter;->SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;

    invoke-static {}, Lcom/oneplus/settings/utils/OPFormatter;->createPetaByte()Landroid/icu/util/MeasureUnit;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPFormatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/icu/util/MeasureUnit;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/utils/OPFormatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    return-object v0
.end method

.method private static bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPFormatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v2}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p1
.end method

.method private static createPetaByte()Landroid/icu/util/MeasureUnit;
    .locals 6

    :try_start_0
    const-class v0, Landroid/icu/util/MeasureUnit;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "digital"

    aput-object v2, v1, v4

    const-string v2, "petabyte"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/MeasureUnit;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create petabyte MeasureUnit"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static deleteFirstFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatBytes(Landroid/content/res/Resources;JI)Lcom/oneplus/settings/utils/OPFormatter$BytesResult;
    .locals 8

    invoke-static {p1, p2, p3}, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->roundBytes(JI)Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    iget v2, v0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->fractionDigits:I

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPFormatter;->getNumberFormatter(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;

    move-result-object v2

    iget v3, v0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->value:F

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    sget-object v5, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    if-eq v4, v5, :cond_1

    iget-object v4, v0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    sget-object v5, Lcom/oneplus/settings/utils/OPFormatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    iget v4, v0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->value:F

    iget-object v5, v0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {v1, v2, v4, v5}, Lcom/oneplus/settings/utils/OPFormatter;->formatMeasureShort(Ljava/util/Locale;Landroid/icu/text/NumberFormat;FLandroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/oneplus/settings/utils/OPFormatter;->deleteFirstFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/oneplus/settings/utils/OPFormatter;->SPACES_AND_CONTROLS:Landroid/icu/text/UnicodeSetSpanner;

    invoke-virtual {v6, v5}, Landroid/icu/text/UnicodeSetSpanner;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {p0, v4}, Lcom/oneplus/settings/utils/OPFormatter;->getSuffixOverride(Landroid/content/res/Resources;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    nop

    new-instance v5, Lcom/oneplus/settings/utils/OPFormatter$BytesResult;

    iget-wide v6, v0, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->roundedBytes:J

    invoke-direct {v5, v3, v4, v6, v7}, Lcom/oneplus/settings/utils/OPFormatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v5
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/settings/utils/OPFormatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->roundBytes(JI)Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPFormatter;->formatRoundedBytesResult(Landroid/content/Context;Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPFormatter;->bidiWrap(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatIpAddress(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatMeasureShort(Ljava/util/Locale;Landroid/icu/text/NumberFormat;FLandroid/icu/util/MeasureUnit;)Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {p0, v0, p1}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    new-instance v1, Landroid/icu/util/Measure;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v0, v1}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatRoundedBytesResult(Landroid/content/Context;Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;)Ljava/lang/String;
    .locals 8

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPFormatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    iget v1, p1, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->fractionDigits:I

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPFormatter;->getNumberFormatter(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;

    move-result-object v1

    iget-object v2, p1, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    sget-object v3, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    sget-object v3, Lcom/oneplus/settings/utils/OPFormatter;->PETABYTE:Landroid/icu/util/MeasureUnit;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p1, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->value:F

    iget-object v3, p1, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/settings/utils/OPFormatter;->formatMeasureShort(Ljava/util/Locale;Landroid/icu/text/NumberFormat;FLandroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    :goto_0
    iget v2, p1, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->value:F

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    const v3, 0x104022e

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p1, Lcom/oneplus/settings/utils/OPFormatter$RoundedBytesResult;->units:Landroid/icu/util/MeasureUnit;

    invoke-static {v6, v7}, Lcom/oneplus/settings/utils/OPFormatter;->getSuffixOverride(Landroid/content/res/Resources;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 14

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/32 v5, 0x15180

    cmp-long v7, v0, v5

    if-ltz v7, :cond_0

    div-long v5, v0, v5

    long-to-int v2, v5

    const v5, 0x15180

    mul-int/2addr v5, v2

    int-to-long v5, v5

    sub-long/2addr v0, v5

    :cond_0
    const-wide/16 v5, 0xe10

    cmp-long v7, v0, v5

    if-ltz v7, :cond_1

    div-long v5, v0, v5

    long-to-int v3, v5

    mul-int/lit16 v5, v3, 0xe10

    int-to-long v5, v5

    sub-long/2addr v0, v5

    :cond_1
    const-wide/16 v5, 0x3c

    cmp-long v7, v0, v5

    if-ltz v7, :cond_2

    div-long v5, v0, v5

    long-to-int v4, v5

    mul-int/lit8 v5, v4, 0x3c

    int-to-long v5, v5

    sub-long/2addr v0, v5

    :cond_2
    long-to-int v5, v0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPFormatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v6

    sget-object v7, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v6, v7}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v7

    const/4 v8, 0x2

    if-lt v2, v8, :cond_3

    add-int/lit8 v8, v3, 0xc

    div-int/lit8 v8, v8, 0x18

    add-int/2addr v2, v8

    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_3
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-lez v2, :cond_4

    new-array v8, v8, [Landroid/icu/util/Measure;

    new-instance v11, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Landroid/icu/util/MeasureUnit;->DAY:Landroid/icu/util/TimeUnit;

    invoke-direct {v11, v12, v13}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v11, v8, v10

    new-instance v10, Landroid/icu/util/Measure;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v10, v11, v12}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_4
    if-lt v3, v8, :cond_5

    add-int/lit8 v8, v4, 0x1e

    div-int/lit8 v8, v8, 0x3c

    add-int/2addr v3, v8

    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_5
    if-lez v3, :cond_6

    new-array v8, v8, [Landroid/icu/util/Measure;

    new-instance v11, Landroid/icu/util/Measure;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v11, v12, v13}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v11, v8, v10

    new-instance v10, Landroid/icu/util/Measure;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v10, v11, v12}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_6
    if-lt v4, v8, :cond_7

    add-int/lit8 v8, v5, 0x1e

    div-int/lit8 v8, v8, 0x3c

    add-int/2addr v4, v8

    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_7
    if-lez v4, :cond_8

    new-array v8, v8, [Landroid/icu/util/Measure;

    new-instance v11, Landroid/icu/util/Measure;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v11, v12, v13}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v11, v8, v10

    new-instance v10, Landroid/icu/util/Measure;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v10, v11, v12}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_8
    new-instance v8, Landroid/icu/util/Measure;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v8, v9, v10}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v7, v8}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    const-wide/32 v0, 0xea60

    add-long v2, p1, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    mul-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/oneplus/settings/utils/OPFormatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPFormatter;->localeFromContext(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-static {v0, v1}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v1

    new-instance v4, Landroid/icu/util/Measure;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v4, v5, v6}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v4}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/settings/utils/OPFormatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNumberFormatter(Ljava/util/Locale;I)Landroid/icu/text/NumberFormat;
    .locals 2

    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    invoke-virtual {v0, p1}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    instance-of v1, v0, Landroid/icu/text/DecimalFormat;

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/icu/text/NumberFormat;->setRoundingMode(I)V

    :cond_0
    return-object v0
.end method

.method private static getSuffixOverride(Landroid/content/res/Resources;Landroid/icu/util/MeasureUnit;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/MeasureUnit;->BYTE:Landroid/icu/util/MeasureUnit;

    if-ne p1, v0, :cond_0

    const v0, 0x10400eb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x1040547

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static localeFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
