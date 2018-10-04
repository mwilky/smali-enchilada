.class public final Lcom/android/internal/util/ParseUtils;
.super Ljava/lang/Object;
.source "ParseUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseBoolean(Ljava/lang/String;Z)Z
    .locals 3

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "false"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/util/ParseUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public static parseDouble(Ljava/lang/String;D)D
    .locals 2

    if-nez p0, :cond_0

    return-wide p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    return-wide p1
.end method

.method public static parseFloat(Ljava/lang/String;F)F
    .locals 1

    if-nez p0, :cond_0

    return p1

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return p1
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 1

    const/16 v0, 0xa

    invoke-static {p0, v0, p1}, Lcom/android/internal/util/ParseUtils;->parseIntWithBase(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static parseIntWithBase(Ljava/lang/String;II)I
    .locals 1

    if-nez p0, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return p2
.end method

.method public static parseLong(Ljava/lang/String;J)J
    .locals 2

    const/16 v0, 0xa

    invoke-static {p0, v0, p1, p2}, Lcom/android/internal/util/ParseUtils;->parseLongWithBase(Ljava/lang/String;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLongWithBase(Ljava/lang/String;IJ)J
    .locals 2

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    return-wide p2
.end method
