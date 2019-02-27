.class public Landroid/secrecy/RC4;
.super Ljava/lang/Object;
.source "RC4.java"


# static fields
.field private static final DIGITS_LOWER:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/secrecy/RC4;->DIGITS_LOWER:[C

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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToLong([B)J
    .locals 3
    .param p0, "bytes"    # [B

    .line 183
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 184
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 185
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 186
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    return-wide v1
.end method

.method public static decodeHex(Ljava/lang/String;)[B
    .locals 9
    .param p0, "data"    # Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 112
    .local v0, "len":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_3

    .line 116
    shr-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 119
    .local v1, "key":[B
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 121
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 122
    .local v4, "digit":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 125
    shl-int/lit8 v7, v4, 0x4

    .line 126
    .local v7, "f":I
    add-int/lit8 v3, v3, 0x1

    .line 128
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 129
    if-eq v4, v6, :cond_0

    .line 133
    or-int v5, v7, v4

    .line 134
    .end local v7    # "f":I
    .local v5, "f":I
    add-int/lit8 v3, v3, 0x1

    .line 135
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 119
    .end local v4    # "digit":I
    .end local v5    # "f":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .restart local v4    # "digit":I
    .restart local v7    # "f":I
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 123
    .end local v7    # "f":I
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 138
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "digit":I
    :cond_2
    return-object v1

    .line 113
    .end local v1    # "key":[B
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static decodeHexRC4(Ljava/lang/String;)[B
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 97
    .local v0, "len":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 99
    const/16 v1, 0x100

    new-array v1, v1, [B

    .line 100
    .local v1, "key":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 101
    int-to-byte v3, v2

    aput-byte v3, v1, v2

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 107
    .end local v1    # "key":[B
    :cond_1
    invoke-static {p0}, Landroid/secrecy/RC4;->decodeHex(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public static encodeHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .line 142
    array-length v0, p0

    .line 143
    .local v0, "len":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    mul-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 145
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 146
    sget-object v3, Landroid/secrecy/RC4;->DIGITS_LOWER:[C

    const/16 v4, 0xf0

    aget-byte v5, p0, v2

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    sget-object v3, Landroid/secrecy/RC4;->DIGITS_LOWER:[C

    const/16 v4, 0xf

    aget-byte v5, p0, v2

    and-int/2addr v4, v5

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs encodeLog([[B)Ljava/lang/String;
    .locals 12
    .param p0, "logs"    # [[B

    .line 153
    const-string/jumbo v0, "\u03b2\u03b5\u03b7i\u043f\u039e"

    .line 154
    .local v0, "begin":Ljava/lang/String;
    const-string/jumbo v1, "\u039e\u044d\u043f\u0434"

    .line 156
    .local v1, "end":Ljava/lang/String;
    const/4 v2, 0x0

    .line 157
    .local v2, "len":I
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    .line 157
    .end local v2    # "len":I
    .local v5, "len":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, p0, v2

    .line 158
    .local v6, "log":[B
    array-length v7, v6

    add-int/2addr v5, v7

    .line 157
    .end local v6    # "log":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    const/4 v2, 0x2

    mul-int/2addr v2, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 162
    .end local v5    # "len":I
    .restart local v2    # "len":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 163
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    array-length v5, p0

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, p0, v6

    .line 166
    .local v7, "log":[B
    move v8, v4

    .line 166
    .local v8, "i":I
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_1

    .line 167
    sget-object v9, Landroid/secrecy/RC4;->DIGITS_LOWER:[C

    const/16 v10, 0xf0

    aget-byte v11, v7, v8

    and-int/2addr v10, v11

    ushr-int/lit8 v10, v10, 0x4

    aget-char v9, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    sget-object v9, Landroid/secrecy/RC4;->DIGITS_LOWER:[C

    const/16 v10, 0xf

    aget-byte v11, v7, v8

    and-int/2addr v10, v11

    aget-char v9, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 165
    .end local v7    # "log":[B
    .end local v8    # "i":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 172
    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static encrypt([B[B)V
    .locals 7
    .param p0, "sbox"    # [B
    .param p1, "data"    # [B

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    const/4 v2, 0x0

    .line 36
    .local v2, "t":I
    const/4 v3, 0x0

    .line 38
    .local v3, "d":I
    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 39
    add-int/lit8 v4, v0, 0x1

    rem-int/lit16 v0, v4, 0x100

    .line 40
    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x100

    .line 42
    aget-byte v4, p0, v0

    .line 43
    .local v4, "tmp":B
    aget-byte v5, p0, v1

    aput-byte v5, p0, v0

    .line 44
    aput-byte v4, p0, v1

    .line 46
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    rem-int/lit16 v2, v5, 0x100

    .line 47
    aget-byte v5, p1, v3

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    .line 38
    .end local v4    # "tmp":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method static varargs encryptLog([B[[B)V
    .locals 11
    .param p0, "sbox"    # [B
    .param p1, "logs"    # [[B

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    const/4 v2, 0x0

    .line 54
    .local v2, "t":I
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v2

    move v2, v1

    move v1, v0

    move v0, v4

    .end local v0    # "i":I
    .local v1, "i":I
    .local v2, "j":I
    .local v5, "t":I
    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v6, p1, v0

    .line 55
    .local v6, "data":[B
    move v7, v5

    move v5, v2

    move v2, v1

    move v1, v4

    .local v1, "d":I
    .local v2, "i":I
    .local v5, "j":I
    .local v7, "t":I
    :goto_1
    array-length v8, v6

    if-ge v1, v8, :cond_0

    .line 56
    add-int/lit8 v8, v2, 0x1

    rem-int/lit16 v2, v8, 0x100

    .line 57
    aget-byte v8, p0, v2

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v8, v5

    rem-int/lit16 v5, v8, 0x100

    .line 59
    aget-byte v8, p0, v2

    .line 60
    .local v8, "tmp":B
    aget-byte v9, p0, v5

    aput-byte v9, p0, v2

    .line 61
    aput-byte v8, p0, v5

    .line 63
    aget-byte v9, p0, v2

    and-int/lit16 v9, v9, 0xff

    aget-byte v10, p0, v5

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    rem-int/lit16 v7, v9, 0x100

    .line 64
    aget-byte v9, v6, v1

    aget-byte v10, p0, v7

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v6, v1

    .line 55
    .end local v8    # "tmp":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 54
    .end local v1    # "d":I
    .end local v6    # "data":[B
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v2, v5

    move v5, v7

    goto :goto_0

    .line 67
    .end local v7    # "t":I
    .local v1, "i":I
    .local v2, "j":I
    .local v5, "t":I
    :cond_1
    return-void
.end method

.method static initSbox([B)V
    .locals 2
    .param p0, "sbox"    # [B

    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 71
    int-to-byte v1, v0

    aput-byte v1, p0, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static longToBytes(J)[B
    .locals 2
    .param p0, "x"    # J

    .line 177
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 178
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 179
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static mixSbox([B[B)V
    .locals 6
    .param p0, "sbox"    # [B
    .param p1, "key"    # [B

    .line 82
    invoke-static {p0}, Landroid/secrecy/RC4;->initSbox([B)V

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "j":I
    array-length v1, p1

    .line 86
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    .line 87
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v0

    rem-int v5, v2, v1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    rem-int/lit16 v0, v4, 0x100

    .line 88
    aget-byte v3, p0, v2

    .line 89
    .local v3, "tmp":B
    aget-byte v4, p0, v0

    aput-byte v4, p0, v2

    .line 90
    aput-byte v3, p0, v0

    .line 86
    .end local v3    # "tmp":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
