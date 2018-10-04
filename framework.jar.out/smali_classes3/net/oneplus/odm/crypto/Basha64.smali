.class public Lnet/oneplus/odm/crypto/Basha64;
.super Ljava/lang/Object;
.source "Basha64.java"


# static fields
.field private static final DICT_SYMBOL:[C

.field private static final DICT_TEXT:[C

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lnet/oneplus/odm/crypto/Basha64;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/crypto/Basha64;->TAG:Ljava/lang/String;

    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    const-string v0, "+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/crypto/Basha64;->DICT_SYMBOL:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLastNumber([C)I
    .locals 3

    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :cond_0
    aget-char v2, p0, v0

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    return v1
.end method

.method public static decrypt([C)Ljava/lang/String;
    .locals 14

    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    aget-char v1, p0, v1

    const/16 v2, 0x3d

    if-ne v2, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v0, -0x1

    aget-char v1, p0, v1

    if-ne v2, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-static {p0}, Lnet/oneplus/odm/crypto/Basha64;->checkLastNumber([C)I

    move-result v1

    move v2, v1

    move v3, v2

    move v2, v0

    :cond_1
    aget-char v4, p0, v3

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_1

    :goto_0
    aget-char v4, p0, v3

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    sub-int v5, v0, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v1

    :cond_4
    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_7

    add-int/lit8 v6, v3, -0x61

    const/4 v7, 0x0

    :cond_5
    sub-int v8, v2, v1

    sub-int v8, v6, v8

    mul-int/lit8 v9, v7, 0x1a

    add-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x1

    div-int/2addr v8, v9

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    rem-double v10, v8, v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v12, v10

    if-nez v10, :cond_6

    cmpg-double v10, v12, v8

    if-gtz v10, :cond_6

    sget-object v10, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    double-to-int v11, v8

    aget-char v10, v10, v11

    aput-char v10, p0, v2

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v7, 0x1

    if-gtz v7, :cond_5

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v5, :cond_4

    new-instance v6, Ljava/lang/String;

    sub-int v7, v0, v1

    sub-int/2addr v7, v4

    invoke-direct {v6, p0, v1, v7}, Ljava/lang/String;-><init>([CII)V

    return-object v6
.end method

.method public static encrypt([C)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    new-array v1, v0, [C

    array-length v2, p0

    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    :cond_0
    aget-char v6, p0, v4

    const v7, 0x7fffffff

    if-gez v5, :cond_3

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v6, -0x61

    rsub-int/lit8 v9, v8, 0x1a

    rem-int v9, v4, v9

    add-int/2addr v8, v9

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    rem-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_2

    sget-object v9, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    add-int/lit8 v10, v8, 0x1a

    aget-char v9, v9, v10

    goto :goto_0

    :cond_2
    sget-object v9, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    aget-char v9, v9, v8

    :goto_0
    aput-char v9, p0, v4

    goto :goto_2

    :cond_3
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_5

    add-int/lit8 v8, v6, -0x61

    rsub-int/lit8 v9, v8, 0x1a

    rem-int v9, v4, v9

    add-int/2addr v8, v9

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    rem-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_4

    sget-object v9, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    add-int/lit8 v10, v8, 0x1a

    aget-char v9, v9, v10

    goto :goto_1

    :cond_4
    sget-object v9, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    aget-char v9, v9, v8

    :goto_1
    aput-char v9, p0, v4

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v2, :cond_0

    if-lez v5, :cond_6

    invoke-static {v5}, Lnet/oneplus/odm/crypto/Basha64;->generateObscure(I)[C

    move-result-object v1

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    array-length v9, v1

    if-eqz v9, :cond_7

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-static {v9}, Lnet/oneplus/odm/crypto/Basha64;->checkLastNumber([C)I

    move-result v5

    invoke-static {v5}, Lnet/oneplus/odm/crypto/Basha64;->generateObscure(I)[C

    move-result-object v1

    array-length v9, v1

    if-eqz v9, :cond_8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    :goto_3
    add-int/lit8 v4, v0, -0x1

    if-lez v0, :cond_9

    const/16 v0, 0x3d

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v4

    goto :goto_3

    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateObscure(I)[C
    .locals 7

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/4 v1, 0x0

    if-lez p0, :cond_4

    const/4 v2, 0x0

    new-array v3, p0, [C

    :cond_0
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-nez v2, :cond_1

    sget-object v5, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    rem-int/lit8 v6, v4, 0x1a

    add-int/lit8 v6, v6, 0x1a

    aget-char v5, v5, v6

    aput-char v5, v3, v2

    goto :goto_0

    :cond_1
    rem-int/lit8 v5, v4, 0x3d

    if-nez v5, :cond_2

    sget-object v5, Lnet/oneplus/odm/crypto/Basha64;->DICT_SYMBOL:[C

    aget-char v5, v5, v1

    aput-char v5, v3, v2

    goto :goto_0

    :cond_2
    rem-int/lit8 v5, v4, 0x2f

    if-nez v5, :cond_3

    sget-object v5, Lnet/oneplus/odm/crypto/Basha64;->DICT_SYMBOL:[C

    const/4 v6, 0x1

    aget-char v5, v5, v6

    aput-char v5, v3, v2

    goto :goto_0

    :cond_3
    sget-object v5, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    rem-int/lit8 v6, v4, 0x3e

    aget-char v5, v5, v6

    aput-char v5, v3, v2

    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p0, :cond_0

    return-object v3

    :cond_4
    new-array v1, v1, [C

    return-object v1
.end method
