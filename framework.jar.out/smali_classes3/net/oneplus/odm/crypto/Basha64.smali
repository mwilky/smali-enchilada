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

    .line 12
    const-class v0, Lnet/oneplus/odm/crypto/Basha64;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/crypto/Basha64;->TAG:Ljava/lang/String;

    .line 13
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    .line 14
    const-string v0, "+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lnet/oneplus/odm/crypto/Basha64;->DICT_SYMBOL:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkLastNumber([C)I
    .locals 3
    .param p0, "shaText"    # [C

    .line 59
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 62
    .local v0, "index":I
    :cond_0
    aget-char v2, p0, v0

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    return v1

    .line 65
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    .line 68
    return v1
.end method

.method public static decrypt([C)Ljava/lang/String;
    .locals 14
    .param p0, "bashaText"    # [C

    .line 79
    array-length v0, p0

    .line 83
    .local v0, "length":I
    add-int/lit8 v1, v0, -0x1

    aget-char v1, p0, v1

    const/16 v2, 0x3d

    if-ne v2, v1, :cond_0

    .line 84
    add-int/lit8 v0, v0, -0x1

    .line 86
    add-int/lit8 v1, v0, -0x1

    aget-char v1, p0, v1

    if-ne v2, v1, :cond_0

    .line 87
    add-int/lit8 v0, v0, -0x1

    .line 92
    :cond_0
    invoke-static {p0}, Lnet/oneplus/odm/crypto/Basha64;->checkLastNumber([C)I

    move-result v1

    .line 93
    .local v1, "prefixLength":I
    move v2, v1

    .line 94
    .local v2, "begin":I
    move v3, v2

    move v2, v0

    .line 98
    .local v2, "end":I
    .local v3, "begin":I
    :cond_1
    aget-char v4, p0, v3

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    goto :goto_0

    .line 101
    :cond_2
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_1

    .line 103
    :goto_0
    aget-char v4, p0, v3

    invoke-static {v4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    .line 104
    .local v4, "suffixLength":I
    sub-int v5, v0, v4

    .line 107
    .end local v2    # "end":I
    .local v5, "end":I
    move v2, v1

    .end local v3    # "begin":I
    .local v2, "begin":I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 108
    aget-char v3, p0, v2

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    aput-char v3, p0, v2

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    :cond_3
    move v2, v1

    .line 117
    :cond_4
    aget-char v3, p0, v2

    .line 120
    .local v3, "chr":C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_7

    .line 121
    add-int/lit8 v6, v3, -0x61

    .line 122
    .local v6, "charNum":I
    const/4 v7, 0x0

    .line 126
    .local v7, "quotient":I
    :cond_5
    sub-int v8, v2, v1

    sub-int v8, v6, v8

    mul-int/lit8 v9, v7, 0x1a

    add-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x1

    div-int/2addr v8, v9

    int-to-double v8, v8

    .line 129
    .local v8, "testNum":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    rem-double v10, v8, v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v12, v10

    if-nez v10, :cond_6

    cmpg-double v10, v12, v8

    if-gtz v10, :cond_6

    .line 130
    sget-object v10, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    double-to-int v11, v8

    aget-char v10, v10, v11

    aput-char v10, p0, v2

    .line 131
    goto :goto_2

    .line 133
    :cond_6
    add-int/lit8 v7, v7, 0x1

    if-gtz v7, :cond_5

    .line 135
    .end local v6    # "charNum":I
    .end local v7    # "quotient":I
    .end local v8    # "testNum":D
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v5, :cond_4

    .line 137
    new-instance v6, Ljava/lang/String;

    sub-int v7, v0, v1

    sub-int/2addr v7, v4

    invoke-direct {v6, p0, v1, v7}, Ljava/lang/String;-><init>([CII)V

    return-object v6
.end method

.method public static encrypt([C)Ljava/lang/String;
    .locals 11
    .param p0, "shaText"    # [C

    .line 147
    const/4 v0, 0x0

    new-array v1, v0, [C

    .line 149
    .local v1, "pText":[C
    array-length v2, p0

    .line 150
    .local v2, "length":I
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 152
    .local v3, "rand":Ljava/util/Random;
    const/4 v4, 0x0

    .line 153
    .local v4, "index":I
    const/4 v5, -0x1

    .line 157
    .local v5, "obscureLength":I
    :cond_0
    aget-char v6, p0, v4

    .line 159
    .local v6, "chr":C
    const v7, 0x7fffffff

    if-gez v5, :cond_3

    .line 160
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 161
    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    goto :goto_2

    .line 164
    :cond_1
    add-int/lit8 v8, v6, -0x61

    .line 165
    .local v8, "charNum":I
    rsub-int/lit8 v9, v8, 0x1a

    rem-int v9, v4, v9

    add-int/2addr v8, v9

    .line 168
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

    .line 171
    .end local v8    # "charNum":I
    :cond_3
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_5

    .line 173
    add-int/lit8 v8, v6, -0x61

    .line 174
    .restart local v8    # "charNum":I
    rsub-int/lit8 v9, v8, 0x1a

    rem-int v9, v4, v9

    add-int/2addr v8, v9

    .line 177
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

    .line 180
    .end local v8    # "charNum":I
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v2, :cond_0

    .line 183
    if-lez v5, :cond_6

    .line 184
    invoke-static {v5}, Lnet/oneplus/odm/crypto/Basha64;->generateObscure(I)[C

    move-result-object v1

    .line 188
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 191
    array-length v9, v1

    if-eqz v9, :cond_7

    .line 192
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 196
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-static {v9}, Lnet/oneplus/odm/crypto/Basha64;->checkLastNumber([C)I

    move-result v5

    .line 197
    invoke-static {v5}, Lnet/oneplus/odm/crypto/Basha64;->generateObscure(I)[C

    move-result-object v1

    .line 199
    array-length v9, v1

    if-eqz v9, :cond_8

    .line 200
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->insert(I[C)Ljava/lang/StringBuilder;

    .line 204
    :cond_8
    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    .line 205
    .end local v4    # "index":I
    .local v0, "index":I
    :goto_3
    add-int/lit8 v4, v0, -0x1

    .restart local v4    # "index":I
    if-lez v0, :cond_9

    .line 206
    .end local v0    # "index":I
    const/16 v0, 0x3d

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    move v0, v4

    goto :goto_3

    .line 209
    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateObscure(I)[C
    .locals 7
    .param p0, "length"    # I

    .line 23
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 25
    .local v0, "ran":Ljava/util/Random;
    const/4 v1, 0x0

    if-lez p0, :cond_4

    .line 26
    const/4 v2, 0x0

    .line 28
    .local v2, "index":I
    new-array v3, p0, [C

    .line 31
    .local v3, "obs":[C
    :cond_0
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 32
    .local v4, "seed":I
    if-nez v2, :cond_1

    .line 34
    sget-object v5, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    rem-int/lit8 v6, v4, 0x1a

    add-int/lit8 v6, v6, 0x1a

    aget-char v5, v5, v6

    aput-char v5, v3, v2

    goto :goto_0

    .line 35
    :cond_1
    rem-int/lit8 v5, v4, 0x3d

    if-nez v5, :cond_2

    .line 37
    sget-object v5, Lnet/oneplus/odm/crypto/Basha64;->DICT_SYMBOL:[C

    aget-char v5, v5, v1

    aput-char v5, v3, v2

    goto :goto_0

    .line 38
    :cond_2
    rem-int/lit8 v5, v4, 0x2f

    if-nez v5, :cond_3

    .line 40
    sget-object v5, Lnet/oneplus/odm/crypto/Basha64;->DICT_SYMBOL:[C

    const/4 v6, 0x1

    aget-char v5, v5, v6

    aput-char v5, v3, v2

    goto :goto_0

    .line 42
    :cond_3
    sget-object v5, Lnet/oneplus/odm/crypto/Basha64;->DICT_TEXT:[C

    rem-int/lit8 v6, v4, 0x3e

    aget-char v5, v5, v6

    aput-char v5, v3, v2

    .line 44
    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p0, :cond_0

    .line 46
    return-object v3

    .line 48
    .end local v2    # "index":I
    .end local v3    # "obs":[C
    .end local v4    # "seed":I
    :cond_4
    new-array v1, v1, [C

    return-object v1
.end method
