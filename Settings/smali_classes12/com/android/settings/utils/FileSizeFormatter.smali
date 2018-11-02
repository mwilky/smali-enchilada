.class public final Lcom/android/settings/utils/FileSizeFormatter;
.super Ljava/lang/Object;
.source "FileSizeFormatter.java"


# static fields
.field public static final GIGABYTE_IN_BYTES:J = 0x3b9aca00L

.field public static final KILOBYTE_IN_BYTES:J = 0x3e8L

.field public static final MEGABYTE_IN_BYTES:J = 0xf4240L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatBytes(Landroid/content/res/Resources;JIJ)Landroid/text/format/Formatter$BytesResult;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    neg-long v3, p1

    long-to-float v3, v3

    goto :goto_1

    :cond_1
    long-to-float v3, p1

    :goto_1
    long-to-float v4, p4

    div-float/2addr v3, v4

    const-wide/16 v4, 0x1

    cmp-long v4, p4, v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    const-string v5, "%.0f"

    :goto_2
    goto :goto_3

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_3

    const/16 v4, 0x64

    const-string v5, "%.2f"

    goto :goto_2

    :cond_3
    const/high16 v4, 0x41200000    # 10.0f

    cmpg-float v4, v3, v4

    if-gez v4, :cond_4

    const/16 v4, 0xa

    const-string v5, "%.1f"

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    const-string v5, "%.0f"

    :goto_3
    if-eqz v0, :cond_5

    neg-float v3, v3

    :cond_5
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v2, v1

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v4

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v6, v2

    mul-long/2addr v6, p4

    int-to-long v8, v4

    div-long/2addr v6, v8

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v8, Landroid/text/format/Formatter$BytesResult;

    invoke-direct {v8, v1, v2, v6, v7}, Landroid/text/format/Formatter$BytesResult;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v8
.end method

.method public static formatFileSize(Landroid/content/Context;JIJ)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    nop

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/settings/utils/FileSizeFormatter;->formatBytes(Landroid/content/res/Resources;JIJ)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/utils/FileSizeFormatter;->getFileSizeSuffix(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getFileSizeSuffix(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "fileSizeSuffix"

    const-string v2, "string"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method
