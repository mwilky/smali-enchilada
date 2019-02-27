.class public Landroid/secrecy/RC4;
.super Ljava/lang/Object;
.source "RC4.java"


# static fields
.field private static final DIGITS_LOWER:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToLong([B)J
    .locals 3

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    return-wide v1
.end method

.method public static decodeHex(Ljava/lang/String;)[B
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_3

    shr-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    shl-int/lit8 v7, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-eq v4, v6, :cond_0

    or-int v5, v7, v4

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    :cond_2
    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static decodeHexRC4(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    const/16 v1, 0x100

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    int-to-byte v3, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    invoke-static {p0}, Landroid/secrecy/RC4;->decodeHex(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public static encodeHex([B)Ljava/lang/String;
    .locals 6

    array-length v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    mul-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Landroid/secrecy/RC4;->DIGITS_LOWER:[C

    const/16 v4, 0xf0

    aget-byte v5, p0, v2

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/secrecy/RC4;->DIGITS_LOWER:[C

    const/16 v4, 0xf

    aget-byte v5, p0, v2

    and-int/2addr v4, v5

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs encodeLog([[B)Ljava/lang/String;
    .locals 12

    const-string/jumbo v0, "\u03b2\u03b5\u03b7i\u043f\u039e"

    const-string/jumbo v1, "\u039e\u044d\u043f\u0434"

    const/4 v2, 0x0

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, p0, v2

    array-length v7, v6

    add-int/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    mul-int/2addr v2, v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p0

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, p0, v6

    move v8, v4

    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_1

    sget-object v9, Landroid/secrecy/RC4;->DIGITS_LOWER:[C

    const/16 v10, 0xf0

    aget-byte v11, v7, v8

    and-int/2addr v10, v11

    ushr-int/lit8 v10, v10, 0x4

    aget-char v9, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v9, Landroid/secrecy/RC4;->DIGITS_LOWER:[C

    const/16 v10, 0xf

    aget-byte v11, v7, v8

    and-int/2addr v10, v11

    aget-char v9, v9, v10

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static encrypt([B[B)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    rem-int/lit16 v0, v4, 0x100

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x100

    aget-byte v4, p0, v0

    aget-byte v5, p0, v1

    aput-byte v5, p0, v0

    aput-byte v4, p0, v1

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    rem-int/lit16 v2, v5, 0x100

    aget-byte v5, p1, v3

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static varargs encryptLog([B[[B)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, p1

    const/4 v4, 0x0

    move v5, v2

    move v2, v1

    move v1, v0

    move v0, v4

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v6, p1, v0

    move v7, v5

    move v5, v2

    move v2, v1

    move v1, v4

    :goto_1
    array-length v8, v6

    if-ge v1, v8, :cond_0

    add-int/lit8 v8, v2, 0x1

    rem-int/lit16 v2, v8, 0x100

    aget-byte v8, p0, v2

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v8, v5

    rem-int/lit16 v5, v8, 0x100

    aget-byte v8, p0, v2

    aget-byte v9, p0, v5

    aput-byte v9, p0, v2

    aput-byte v8, p0, v5

    aget-byte v9, p0, v2

    and-int/lit16 v9, v9, 0xff

    aget-byte v10, p0, v5

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    rem-int/lit16 v7, v9, 0x100

    aget-byte v9, v6, v1

    aget-byte v10, p0, v7

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v2, v5

    move v5, v7

    goto :goto_0

    :cond_1
    return-void
.end method

.method static initSbox([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    int-to-byte v1, v0

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static longToBytes(J)[B
    .locals 2

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static mixSbox([B[B)V
    .locals 6

    invoke-static {p0}, Landroid/secrecy/RC4;->initSbox([B)V

    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v0

    rem-int v5, v2, v1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    rem-int/lit16 v0, v4, 0x100

    aget-byte v3, p0, v2

    aget-byte v4, p0, v0

    aput-byte v4, p0, v2

    aput-byte v3, p0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
