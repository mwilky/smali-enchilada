.class public Lcom/android/internal/telephony/uicc/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field private static final HEX_CHARS:[C

.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 262
    if-nez p2, :cond_0

    .line 263
    const-string v0, ""

    return-object v0

    .line 265
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_2

    .line 266
    aget-byte v1, p0, p1

    const/16 v2, -0x80

    if-ne v1, v2, :cond_2

    .line 267
    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x2

    .line 268
    .local v1, "ucslen":I
    const/4 v2, 0x0

    .line 271
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    mul-int/lit8 v5, v1, 0x2

    const-string v6, "utf-16be"

    invoke-direct {v3, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 275
    goto :goto_0

    .line 272
    :catch_0
    move-exception v3

    .line 273
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    .end local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    :goto_0
    if-eqz v2, :cond_2

    .line 280
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 281
    :goto_1
    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v4, 0xffff

    if-ne v3, v4, :cond_1

    .line 282
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 284
    :cond_1
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 289
    .end local v1    # "ucslen":I
    .end local v2    # "ret":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .line 290
    .local v1, "isucs2":Z
    const/4 v2, 0x0

    .line 291
    .local v2, "base":C
    const/4 v3, 0x0

    .line 293
    .local v3, "len":I
    const/4 v4, 0x3

    if-lt p2, v4, :cond_4

    aget-byte v4, p0, p1

    const/16 v5, -0x7f

    if-ne v4, v5, :cond_4

    .line 294
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 295
    add-int/lit8 v4, p2, -0x3

    if-le v3, v4, :cond_3

    .line 296
    add-int/lit8 v3, p2, -0x3

    .line 298
    :cond_3
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x7

    int-to-char v2, v4

    .line 299
    add-int/lit8 p1, p1, 0x3

    .line 300
    const/4 v1, 0x1

    goto :goto_2

    .line 301
    :cond_4
    const/4 v4, 0x4

    if-lt p2, v4, :cond_6

    aget-byte v4, p0, p1

    const/16 v5, -0x7e

    if-ne v4, v5, :cond_6

    .line 302
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 303
    add-int/lit8 v4, p2, -0x4

    if-le v3, v4, :cond_5

    .line 304
    add-int/lit8 v3, p2, -0x4

    .line 306
    :cond_5
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-char v2, v4

    .line 308
    add-int/lit8 p1, p1, 0x4

    .line 309
    const/4 v1, 0x1

    .line 312
    :cond_6
    :goto_2
    if-eqz v1, :cond_a

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .local v4, "ret":Ljava/lang/StringBuilder;
    :goto_3
    if-lez v3, :cond_9

    .line 318
    aget-byte v5, p0, p1

    if-gez v5, :cond_7

    .line 319
    aget-byte v5, p0, p1

    and-int/lit8 v5, v5, 0x7f

    add-int/2addr v5, v2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    add-int/lit8 p1, p1, 0x1

    .line 321
    add-int/lit8 v3, v3, -0x1

    .line 326
    :cond_7
    move v5, v0

    .line 327
    .local v5, "count":I
    :goto_4
    if-ge v5, v3, :cond_8

    add-int v6, p1, v5

    aget-byte v6, p0, v6

    if-ltz v6, :cond_8

    .line 328
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 330
    :cond_8
    invoke-static {p0, p1, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    add-int/2addr p1, v5

    .line 334
    sub-int/2addr v3, v5

    .line 335
    .end local v5    # "count":I
    goto :goto_3

    .line 337
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 340
    .end local v4    # "ret":Ljava/lang/StringBuilder;
    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 341
    .local v0, "resource":Landroid/content/res/Resources;
    const-string v4, ""

    .line 343
    .local v4, "defaultCharset":Ljava/lang/String;
    const v5, 0x1040280

    .line 344
    :try_start_1
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 347
    goto :goto_5

    .line 345
    :catch_1
    move-exception v5

    .line 348
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, p2, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static bcdPlmnToString([BI)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I

    .line 113
    add-int/lit8 v0, p1, 0x3

    array-length v1, p0

    if-le v0, v1, :cond_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 117
    .local v0, "trans":[B
    const/4 v1, 0x0

    add-int v2, v1, p1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x4

    add-int v3, v1, p1

    aget-byte v3, p0, v3

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 118
    const/4 v1, 0x1

    add-int v2, v1, p1

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x4

    const/4 v3, 0x2

    add-int v4, v3, p1

    aget-byte v4, p0, v4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 119
    add-int v2, v3, p1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xf0

    add-int/2addr v1, p1

    aget-byte v1, p0, v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 120
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "F"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    const-string v2, "F"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    :cond_1
    return-object v1
.end method

.method public static bcdToBytes(Ljava/lang/String;[B)V
    .locals 5
    .param p0, "bcd"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 101
    :cond_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 102
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_1

    .line 103
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->charToByte(C)B

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 102
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_1
    return-void
.end method

.method public static bcdToBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "bcd"    # Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 86
    .local v0, "output":[B
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    .line 87
    return-object v0
.end method

.method public static bcdToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .line 76
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 55
    .local v0, "ret":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_3

    .line 58
    aget-byte v2, p0, v1

    const/16 v3, 0xf

    and-int/2addr v2, v3

    .line 59
    .local v2, "v":I
    const/16 v4, 0x9

    if-le v2, v4, :cond_0

    .end local v1    # "i":I
    .end local v2    # "v":I
    goto :goto_2

    .line 60
    .restart local v1    # "i":I
    .restart local v2    # "v":I
    :cond_0
    const/16 v5, 0x30

    add-int v6, v5, v2

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    aget-byte v6, p0, v1

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v2, v6, 0xf

    .line 64
    if-ne v2, v3, :cond_1

    .end local v2    # "v":I
    goto :goto_1

    .line 65
    .restart local v2    # "v":I
    :cond_1
    if-le v2, v4, :cond_2

    .end local v1    # "i":I
    .end local v2    # "v":I
    goto :goto_2

    .line 66
    .restart local v1    # "i":I
    .restart local v2    # "v":I
    :cond_2
    add-int/2addr v5, v2

    int-to-char v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .end local v2    # "v":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static bchToString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 136
    .local v0, "ret":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 139
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 140
    .local v2, "v":I
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    .line 143
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .end local v2    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static bitToRGB(I)I
    .locals 1
    .param p0, "bit"    # I

    .line 500
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 501
    const/4 v0, -0x1

    return v0

    .line 503
    :cond_0
    const/high16 v0, -0x1000000

    return v0
.end method

.method private static byteNumForInt(IZ)I
    .locals 4
    .param p0, "value"    # I
    .param p1, "signed"    # Z

    .line 785
    if-ltz p0, :cond_6

    .line 788
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 789
    const/16 v3, 0x7f

    if-gt p0, v3, :cond_0

    .line 790
    return v2

    .line 792
    :cond_0
    const/16 v2, 0x7fff

    if-gt p0, v2, :cond_1

    .line 793
    return v1

    .line 795
    :cond_1
    const v1, 0x7fffff

    if-gt p0, v1, :cond_5

    .line 796
    return v0

    .line 799
    :cond_2
    const/16 v3, 0xff

    if-gt p0, v3, :cond_3

    .line 800
    return v2

    .line 802
    :cond_3
    const v2, 0xffff

    if-gt p0, v2, :cond_4

    .line 803
    return v1

    .line 805
    :cond_4
    const v1, 0xffffff

    if-gt p0, v1, :cond_5

    .line 806
    return v0

    .line 809
    :cond_5
    const/4 v0, 0x4

    return v0

    .line 786
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static byteNumForSignedInt(I)I
    .locals 1
    .param p0, "value"    # I

    .line 769
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    return v0
.end method

.method public static byteNumForUnsignedInt(I)I
    .locals 1
    .param p0, "value"    # I

    .line 757
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    return v0
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # B

    .line 838
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [C

    sget-object v2, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    and-int/lit16 v3, p0, 0xff

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    const/4 v3, 0x0

    aput-char v2, v1, v3

    sget-object v2, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v2, v2, v3

    const/4 v3, 0x1

    aput-char v2, v1, v3

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .line 398
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    array-length v2, p0

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 402
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 405
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    const/16 v3, 0xf

    and-int/2addr v2, v3

    .line 407
    .local v2, "b":I
    sget-object v4, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    aget-byte v4, p0, v1

    and-int v2, v3, v4

    .line 411
    sget-object v3, Lcom/android/internal/telephony/uicc/IccUtils;->HEX_CHARS:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    .end local v2    # "b":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static bytesToInt([BII)I
    .locals 4
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 635
    const/4 v0, 0x4

    if-gt p2, v0, :cond_3

    .line 639
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_2

    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 650
    shl-int/lit8 v2, v0, 0x8

    add-int v3, p1, v1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    .end local v1    # "i":I
    :cond_0
    if-ltz v0, :cond_1

    .line 656
    return v0

    .line 653
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "src cannot be parsed as a positive integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 640
    .end local v0    # "result":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: src=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 636
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length must be <= 4 (only 32-bit integer supported): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bytesToRawLong([BII)J
    .locals 8
    .param p0, "src"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 672
    const/16 v0, 0x8

    if-gt p2, v0, :cond_2

    .line 676
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    add-int v1, p1, p2

    array-length v2, p0

    if-gt v1, v2, :cond_1

    .line 685
    const-wide/16 v1, 0x0

    .line 686
    .local v1, "result":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p2, :cond_0

    .line 687
    shl-long v4, v1, v0

    add-int v6, p1, v3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long v1, v4, v6

    .line 686
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 689
    .end local v3    # "i":I
    :cond_0
    return-wide v1

    .line 677
    .end local v1    # "result":J
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of the bounds: src=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length must be <= 8 (only 64-bit long supported): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 3
    .param p0, "b"    # B

    .line 211
    const/4 v0, 0x0

    .line 214
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 215
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    .line 218
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 219
    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    .line 222
    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 156
    .local v0, "ret":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 157
    .local v1, "count":I
    move v2, v1

    move v1, p1

    .local v1, "i":I
    .local v2, "count":I
    :goto_0
    if-ge v2, p2, :cond_3

    .line 159
    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    .line 160
    .local v3, "v":I
    const/16 v4, 0x9

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    .line 161
    :cond_0
    const/16 v5, 0x30

    add-int v6, v5, v3

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    add-int/lit8 v2, v2, 0x1

    if-ne v2, p2, :cond_1

    .end local v1    # "i":I
    .end local v3    # "v":I
    goto :goto_1

    .line 165
    .restart local v1    # "i":I
    .restart local v3    # "v":I
    :cond_1
    aget-byte v6, p0, v1

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v3, v6, 0xf

    .line 166
    if-le v3, v4, :cond_2

    const/4 v3, 0x0

    .line 167
    :cond_2
    add-int/2addr v5, v3

    int-to-char v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v2, v2, 0x1

    .line 157
    .end local v3    # "v":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "i":I
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static charToByte(C)B
    .locals 1
    .param p0, "c"    # C

    .line 853
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 854
    add-int/lit8 v0, p0, -0x30

    int-to-byte v0, v0

    return v0

    .line 855
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 856
    add-int/lit8 v0, p0, -0x37

    int-to-byte v0, v0

    return v0

    .line 857
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 858
    add-int/lit8 v0, p0, -0x57

    int-to-byte v0, v0

    return v0

    .line 860
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static countTrailingZeros(B)B
    .locals 3
    .param p0, "b"    # B

    .line 817
    if-nez p0, :cond_0

    .line 818
    const/16 v0, 0x8

    return v0

    .line 820
    :cond_0
    and-int/lit16 v0, p0, 0xff

    .line 821
    .local v0, "v":I
    const/4 v1, 0x7

    .line 822
    .local v1, "c":B
    and-int/lit8 v2, v0, 0xf

    if-eqz v2, :cond_1

    .line 823
    add-int/lit8 v2, v1, -0x4

    int-to-byte v1, v2

    .line 825
    :cond_1
    and-int/lit8 v2, v0, 0x33

    if-eqz v2, :cond_2

    .line 826
    add-int/lit8 v2, v1, -0x2

    int-to-byte v1, v2

    .line 828
    :cond_2
    and-int/lit8 v2, v0, 0x55

    if-eqz v2, :cond_3

    .line 829
    add-int/lit8 v2, v1, -0x1

    int-to-byte v1, v2

    .line 831
    :cond_3
    return v1
.end method

.method private static getCLUT([BII)[I
    .locals 8
    .param p0, "rawData"    # [B
    .param p1, "offset"    # I
    .param p2, "number"    # I

    .line 595
    if-nez p0, :cond_0

    .line 596
    const/4 v0, 0x0

    return-object v0

    .line 599
    :cond_0
    new-array v0, p2, [I

    .line 600
    .local v0, "result":[I
    mul-int/lit8 v1, p2, 0x3

    add-int/2addr v1, p1

    .line 601
    .local v1, "endIndex":I
    move v2, p1

    .line 602
    .local v2, "valueIndex":I
    const/4 v3, 0x0

    .line 603
    .local v3, "colorIndex":I
    const/high16 v4, -0x1000000

    .line 605
    .local v4, "alpha":I
    :goto_0
    add-int/lit8 v5, v3, 0x1

    .local v5, "colorIndex":I
    add-int/lit8 v6, v2, 0x1

    .local v6, "valueIndex":I
    aget-byte v2, p0, v2

    .end local v2    # "valueIndex":I
    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v7, v6, 0x1

    .local v7, "valueIndex":I
    aget-byte v6, p0, v6

    .end local v6    # "valueIndex":I
    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    add-int/lit8 v6, v7, 0x1

    .restart local v6    # "valueIndex":I
    aget-byte v7, p0, v7

    .end local v7    # "valueIndex":I
    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    aput v2, v0, v3

    .line 609
    .end local v3    # "colorIndex":I
    if-lt v6, v1, :cond_1

    .line 610
    return-object v0

    .line 603
    :cond_1
    move v3, v5

    move v2, v6

    goto :goto_0
.end method

.method public static getDecimalSubstring(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "iccId"    # Ljava/lang/String;

    .line 615
    const/4 v0, 0x0

    move v1, v0

    .local v1, "position":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 616
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 615
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 618
    :cond_1
    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 3
    .param p0, "b"    # B

    .line 189
    const/4 v0, 0x0

    .line 192
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    .line 193
    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 196
    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 197
    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 200
    :cond_1
    return v0
.end method

.method public static hexCharToInt(C)I
    .locals 3
    .param p0, "c"    # C

    .line 353
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    .line 354
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 355
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 357
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 374
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 376
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 378
    .local v0, "sz":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 380
    .local v1, "ret":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 381
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0x1

    .line 382
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 380
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 385
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private static intToBytes(I[BIZ)I
    .locals 5
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "signed"    # Z

    .line 773
    invoke-static {p0, p3}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForInt(IZ)I

    move-result v0

    .line 774
    .local v0, "l":I
    if-ltz p2, :cond_1

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_1

    .line 777
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    move v2, v1

    move v1, p0

    .local v1, "v":I
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 778
    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    .line 779
    .local v3, "b":B
    add-int v4, p2, v2

    aput-byte v3, p1, v4

    .line 777
    .end local v3    # "b":B
    add-int/lit8 v2, v2, -0x1

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 781
    .end local v1    # "v":I
    .end local v2    # "i":I
    :cond_0
    return v0

    .line 775
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space to write. Required bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 9
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .line 545
    const/16 v0, 0x8

    rem-int v1, v0, p4

    if-eqz v1, :cond_0

    .line 546
    const-string v0, "IccUtils"

    const-string v1, "not event number of color"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v0

    return-object v0

    .line 551
    :cond_0
    const/4 v1, 0x1

    .line 552
    .local v1, "mask":I
    const/4 v2, 0x4

    if-eq p4, v2, :cond_2

    if-eq p4, v0, :cond_1

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 557
    :pswitch_0
    const/4 v1, 0x3

    .line 558
    goto :goto_0

    .line 554
    :pswitch_1
    const/4 v1, 0x1

    .line 555
    goto :goto_0

    .line 563
    :cond_1
    const/16 v1, 0xff

    goto :goto_0

    .line 560
    :cond_2
    const/16 v1, 0xf

    .line 561
    nop

    .line 567
    :goto_0
    new-array v2, p2, [I

    .line 568
    .local v2, "resultArray":[I
    const/4 v3, 0x0

    .line 569
    .local v3, "resultIndex":I
    div-int/2addr v0, p4

    .line 570
    .local v0, "run":I
    :goto_1
    if-ge v3, p2, :cond_4

    .line 571
    add-int/lit8 v4, p1, 0x1

    .local v4, "valueIndex":I
    aget-byte p1, p0, p1

    .line 572
    .local p1, "tempByte":B
    const/4 v5, 0x0

    .local v5, "runIndex":I
    :goto_2
    if-ge v5, v0, :cond_3

    .line 573
    sub-int v6, v0, v5

    add-int/lit8 v6, v6, -0x1

    .line 574
    .local v6, "offset":I
    add-int/lit8 v7, v3, 0x1

    .local v7, "resultIndex":I
    mul-int v8, v6, p4

    shr-int v8, p1, v8

    and-int/2addr v8, v1

    aget v8, p3, v8

    aput v8, v2, v3

    .line 572
    .end local v3    # "resultIndex":I
    .end local v6    # "offset":I
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_2

    .line 577
    .end local v5    # "runIndex":I
    .end local v7    # "resultIndex":I
    .end local p1    # "tempByte":B
    .restart local v3    # "resultIndex":I
    :cond_3
    nop

    .line 569
    move p1, v4

    goto :goto_1

    .line 578
    .end local v4    # "valueIndex":I
    .local p1, "valueIndex":I
    :cond_4
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "valueIndex"    # I
    .param p2, "length"    # I
    .param p3, "colorArray"    # [I
    .param p4, "bits"    # I

    .line 583
    const/16 v0, 0x8

    rem-int/2addr v0, p4

    if-nez v0, :cond_0

    .line 584
    const-string v0, "IccUtils"

    const-string v1, "not odd number of color"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    return-object v0

    .line 589
    :cond_0
    new-array v0, p2, [I

    .line 591
    .local v0, "resultArray":[I
    return-object v0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 427
    aget-byte v0, p0, p1

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    goto :goto_1

    .line 431
    :cond_0
    aget-byte v0, p0, p1

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x7

    packed-switch v0, :pswitch_data_0

    .line 452
    const-string v0, ""

    goto :goto_0

    .line 442
    :pswitch_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, -0x1

    const-string v3, "utf-16"

    invoke-direct {v0, p0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .local v0, "ret":Ljava/lang/String;
    goto :goto_0

    .line 444
    .end local v0    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 445
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 446
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "IccUtils"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    nop

    .line 452
    move-object v0, v1

    goto :goto_0

    .line 435
    .end local v1    # "ret":Ljava/lang/String;
    :pswitch_1
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x7

    .line 436
    .local v0, "unusedBits":I
    add-int/lit8 v1, p2, -0x1

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x7

    .line 437
    .local v1, "countSeptets":I
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "ret":Ljava/lang/String;
    nop

    .line 452
    move-object v0, v2

    .line 460
    .end local v1    # "countSeptets":I
    .end local v2    # "ret":Ljava/lang/String;
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    aget-byte v1, p0, p1

    .line 464
    return-object v0

    .line 428
    .end local v0    # "ret":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v0, ""

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, "valueIndex":I
    add-int/lit8 v1, v0, 0x1

    .local v1, "valueIndex":I
    aget-byte v0, p0, v0

    .end local v0    # "valueIndex":I
    and-int/lit16 v0, v0, 0xff

    .line 476
    .local v0, "width":I
    add-int/lit8 v2, v1, 0x1

    .local v2, "valueIndex":I
    aget-byte v1, p0, v1

    .end local v1    # "valueIndex":I
    and-int/lit16 v1, v1, 0xff

    .line 477
    .local v1, "height":I
    mul-int v3, v0, v1

    .line 479
    .local v3, "numOfPixels":I
    new-array v4, v3, [I

    .line 481
    .local v4, "pixels":[I
    const/4 v5, 0x0

    .line 482
    .local v5, "pixelIndex":I
    const/4 v6, 0x7

    .line 483
    .local v6, "bitIndex":I
    const/4 v7, 0x0

    .line 484
    .local v7, "currentByte":B
    :goto_0
    if-ge v5, v3, :cond_1

    .line 486
    rem-int/lit8 v8, v5, 0x8

    if-nez v8, :cond_0

    .line 487
    add-int/lit8 v8, v2, 0x1

    .local v8, "valueIndex":I
    aget-byte v2, p0, v2

    .line 488
    .end local v7    # "currentByte":B
    .local v2, "currentByte":B
    const/4 v6, 0x7

    .line 490
    move v7, v2

    move v2, v8

    .end local v8    # "valueIndex":I
    .local v2, "valueIndex":I
    .restart local v7    # "currentByte":B
    :cond_0
    add-int/lit8 v8, v5, 0x1

    .local v8, "pixelIndex":I
    add-int/lit8 v9, v6, -0x1

    .local v9, "bitIndex":I
    shr-int v6, v7, v6

    .end local v6    # "bitIndex":I
    and-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bitToRGB(I)I

    move-result v6

    aput v6, v4, v5

    .line 483
    .end local v5    # "pixelIndex":I
    move v5, v8

    move v6, v9

    goto :goto_0

    .line 493
    .end local v8    # "pixelIndex":I
    .end local v9    # "bitIndex":I
    .restart local v5    # "pixelIndex":I
    .restart local v6    # "bitIndex":I
    :cond_1
    if-eq v5, v3, :cond_2

    .line 494
    const-string v8, "IccUtils"

    const-string v9, "parse end and size error"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_2
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "transparency"    # Z

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, "valueIndex":I
    add-int/lit8 v1, v0, 0x1

    .local v1, "valueIndex":I
    aget-byte v0, p0, v0

    .end local v0    # "valueIndex":I
    and-int/lit16 v0, v0, 0xff

    .line 519
    .local v0, "width":I
    add-int/lit8 v2, v1, 0x1

    .local v2, "valueIndex":I
    aget-byte v1, p0, v1

    .end local v1    # "valueIndex":I
    and-int/lit16 v1, v1, 0xff

    .line 520
    .local v1, "height":I
    add-int/lit8 v3, v2, 0x1

    .local v3, "valueIndex":I
    aget-byte v2, p0, v2

    .end local v2    # "valueIndex":I
    and-int/lit16 v2, v2, 0xff

    .line 521
    .local v2, "bits":I
    add-int/lit8 v4, v3, 0x1

    .local v4, "valueIndex":I
    aget-byte v3, p0, v3

    .end local v3    # "valueIndex":I
    and-int/lit16 v3, v3, 0xff

    .line 522
    .local v3, "colorNumber":I
    add-int/lit8 v5, v4, 0x1

    .local v5, "valueIndex":I
    aget-byte v4, p0, v4

    .end local v4    # "valueIndex":I
    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0x8

    shl-int/2addr v4, v6

    add-int/lit8 v7, v5, 0x1

    .local v7, "valueIndex":I
    aget-byte v5, p0, v5

    .end local v5    # "valueIndex":I
    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 525
    .local v4, "clutOffset":I
    invoke-static {p0, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->getCLUT([BII)[I

    move-result-object v5

    .line 526
    .local v5, "colorIndexArray":[I
    const/4 v8, 0x1

    if-ne v8, p2, :cond_0

    .line 527
    add-int/lit8 v8, v3, -0x1

    const/4 v9, 0x0

    aput v9, v5, v8

    .line 530
    :cond_0
    const/4 v8, 0x0

    .line 531
    .local v8, "resultArray":[I
    rem-int/2addr v6, v2

    if-nez v6, :cond_1

    .line 532
    mul-int v6, v0, v1

    invoke-static {p0, v7, v6, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v6

    .end local v8    # "resultArray":[I
    .local v6, "resultArray":[I
    :goto_0
    goto :goto_1

    .line 535
    .end local v6    # "resultArray":[I
    .restart local v8    # "resultArray":[I
    :cond_1
    mul-int v6, v0, v1

    invoke-static {p0, v7, v6, v5, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v6

    goto :goto_0

    .line 539
    .end local v8    # "resultArray":[I
    .restart local v6    # "resultArray":[I
    :goto_1
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    return-object v8
.end method

.method public static signedIntToBytes(I[BI)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I

    .line 747
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result v0

    return v0
.end method

.method public static signedIntToBytes(I)[B
    .locals 3
    .param p0, "value"    # I

    .line 715
    if-ltz p0, :cond_0

    .line 718
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForSignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    .line 719
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->signedIntToBytes(I[BI)I

    .line 720
    return-object v0

    .line 716
    .end local v0    # "bytes":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static stringToAdnStringField(Ljava/lang/String;)[B
    .locals 4
    .param p0, "alphaTag"    # Ljava/lang/String;

    .line 865
    const/4 v0, 0x0

    move v1, v0

    .line 867
    .local v1, "isUcs2":Z
    nop

    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 868
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 872
    .end local v0    # "i":I
    :cond_0
    goto :goto_1

    .line 870
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Lcom/android/internal/telephony/EncodeException;
    const/4 v1, 0x1

    .line 873
    .end local v0    # "e":Lcom/android/internal/telephony/EncodeException;
    :goto_1
    invoke-static {p0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToAdnStringField(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method static stringToAdnStringField(Ljava/lang/String;Z)[B
    .locals 5
    .param p0, "alphaTag"    # Ljava/lang/String;
    .param p1, "isUcs2"    # Z

    .line 878
    if-nez p1, :cond_0

    .line 879
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 881
    :cond_0
    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 882
    .local v0, "alphaTagBytes":[B
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 883
    .local v1, "ret":[B
    const/16 v3, -0x80

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 884
    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 886
    return-object v1
.end method

.method public static stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 845
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "(?i)f*$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static unsignedIntToBytes(I[BI)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "dest"    # [B
    .param p2, "offset"    # I

    .line 734
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->intToBytes(I[BIZ)I

    move-result v0

    return v0
.end method

.method public static unsignedIntToBytes(I)[B
    .locals 3
    .param p0, "value"    # I

    .line 698
    if-ltz p0, :cond_0

    .line 701
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->byteNumForUnsignedInt(I)I

    move-result v0

    new-array v0, v0, [B

    .line 702
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->unsignedIntToBytes(I[BI)I

    .line 703
    return-object v0

    .line 699
    .end local v0    # "bytes":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value must be 0 or positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
