.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Ints$IntArrayAsList;,
        Lcom/google/common/primitives/Ints$LexicographicalComparator;,
        Lcom/google/common/primitives/Ints$IntConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x4

.field public static final MAX_POWER_OF_TWO:I = 0x40000000

.field private static final asciiDigits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 639
    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    .line 642
    sget-object v0, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 643
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_0

    .line 644
    sget-object v2, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    const/16 v3, 0x30

    add-int/2addr v3, v1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    .end local v1    # "i":I
    :cond_0
    nop

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    .line 647
    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    const/16 v2, 0x41

    add-int/2addr v2, v0

    const/16 v3, 0xa

    add-int v4, v3, v0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 648
    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    const/16 v2, 0x61

    add-int/2addr v2, v0

    add-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 650
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([IIII)I
    .locals 1
    .param p0, "x0"    # [I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([IIII)I
    .locals 1
    .param p0, "x0"    # [I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([I)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 510
    array-length v0, p0

    if-nez v0, :cond_0

    .line 511
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 513
    :cond_0
    new-instance v0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([I)V

    return-object v0
.end method

.method public static checkedCast(J)I
    .locals 4
    .param p0, "value"    # J

    .line 88
    long-to-int v0, p0

    .line 89
    .local v0, "result":I
    int-to-long v1, v0

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    .line 93
    return v0

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 127
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs concat([[I)[I
    .locals 8
    .param p0, "arrays"    # [[I

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "length":I
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "length":I
    .local v3, "length":I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, p0, v0

    .line 276
    .local v4, "array":[I
    array-length v5, v4

    add-int/2addr v3, v5

    .line 275
    .end local v4    # "array":[I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    new-array v0, v3, [I

    .line 279
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 280
    .local v1, "pos":I
    array-length v4, p0

    move v5, v1

    move v1, v2

    .end local v1    # "pos":I
    .local v5, "pos":I
    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v6, p0, v1

    .line 281
    .local v6, "array":[I
    array-length v7, v6

    invoke-static {v6, v2, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    array-length v7, v6

    add-int/2addr v5, v7

    .line 280
    .end local v6    # "array":[I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 284
    :cond_1
    return-object v0
.end method

.method public static contains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .line 140
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    .line 141
    .local v3, "value":I
    if-ne v3, p1, :cond_0

    .line 142
    const/4 v0, 0x1

    return v0

    .line 140
    .end local v3    # "value":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    :cond_1
    return v1
.end method

.method private static copyOf([II)[I
    .locals 3
    .param p0, "original"    # [I
    .param p1, "length"    # I

    .line 401
    new-array v0, p1, [I

    .line 402
    .local v0, "copy":[I
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    return-object v0
.end method

.method private static digit(C)I
    .locals 1
    .param p0, "c"    # C

    .line 653
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    aget-byte v0, v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static ensureCapacity([III)[I
    .locals 6
    .param p0, "array"    # [I
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .line 392
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 393
    if-ltz p2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 394
    array-length v0, p0

    if-ge v0, p1, :cond_2

    .line 395
    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Ints;->copyOf([II)[I

    move-result-object v0

    goto :goto_2

    .line 396
    :cond_2
    nop

    .line 394
    move-object v0, p0

    :goto_2
    return-object v0
.end method

.method public static fromByteArray([B)I
    .locals 8
    .param p0, "bytes"    # [B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 321
    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v4, "array too small: %s < %s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    array-length v7, p0

    .line 322
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v3

    .line 321
    invoke-static {v0, v4, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 323
    aget-byte v0, p0, v2

    aget-byte v1, p0, v3

    aget-byte v2, p0, v5

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v0

    return v0
.end method

.method public static fromBytes(BBBB)I
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .param p2, "b3"    # B
    .param p3, "b4"    # B
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 335
    shl-int/lit8 v0, p0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static hashCode(I)I
    .locals 0
    .param p0, "value"    # I

    .line 76
    return p0
.end method

.method public static indexOf([II)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .line 158
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method private static indexOf([IIII)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "target"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 164
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 165
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 166
    return v0

    .line 164
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf([I[I)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "target"    # [I

    .line 184
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 187
    return v1

    .line 191
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 192
    move v2, v1

    .local v2, "j":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 193
    add-int v3, v0, v2

    aget v3, p0, v3

    aget v4, p1, v2

    if-eq v3, v4, :cond_1

    .line 194
    nop

    .line 191
    .end local v2    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .restart local v2    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 197
    .end local v2    # "j":I
    :cond_2
    return v0

    .line 199
    .end local v0    # "i":I
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 3
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [I

    .line 416
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    array-length v0, p1

    if-nez v0, :cond_0

    .line 418
    const-string v0, ""

    return-object v0

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 423
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 425
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static lastIndexOf([II)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "target"    # I

    .line 212
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([IIII)I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "target"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 218
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 219
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 220
    return v0

    .line 218
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 223
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[I>;"
        }
    .end annotation

    .line 446
    sget-object v0, Lcom/google/common/primitives/Ints$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Ints$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([I)I
    .locals 3
    .param p0, "array"    # [I

    .line 254
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 255
    aget v0, p0, v1

    .line 256
    .local v0, "max":I
    nop

    .local v2, "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 257
    aget v2, p0, v1

    if-le v2, v0, :cond_1

    .line 258
    aget v0, p0, v1

    .line 256
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 261
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public static varargs min([I)I
    .locals 3
    .param p0, "array"    # [I

    .line 235
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 236
    aget v0, p0, v1

    .line 237
    .local v0, "min":I
    nop

    .local v2, "i":I
    :goto_1
    move v1, v2

    .end local v2    # "i":I
    .local v1, "i":I
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 238
    aget v2, p0, v1

    if-ge v2, v0, :cond_1

    .line 239
    aget v0, p0, v1

    .line 237
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 242
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public static saturatedCast(J)I
    .locals 2
    .param p0, "value"    # J

    .line 105
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 106
    const v0, 0x7fffffff

    return v0

    .line 108
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 109
    const/high16 v0, -0x80000000

    return v0

    .line 111
    :cond_1
    long-to-int v0, p0

    return v0
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 371
    sget-object v0, Lcom/google/common/primitives/Ints$IntConverter;->INSTANCE:Lcom/google/common/primitives/Ints$IntConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Number;",
            ">;)[I"
        }
    .end annotation

    .line 481
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v0, :cond_0

    .line 482
    move-object v0, p0

    check-cast v0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-virtual {v0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->toIntArray()[I

    move-result-object v0

    return-object v0

    .line 485
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 486
    .local v0, "boxedArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 487
    .local v1, "len":I
    new-array v2, v1, [I

    .line 488
    .local v2, "array":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 490
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aput v4, v2, v3

    .line 488
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 492
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method public static toByteArray(I)[B
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .line 300
    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    int-to-byte v1, p0

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 679
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/Ints;->tryParse(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static tryParse(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 706
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 707
    return-object v1

    .line 709
    :cond_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_c

    const/16 v0, 0x24

    if-gt p1, v0, :cond_c

    .line 713
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v0

    .line 714
    .local v2, "negative":Z
    :goto_0
    if-eqz v2, :cond_2

    move v0, v4

    nop

    .line 715
    .local v0, "index":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 716
    return-object v1

    .line 718
    :cond_3
    add-int/lit8 v3, v0, 0x1

    .local v3, "index":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .end local v0    # "index":I
    invoke-static {v0}, Lcom/google/common/primitives/Ints;->digit(C)I

    move-result v0

    .line 719
    .local v0, "digit":I
    if-ltz v0, :cond_b

    if-lt v0, p1, :cond_4

    goto :goto_3

    .line 722
    :cond_4
    neg-int v4, v0

    .line 724
    .local v4, "accum":I
    const/high16 v5, -0x80000000

    div-int v6, v5, p1

    .line 726
    .local v6, "cap":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 727
    add-int/lit8 v7, v3, 0x1

    .local v7, "index":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .end local v3    # "index":I
    invoke-static {v3}, Lcom/google/common/primitives/Ints;->digit(C)I

    move-result v0

    .line 728
    if-ltz v0, :cond_7

    if-ge v0, p1, :cond_7

    if-ge v4, v6, :cond_5

    goto :goto_2

    .line 731
    :cond_5
    mul-int/2addr v4, p1

    .line 732
    add-int v3, v5, v0

    if-ge v4, v3, :cond_6

    .line 733
    return-object v1

    .line 735
    :cond_6
    sub-int/2addr v4, v0

    .line 724
    move v3, v7

    goto :goto_1

    .line 729
    :cond_7
    :goto_2
    return-object v1

    .line 738
    .end local v7    # "index":I
    .restart local v3    # "index":I
    :cond_8
    if-eqz v2, :cond_9

    .line 739
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 740
    :cond_9
    if-ne v4, v5, :cond_a

    .line 741
    return-object v1

    .line 743
    :cond_a
    neg-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 720
    .end local v4    # "accum":I
    .end local v6    # "cap":I
    :cond_b
    :goto_3
    return-object v1

    .line 710
    .end local v0    # "digit":I
    .end local v2    # "negative":Z
    .end local v3    # "index":I
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radix must be between MIN_RADIX and MAX_RADIX but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
