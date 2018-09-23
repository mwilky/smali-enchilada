.class public final Lcom/google/common/base/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodedLength(Ljava/lang/CharSequence;)I
    .locals 9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    rsub-int/lit8 v4, v3, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, v2}, Lcom/google/common/base/Utf8;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/2addr v1, v4

    nop

    :cond_2
    if-lt v1, v0, :cond_3

    return v1

    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UTF-8 length does not fit in int: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v5, v1

    const-wide v7, 0x100000000L

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .locals 8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_0

    rsub-int/lit8 v4, v3, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x2

    const v4, 0xd800

    if-gt v4, v3, :cond_2

    const v4, 0xdfff

    if-gt v3, v4, :cond_2

    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    const/high16 v5, 0x10000

    if-lt v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unpaired surrogate at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static isWellFormed([B)Z
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/common/base/Utf8;->isWellFormed([BII)Z

    move-result v0

    return v0
.end method

.method public static isWellFormed([BII)Z
    .locals 3

    add-int v0, p1, p2

    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p0, v1

    if-gez v2, :cond_0

    invoke-static {p0, v1, v0}, Lcom/google/common/base/Utf8;->isWellFormedSlowPath([BII)Z

    move-result v2

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private static isWellFormedSlowPath([BII)Z
    .locals 7

    move v0, p1

    :goto_0
    if-lt v0, p2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    move v2, v0

    if-gez v0, :cond_e

    const/16 v0, -0x20

    const/16 v3, -0x41

    const/4 v4, 0x0

    if-ge v2, v0, :cond_3

    if-ne v1, p2, :cond_1

    return v4

    :cond_1
    const/16 v0, -0x3e

    if-lt v2, v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    if-le v1, v3, :cond_b

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v4

    :cond_3
    const/16 v5, -0x10

    if-ge v2, v5, :cond_9

    add-int/lit8 v5, v1, 0x1

    if-lt v5, p2, :cond_4

    return v4

    :cond_4
    add-int/lit8 v5, v1, 0x1

    aget-byte v1, p0, v1

    if-gt v1, v3, :cond_8

    const/16 v6, -0x60

    if-ne v2, v0, :cond_5

    if-lt v1, v6, :cond_8

    :cond_5
    const/16 v0, -0x13

    if-ne v2, v0, :cond_6

    if-le v6, v1, :cond_8

    :cond_6
    add-int/lit8 v0, v5, 0x1

    aget-byte v5, p0, v5

    if-le v5, v3, :cond_7

    goto :goto_2

    :cond_7
    goto :goto_3

    :cond_8
    move v0, v5

    :goto_2
    return v4

    :cond_9
    add-int/lit8 v0, v1, 0x2

    if-lt v0, p2, :cond_a

    return v4

    :cond_a
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    if-gt v1, v3, :cond_d

    shl-int/lit8 v5, v2, 0x1c

    add-int/lit8 v6, v1, 0x70

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1e

    if-nez v5, :cond_d

    add-int/lit8 v5, v0, 0x1

    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_c

    add-int/lit8 v0, v5, 0x1

    aget-byte v5, p0, v5

    if-le v5, v3, :cond_b

    goto :goto_4

    :cond_b
    :goto_3
    goto :goto_0

    :cond_c
    move v0, v5

    :cond_d
    :goto_4
    return v4

    :cond_e
    move v0, v1

    goto :goto_0
.end method
