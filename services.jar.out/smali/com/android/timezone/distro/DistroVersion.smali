.class public Lcom/android/timezone/distro/DistroVersion;
.super Ljava/lang/Object;
.source "DistroVersion.java"


# static fields
.field public static final CURRENT_FORMAT_MAJOR_VERSION:I = 0x2

.field public static final CURRENT_FORMAT_MINOR_VERSION:I = 0x1

.field public static final DISTRO_VERSION_FILE_LENGTH:I

.field private static final DISTRO_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final FORMAT_VERSION_STRING_LENGTH:I

.field private static final FULL_CURRENT_FORMAT_VERSION_STRING:Ljava/lang/String;

.field private static final REVISION_LENGTH:I = 0x3

.field private static final REVISION_PATTERN:Ljava/util/regex/Pattern;

.field private static final RULES_VERSION_LENGTH:I = 0x5

.field private static final RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final formatMajorVersion:I

.field public final formatMinorVersion:I

.field public final revision:I

.field public final rulesVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    nop

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/android/timezone/distro/DistroVersion;->toFormatVersionString(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/timezone/distro/DistroVersion;->FULL_CURRENT_FORMAT_VERSION_STRING:Ljava/lang/String;

    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->FULL_CURRENT_FORMAT_VERSION_STRING:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_STRING_LENGTH:I

    const-string v1, "(\\d{3})\\.(\\d{3})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "(\\d{4}\\w)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/timezone/distro/DistroVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "(\\d{3})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/timezone/distro/DistroVersion;->REVISION_PATTERN:Ljava/util/regex/Pattern;

    sget v1, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_STRING_LENGTH:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x5

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x3

    sput v1, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_FILE_LENGTH:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->FORMAT_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->REVISION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    invoke-static {p2}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    sget-object v0, Lcom/android/timezone/distro/DistroVersion;->RULES_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p3, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-static {p4}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v0

    iput v0, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    return-void

    :cond_0
    new-instance v0, Lcom/android/timezone/distro/DistroException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rulesVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static from3DigitVersionString(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    const-string/jumbo v0, "versionString must be a zero padded, 3 digit, positive decimal integer"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/timezone/distro/DistroException;

    const-string/jumbo v3, "versionString must be a zero padded, 3 digit, positive decimal integer"

    invoke-direct {v2, v3, v1}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v1, Lcom/android/timezone/distro/DistroException;

    const-string/jumbo v2, "versionString must be a zero padded, 3 digit, positive decimal integer"

    invoke-direct {v1, v2}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromBytes([B)Lcom/android/timezone/distro/DistroVersion;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    :try_start_0
    sget-object v1, Lcom/android/timezone/distro/DistroVersion;->DISTRO_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/timezone/distro/DistroVersion;

    invoke-static {v2}, Lcom/android/timezone/distro/DistroVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v7

    invoke-static {v3}, Lcom/android/timezone/distro/DistroVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v8

    invoke-static {v5}, Lcom/android/timezone/distro/DistroVersion;->from3DigitVersionString(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v6, v7, v8, v4, v9}, Lcom/android/timezone/distro/DistroVersion;-><init>(IILjava/lang/String;I)V

    return-object v6

    :cond_0
    new-instance v2, Lcom/android/timezone/distro/DistroException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid distro version string: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/android/timezone/distro/DistroException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Distro version string too short: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isCompatibleWithThisDevice(Lcom/android/timezone/distro/DistroVersion;)Z
    .locals 3

    iget v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    iget v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    if-gt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static to3DigitVersionString(I)Ljava/lang/String;
    .locals 5

    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "%03d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/timezone/distro/DistroVersion;->validate3DigitVersion(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toBytes(IILjava/lang/String;I)[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/android/timezone/distro/DistroVersion;->toFormatVersionString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/timezone/distro/DistroVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method private static toFormatVersionString(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/timezone/distro/DistroVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/timezone/distro/DistroVersion;->to3DigitVersionString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static validate3DigitVersion(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/timezone/distro/DistroException;
        }
    .end annotation

    if-ltz p0, :cond_0

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_0

    return p0

    :cond_0
    new-instance v0, Lcom/android/timezone/distro/DistroException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected 0 <= value <= 999, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/timezone/distro/DistroException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/timezone/distro/DistroVersion;

    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    iget v3, v1, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    iget v3, v1, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    if-eq v2, v3, :cond_3

    return v0

    :cond_3
    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    iget v3, v1, Lcom/android/timezone/distro/DistroVersion;->revision:I

    if-eq v2, v3, :cond_4

    return v0

    :cond_4
    iget-object v0, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_5
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget-object v3, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    add-int/2addr v1, v2

    return v1
.end method

.method public toBytes()[B
    .locals 4

    iget v0, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    iget-object v2, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    iget v3, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/timezone/distro/DistroVersion;->toBytes(IILjava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DistroVersion{formatMajorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", formatMinorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->formatMinorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rulesVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", revision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/timezone/distro/DistroVersion;->revision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
